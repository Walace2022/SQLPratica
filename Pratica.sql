--Buscar o nome e ano dos filmes

SELECT Nome,Ano FROM Filmes

--Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome,Ano FROM Filmes
ORDER BY Ano

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'