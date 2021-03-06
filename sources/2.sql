CREATE TABLE CLASSIFICACAO (
   TIP_CODIGO BIGINT PRIMARY KEY,
   TIP_DESCRICAO VARCHAR NOT NULL
);

CREATE TABLE ITEM
(
ITE_CODIGO BIGINT PRIMARY KEY,
ITE_DESCRICAO VARCHAR(100) NOT NULL,
ITE_FORNECEDOR VARCHAR(100) NOT NULL,
ITE_VALIDADE DATE NOT NULL,
ITE_VALORVENDA DOUBLE PRECISION NOT NULL,
ITE_VALORCOMPRA DOUBLE PRECISION NOT NULL,
ITE_CIDADE VARCHAR(30) NOT NULL,
TIP_CODIGO BIGINT NOT NULL,
FOREIGN KEY(TIP_CODIGO) REFERENCES CLASSIFICACAO
);

INSERT INTO CLASSIFICACAO (TIP_CODIGO,TIP_DESCRICAO)  VALUES (10,'AUTO-PEÇA');
INSERT INTO CLASSIFICACAO (TIP_CODIGO,TIP_DESCRICAO)  VALUES (20,'ACESSÓRIO');
INSERT INTO CLASSIFICACAO (TIP_CODIGO,TIP_DESCRICAO)  VALUES (30,'GENÉRICOS');



INSERT INTO ITEM(ITE_CODIGO,ITE_DESCRICAO,ITE_FORNECEDOR,ITE_VALIDADE,ITE_VALORVENDA,ITE_VALORCOMPRA,ITE_CIDADE,TIP_CODIGO)
VALUES (1,'PAR AMORTECEDOR COTOMFAP','FORNECEDOR 1','2021-06-01',250.00,150.00,'SAO PAULO',10);

INSERT INTO  ITEM(ITE_CODIGO,ITE_DESCRICAO,ITE_FORNECEDOR,ITE_VALIDADE,ITE_VALORVENDA,ITE_VALORCOMPRA,ITE_CIDADE,TIP_CODIGO)
VALUES (2,'JOGO DE VELAS NKG','FORNECEDOR 2','2021-07-01',80.00,60.00,'RIO DE JANEIRO',10);

UPDATE ITEM
SET TIP_CODIGO = 30;

DELETE FROM CLASSIFICACAO WHERE TIP_CODIGO = 10;

SELECT * FROM CLASSIFICACAO;



