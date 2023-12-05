-- Selects das tabelas
SELECT * FROM Clientes;
SELECT * FROM Vestidos;
SELECT * FROM Alugueis ;

-- Quantos alugueis uma cliente Joana tem?
SELECT count(id_aluguel) from Alugueis AS a
INNER JOIN Clientes AS c
ON
a.id_cliente = c.id_cliente
WHERE c.nome = 'Joana';

-- Qual alugueis com status de confirmados?
SELECT count(id_vestido) from Alugueis AS a
WHERE a.status_pedido = 'Confirmado';

-- Qual vestido mais antigo
SELECT MAX(Ano) FROM Vestidos 