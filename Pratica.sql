--Buscar o nome e ano dos filmes

SELECT Nome,Ano FROM Filmes

--Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome,Ano FROM Filmes
ORDER BY Ano

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Buscar os filmes lan�ados em 1997

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Ano = 1997

--Buscar os filmes lan�ados AP�S o ano 2000

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Ano > 2000

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome,Ano,Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente

SELECT Ano,COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome,UltimoNome FROM Atores
WHERE Genero = 'M'

--Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome,UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Buscar o nome do filme e o g�nero

SELECT F.Nome,G.Genero FROM FilmesGenero FG
INNER JOIN
Filmes F
ON FG.IdFilme = F.Id
INNER JOIN
Generos G
ON FG.IdGenero = G.Id
