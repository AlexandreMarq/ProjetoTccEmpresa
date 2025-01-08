-- Table structure for table "Alimentacao"
CREATE TABLE Alimentacao (
  id_alimentacao INT IDENTITY(1,1) PRIMARY KEY,
  alimentacao VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "Aplicacao"
CREATE TABLE Aplicacao (
  id_aplicacao INT IDENTITY(1,1) PRIMARY KEY,
  aplicacao VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "AplicacaoNavegacao"
CREATE TABLE AplicacaoNavegacao (
  id_aplicacao_navegacao INT IDENTITY(1,1) PRIMARY KEY,
  aplicacao_navegacao VARCHAR(100) NOT NULL UNIQUE
);

-- Table structure for table "Categoria"
CREATE TABLE Categoria (
  id_categoria INT IDENTITY(1,1) PRIMARY KEY,
  categoria VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "CategoriaVenda"
CREATE TABLE CategoriaVenda (
  id_categoria INT IDENTITY(1,1) PRIMARY KEY,
  categoria_venda VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "Certificado"
CREATE TABLE Certificado (
  id_certificado INT IDENTITY(1,1) PRIMARY KEY,
  certificado VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "Concorrente"
CREATE TABLE Concorrente (
  id_concorrente INT IDENTITY(1,1) PRIMARY KEY,
  codigo_concorrente VARCHAR(100) DEFAULT NULL,
  descricao_concorrente VARCHAR(2000) DEFAULT NULL,
  empresa_concorrente VARCHAR(100) DEFAULT NULL,
  observacao_concorrente VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "Foto"
CREATE TABLE Foto (
  id_foto INT IDENTITY(1,1) PRIMARY KEY,
  foto VARCHAR(100) DEFAULT NULL,
  nome_foto VARCHAR(20) NULL
);

-- Table structure for table "Funcao"
CREATE TABLE Funcao (
  id_funcao INT IDENTITY(1,1) PRIMARY KEY,
  funcao VARCHAR(100) NOT NULL UNIQUE
);

-- Table structure for table "Manual"
CREATE TABLE Manual (
  id_manual INT IDENTITY(1,1) PRIMARY KEY,
  link_manual VARCHAR(2000) DEFAULT NULL,
  manual_idioma VARCHAR(100) DEFAULT NULL,
  manual_tipo VARCHAR(100) DEFAULT NULL,
  nome_manual VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "ModeloAntigo"
CREATE TABLE ModeloAntigo (
  id_modelo_antigo INT IDENTITY(1,1) PRIMARY KEY,
  descricao_modelo_antigo VARCHAR(2000) DEFAULT NULL,
  modelo_antigo VARCHAR(100) DEFAULT NULL,
  observacao_modelo_antigo VARCHAR(1000) DEFAULT NULL,
  id_foto INT DEFAULT NULL,
  FOREIGN KEY (id_foto) REFERENCES Foto (id_foto)
);

-- Table structure for table "Montagem"
CREATE TABLE Montagem (
  id_montagem INT IDENTITY(1,1) PRIMARY KEY,
  montagem VARCHAR(100) DEFAULT NULL
);

-- Table structure for table "Produto"
CREATE TABLE Produto (
  id_produto INT IDENTITY(1,1) PRIMARY KEY,
  descricao_completa VARCHAR(2000) DEFAULT NULL,
  descricao_reduzida VARCHAR(300) DEFAULT NULL,
  link_codigo_pedido INT DEFAULT NULL,
  link_dimensoes VARCHAR(2000) DEFAULT NULL,
  link_esquema_ligacao VARCHAR(2000) DEFAULT NULL,
  link_exemplo_ligacao VARCHAR(2000) DEFAULT NULL,
  link_site VARCHAR(2000) DEFAULT NULL,
  link_tabela_alarmes VARCHAR(2000) DEFAULT NULL,
  link_tabela_parametros VARCHAR(2000) DEFAULT NULL,
  modelo VARCHAR(100) DEFAULT NULL,
  status VARCHAR(100) DEFAULT NULL,
  id_alimentacao INT NOT NULL,
  id_aplicacao INT NOT NULL,
  id_aplicacao_navegacao INT NOT NULL,
  id_categoria INT NOT NULL,
  id_categoria_venda INT NOT NULL,
  id_certificado INT NOT NULL,
  id_concorrente INT NOT NULL,
  id_foto INT NOT NULL,
  id_funcao INT NOT NULL,
  id_manual INT NOT NULL,
  id_modelo_antigo INT NOT NULL,
  id_montagem INT NOT NULL,
  FOREIGN KEY (id_alimentacao) REFERENCES Alimentacao (id_alimentacao),
  FOREIGN KEY (id_aplicacao) REFERENCES Aplicacao (id_aplicacao),
  FOREIGN KEY (id_aplicacao_navegacao) REFERENCES AplicacaoNavegacao (id_aplicacao_navegacao),
  FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria),
  FOREIGN KEY (id_categoria_venda) REFERENCES CategoriaVenda (id_categoria),
  FOREIGN KEY (id_certificado) REFERENCES Certificado (id_certificado),
  FOREIGN KEY (id_concorrente) REFERENCES Concorrente (id_concorrente),
  FOREIGN KEY (id_foto) REFERENCES Foto (id_foto),
  FOREIGN KEY (id_funcao) REFERENCES Funcao (id_funcao),
  FOREIGN KEY (id_manual) REFERENCES Manual (id_manual),
  FOREIGN KEY (id_modelo_antigo) REFERENCES ModeloAntigo (id_modelo_antigo),
  FOREIGN KEY (id_montagem) REFERENCES Montagem (id_montagem) 
);

-- Table structure for table "Usuario"
CREATE TABLE Usuario (
  id_usuario INT IDENTITY(1,1) PRIMARY KEY,
  login VARCHAR(20) DEFAULT NULL,
  senha VARCHAR(6) DEFAULT NULL
);
