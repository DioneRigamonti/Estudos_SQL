-- [SQL Server] Manipulando Strings e Datas no SQL
-- Aula 2 de 23: LEN e DATALENGTH

-- Exemplo: Descubra a quantidade de caracteres da palavra 'abc def ghi'

SELECT
	LEN('abc def ghi') AS 'Len',
	DATALENGTH('abc def ghi') AS 'Datalength'

-- Datalength conta inclusive os espaços
-- Len conta somente os caracteres ignorando os espaços.