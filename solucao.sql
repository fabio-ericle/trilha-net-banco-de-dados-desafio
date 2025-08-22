-- 1. Buscar o nome e o ano dos filmes
SELECT
	Nome, Ano
FROM Filmes;

-- 2. Buscar o nome e o ano dos filems, ordenados por ordem crescente pelo ano
SELECT
	Nome, Ano
FROM Filmes
ORDER BY Ano;

-- 3. Buscar pelo filme De Volta Para O Futuro, trazendo o nome, ano e a duração
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro';

-- 4. Buscar os filmes lançados em 1997
SELECT
	* 
FROM Filmes
WHERE Ano = 1997;

-- 5. Buscar os filmes lançados após o ano 2000
SELECT
	*
FROM Filmes
WHERE Ano > 2000;

-- 6. Buscar os filmes com a duração maior que 100 e menor que 150, ordenado pela duração em ordem crescente
SELECT
	*
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

-- 7. Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT
	Ano, COUNT(Ano) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8. Buscar os atores de gênero masculino, retornando o primeiro nome, último nome
SELECT
	PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9. Buscar os atores do gênero feminino, retornando o primeiro nome, último nome, e ordenando pelo primeiro nome
SELECT
	PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10. Buscar o nome do filme e o gênero
SELECT
	Filmes.Nome, Generos.Genero
FROM FilmesGenero
	INNER JOIN Filmes ON IdFilme = Filmes.Id 
	INNER JOIN Generos ON IdGenero = Generos.Id;

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
	Filmes.Nome, Generos.Genero
FROM FilmesGenero
	INNER JOIN Filmes ON IdFilme = Filmes.Id
	INNER JOIN Generos ON IdGenero = Generos.Id
WHERE Genero = 'Mistério';

-- 12. Buscar o nome do filme e os atores, trazendo o primeiro nome, último nome e o seu papel
SELECT
	Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
	INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
	INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
