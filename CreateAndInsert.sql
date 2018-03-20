CREATE TABLE CLIENTE
( codigo_cliente smallint not null PRIMARY KEY,
nome_cliente varchar(20),
endereco varchar(30),
cidade varchar(15),
CEP varchar(8),
UF varchar(2),
CGC varchar(20),
IE varchar(20) );

CREATE TABLE VENDEDOR
( codigo_vendedor smallint not null,
nome_vendedor varchar(20),
salario_fixo decimal(12,2),
faixa_comissao char(1),
 PRIMARY KEY (codigo_vendedor) );
 
CREATE TABLE PEDIDO
(
num_pedido int not null PRIMARY KEY,
prazo_entrega smallint not null,
codigo_cliente smallint not null,
codigo_vendedor smallint not null,
FOREIGN KEY (codigo_cliente)
REFERENCES CLIENTE(codigo_cliente),
FOREIGN KEY (codigo_vendedor)
REFERENCES VENDEDOR(codigo_vendedor)
);

CREATE TABLE PRODUTO
( codigo_produto smallint not null,
unidade varchar(3),
descricao varchar(30),
val_unit decimal(12,2),
 PRIMARY KEY (codigo_produto) );
 
CREATE TABLE ITEM_DO_PEDIDO
(
num_pedido int not null ,
codigo_produto smallint not null ,
quantidade decimal,
FOREIGN KEY (num_pedido)
REFERENCES PEDIDO(num_pedido),
FOREIGN KEY (codigo_produto)
REFERENCES PRODUTO(codigo_produto),
PRIMARY KEY (num_pedido , codigo_produto)
);

INSERT INTO CLIENTE VALUES (1, "Carlos Alberto", "Rua da Paz, 12", "Rio deJaneiro", "20000", "RJ", "0101010", "02020");
INSERT INTO CLIENTE VALUES (2, "Luis Eduardo", "Rua do Sol, 102", "Rio deJaneiro", "20000", "RJ", "454545", "02021");
INSERT INTO CLIENTE VALUES (3, "Alan Silva", "Rua da Alegria, 12", "São Paulo","11000", "SP", "686879", "02020");
INSERT INTO CLIENTE VALUES (4, "Carlos Neves", "Rua do Sol, 212", "São Paulo","11000", "SP", "686878",null);
INSERT INTO CLIENTE VALUES (5, "Carlos Silva", "Rua da Paz, 52", "Rio de Janeiro","20000", "RJ", "0101010", null);
INSERT INTO VENDEDOR VALUES (10, "João Carlos", 200.00, "A");
INSERT INTO VENDEDOR VALUES (20, "Luis Pedro", 300.00, "B");
INSERT INTO VENDEDOR VALUES (30, "Luis Lemos", 350.00, "A");
INSERT INTO VENDEDOR VALUES (40, "Carlos Silva", 500.00, "C");
INSERT INTO PRODUTO VALUES (100,"un", "Leite em pó", 3.00);
INSERT INTO PRODUTO VALUES (200, "kg", "Queijo", 12.00);
INSERT INTO PRODUTO VALUES (300,"un", "Macarrão", 4.00);
INSERT INTO PRODUTO VALUES (400,"lt", "Suco laranja", 2.00);
INSERT INTO PRODUTO VALUES (500,"un", "Chocolate", 5.00);
INSERT INTO PRODUTO VALUES (600, "kg", "Presunto", 5.00);
INSERT INTO PEDIDO VALUES (1000, 10, 1, 10);
INSERT INTO PEDIDO VALUES (2000, 20, 1, 20);
INSERT INTO PEDIDO VALUES (3000, 15, 2, 10);
INSERT INTO PEDIDO VALUES (4000, 15, 5, 30);
INSERT INTO ITEM_DO_PEDIDO VALUES (1000, 100, 10);
INSERT INTO ITEM_DO_PEDIDO VALUES (1000, 200, 20);
INSERT INTO ITEM_DO_PEDIDO VALUES (1000, 300, 15);
INSERT INTO ITEM_DO_PEDIDO VALUES (2000, 300, 40);
INSERT INTO ITEM_DO_PEDIDO VALUES (2000, 400, 10);
INSERT INTO ITEM_DO_PEDIDO VALUES (2000, 500, 5);
INSERT INTO ITEM_DO_PEDIDO VALUES (3000, 500, 5);
INSERT INTO ITEM_DO_PEDIDO VALUES (4000, 100, 24);
INSERT INTO ITEM_DO_PEDIDO VALUES (4000, 300, 15);
