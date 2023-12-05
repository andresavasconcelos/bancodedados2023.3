-- MYSQL WORKBENCH
-- Projeto de Modelagem da Matéria de Banco de Dados 2023.3

CREATE DATABASE db_belaFesta;
USE db_belaFesta;

-- Criando a tabela Clientes
CREATE TABLE Clientes(
	id_cliente INT NOT NULL,
	Nome VARCHAR(60) NOT NULL,
	Sobrenome VARCHAR(400) NOT NULL,
	CPF VARCHAR(11) NOT NULL,
	RG VARCHAR(9) NOT NULL,
	Telefone VARCHAR(100) NOT NULL,
	Email VARCHAR(200) NOT NULL,
	CEP VARCHAR(100) NOT NULL,
	Logradouro VARCHAR(100) NOT NULL,
	Numero_casa VARCHAR(100) NOT NULL,
	Cidade VARCHAR(100) NOT NULL,
	Estado VARCHAR(100) NOT NULL,
	Pais VARCHAR(100) NOT NULL,
	PRIMARY KEY(id_cliente)
);

-- Adicionando dados na tabela Clientes
INSERT INTO Clientes(id_cliente, Nome, Sobrenome, CPF, RG, Telefone, Email, CEP, Logradouro, Numero_casa, Cidade, Estado, Pais)
VALUES (1, 'Joana', 'Silva', '12345678900', '1234567', '(00) 1234-5678', 'joao@email.com', '12345-678', 'Rua A', '123', 'São Paulo', 'SP', 'Brasil');
INSERT INTO Clientes(id_cliente, Nome, Sobrenome, CPF, RG, Telefone, Email, CEP, Logradouro, Numero_casa, Cidade, Estado, Pais)
VALUES (2, 'Maria', 'Santos', '98765432100', '7654321', '(00) 9876-5432', 'maria@email.com', '54321-098', 'Avenida B', '456', 'Rio de Janeiro', 'RJ', 'Brasil');
INSERT INTO Clientes(id_cliente, Nome, Sobrenome, CPF, RG, Telefone, Email, CEP, Logradouro, Numero_casa, Cidade, Estado, Pais)
VALUES (3, 'Pedro', 'Garcia', '11122233344', '9876543', '(00) 1111-2222', 'pedro@email.com', '98765-432', 'Rua C', '789', 'Salvador', 'BA', 'Brasil');

-- Criando a tabela Vestidos
CREATE TABLE Vestidos(
	id_vestido INT NOT NULL,
	Modelo_vestido VARCHAR(100) NOT NULL,
	Cor VARCHAR(100) NOT NULL,
	Ano INT NOT NULL,
	Valor INT NOT NULL,
	Costureira_Responsavel VARCHAR(200),
	PRIMARY KEY(id_vestido)
);

-- DROP TABLE VESTIDOS;
-- Adicionando dados na tabela Vestidos
INSERT INTO Vestidos(id_vestido, Modelo_vestido, Cor, Ano, Valor, Costureira_Responsavel)
VALUES (1, 'Vestido de Festa', 'Azul', 2023, 250.00, 'Ana Paula');
INSERT INTO Vestidos(id_vestido, Modelo_vestido, Cor, Ano, Valor, Costureira_Responsavel)
VALUES (2, 'Vestido de Noiva', 'Branco', 2022, 800.00, 'Mariana Oliveira');
INSERT INTO Vestidos(id_vestido, Modelo_vestido, Cor, Ano, Valor, Costureira_Responsavel)
VALUES (3, 'Vestido Casual', 'Vermelho', 2023, 120.00, 'Carla Mendes');


-- Criando a tabela Alugueis
CREATE TABLE Alugueis(
	id_aluguel INT NOT NULL,
	id_cliente INT NOT NULL,
	id_vestido INT NOT NULL,
	status_pedido VARCHAR(100) NOT NULL,
	forma_pagamento VARCHAR(100) NOT NULL,
	data_contrato Date NOT NULL,
	data_pagamento Date NOT NULL,
	data_evento Date NOT NULL,
	PRIMARY KEY(id_aluguel),
	FOREIGN KEY(id_cliente) REFERENCES Clientes(id_cliente),
	FOREIGN KEY(id_vestido) REFERENCES Vestidos(id_vestido)
);

-- Adicionando dados na tabela Alugueis
INSERT INTO Alugueis(id_aluguel, id_cliente, id_vestido, status_pedido, forma_pagamento, data_contrato, data_pagamento, data_evento)
VALUES (1, 1, 2, 'Confirmado', 'Cartão de Crédito', '2023-01-15', '2023-01-15', '2023-02-25');
INSERT INTO Alugueis(id_aluguel, id_cliente, id_vestido, status_pedido, forma_pagamento, data_contrato, data_pagamento, data_evento)
VALUES (2, 3, 1, 'Pendente', 'Dinheiro', '2023-02-10', '2023-02-10', '2023-03-18');
INSERT INTO Alugueis(id_aluguel, id_cliente, id_vestido, status_pedido, forma_pagamento, data_contrato, data_pagamento, data_evento)
VALUES (3, 2, 3, 'Confirmado', 'Transferência Bancária', '2023-03-05', '2023-03-05', '2023-04-10');
INSERT INTO Alugueis(id_aluguel, id_cliente, id_vestido, status_pedido, forma_pagamento, data_contrato, data_pagamento, data_evento)
VALUES (4, 1, 3, 'Confirmado', 'Cartão de Crédito', '2023-04-15', '2023-04-15', '2023-07-25');