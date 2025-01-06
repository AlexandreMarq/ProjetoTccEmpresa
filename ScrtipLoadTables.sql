USE TccEmpresa;

-- Tabela alimentacao
INSERT INTO alimentacao (alimentacao)
VALUES 
    ('100 a 240Vca'),
    ('24 Vca/Vcc'),
    ('12 Vca/Vcc'),
    ('110 Vca'),
    ('220 Vca'),
    ('380 Vca'),
    ('440 Vca');

-- Tabela aplicacao
INSERT INTO aplicacao (aplicacao)
VALUES 
    ('T�nel de encolhimento'),
    ('M�quina de corte e solda'),
    ('Pain�is e quadros el�tricos'),
    ('M�quinas de Embalagem'),
    ('Fornos el�tricos'),
    ('Freezers'),
    ('Prote��o de motores'),
    ('Chopeiras');

-- Tabela AplicacaoNavegacao
INSERT INTO AplicacaoNavegacao (aplicacao_navegacao)
VALUES 
    ('Controles para Autoclaves'),
    ('Controles para Panifica��o'),
    ('Controles para M�quina de embalagem'),
    ('Controle para Fornos'),
    ('Aquarismo'),
    ('Chocadeira');

-- Tabela categoria
INSERT INTO categoria (categoria)
VALUES 
    ('Controle e Medi��o de Temperatura'),
    ('Acess�rios'),
    ('Controle para Refrigera��o'),
    ('Indicador digital'),
    ('Contador de Impulso'),
    ('Rel�s de Tempo'),
    ('Sensores'),
    ('Solu��es Integradas'),
    ('Medi��o e Controle de N�vel');

-- Tabela CategoriaVenda
INSERT INTO categoriavenda (categoria_venda)
VALUES 
    ('Automa��o'),
    ('Refrigera��o');

-- Tabela certificado
INSERT INTO certificado (certificado)
VALUES 
    ('Certificado ISO9000'),
    ('Certificado UL'),
    ('Certificado CE');

-- Tabela concorrente
INSERT INTO concorrente (codigo_concorrente, descricao_concorrente, empresa_concorrente, observacao_concorrente)
VALUES 
    ('TC900', 'Controlador para refrigera��o com 3 sa�das', 'Full Gauge', 'Possui op��o de comunica��o serial'),
    ('N1030', 'Controlador para aquecimento, PID, com 2 sa�das', 'Novus', 'Possui borne extra�vel');

-- Tabela foto
INSERT INTO foto (foto, nome_foto) 
VALUES 
    ('https://www.ascontecnologic.com/images/igallery/resized/1-100/2-34-800-600-80.jpg', 'Z31 frontal'),
    ('https://www.ascontecnologic.com/images/igallery/resized/1-100/km_red_0-19-800-600-80.jpg', 'KM frontal'),
    ('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_01.png.png', 'E34 frontal'),
    ('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_03png.png', 'E34 vista superior');

-- Tabela funcao
INSERT INTO funcao (funcao)
VALUES 
    ('Controlador para chocadeira'),
    ('Controlador para refrigera��o'),
    ('Controlador de umidade e temperatura'),
    ('Controlador Diferencial de Temperatura'),
    ('Temporizador Multifun��o'),
    ('Monitor de Tens�o Monof�sico'),
    ('Temporizador Digital'),
    ('Indicador de temperatura');

-- Tabela Manual
INSERT INTO Manual (link_manual, manual_idioma, manual_tipo, nome_manual) 
VALUES 
    ('link manual 1', 'portugu�s', 'resumido', 'm_TLK48_IR_R0'),
    ('link manual 2', 'espanhol', 'completo', 'm_TLK48_R5');

-- Tabela ModeloAntigo
INSERT INTO modeloantigo (descricao_modelo_antigo, modelo_antigo, observacao_modelo_antigo, id_foto)
VALUES 
    ('Temporizador anal�gico', 'AB', 'Montagem em trilho DIN ou parafuso', 1),
    ('Temporizador anal�gico2', 'AB2', 'Montagem em trilho DIN ou parafuso2', 2);

-- Tabela montagem
INSERT INTO montagem (montagem)
VALUES 
    ('Porta de painel'),
    ('Trilho DIN'),
    ('Sobrepor');

-- Tabela produto
INSERT INTO produto (
    descricao_completa, 
    descricao_reduzida, 
    link_codigo_pedido, 
    link_dimensoes, 
    link_esquema_ligacao, 
    link_exemplo_ligacao, 
    link_site, 
    link_tabela_alarmes, 
    link_tabela_parametros, 
    modelo, 
    status, 
    id_alimentacao, 
    id_aplicacao, 
    id_aplicacao_navegacao, 
    id_categoria, 
    id_categoria_venda, 
    id_certificado, 
    id_concorrente, 
    id_foto, 
    id_funcao, 
    id_manual, 
    id_modelo_antigo, 
    id_montagem)
VALUES 
    ('descricao_completa1', 'descricao_reduzida1', 1, 'link_dimensoes1', 'link_esquema_ligacao1', 
     'link_exemplo_ligacao1', 'link_site1', 'link_tabela_alarmes1', 'link_tabela_parametros1', 'modelo1', 'status1', 
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
    ('descricao_completa2', 'descricao_reduzida2', 2, 'link_dimensoes2', 'link_esquema_ligacao2', 
     'link_exemplo_ligacao2', 'link_site2', 'link_tabela_alarmes2', 'link_tabela_parametros2', 'modelo2', 'status2', 
     2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);