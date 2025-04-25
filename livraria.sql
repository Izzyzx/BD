SELECT 
 l.titulo, SUM(v.quantidade) AS quantidade
 FROM vendas v
 JOIN livros l ON v.livro_id = l.id
 GROUP BY l.titulo
 ORDER BY quantidade_total DESC;
 
 SELECT 
 l.titulo, SUM(v.quantidade * v.preco_unitario) AS faturamento
 FROM vendas v
 JOIN livros l ON v.livros_id = l.id
 GROUP BY l.titulo
 ORDER BY faturamento DESC;
 
 SELECT 
 l.titulo, SUM(v.quantidade) AS quantidade 
 FROM vendas v
 JOIN livros i ON v.livros_id = l.id
 WHERE YEAR(v.data_vendas) = 2023
 GROUP BY l.titulo
 ORDER BY quantidade DESC;
 
 SELECT l.titulo, v.quantidade, v.preco_unitario,
 (v.quantidade * v.preco_unitario) AS faturamento
 FROM vendas v
 JOIN livros l ON v.livro_id = l.id
 ORDER BY faturamento DESC;

SELECT l.titulo, a.nome AS autor, a.nacionalidade, l.preco AS preço_unitario, v.quantidade AS quantidade, YEAR(v.data_venda) AS ano
FROM vendas v
JOIN livros l ON v.id = l.id
JOIN autores a ON l.autor_id = a.id
WHERE a.nacionalidade = 'Britânica' AND YEAR(v.data_venda) = 2023 AND l.preco > 50 AND v.quantidade >= 2
ORDER BY l.preco DESC;
