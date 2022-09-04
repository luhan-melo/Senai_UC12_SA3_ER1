-- cria��o de banco de dados
CREATE DATABASE TesteSegurancaBE7FS4;

-- colocar o banco de dados em uso
USE TesteSegurancaBE7FS4;

--cria��o de uma tabela para armazenar usu�rio
CREATE TABLE Usuarios
(
	Id INT PRIMARY KEY IDENTITY, -- identity torna o campo auto incremental
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
);

-- consulta a todos os dados ops dados da tabela criada
SELECT * FROM Usuarios;

-- cadastrar um usu�rio no banco de dados
INSERT INTO Usuarios VALUES ('email@email.com', 1234);
INSERT INTO Usuarios VALUES ('junior@email.com', 'vip@524');

--hasheando dados em uma consulta
SELECT Id, Email, HASHBYTES('MD2', Senha) FROM Usuarios; --HASHBYTES(DOIS ARGUMENTOS - PRIMEIRO O TIPO DE CRIPTOGRAFIA (TIPO DE CRIPTOGRAFIA = ALGORITIMO) E O SEGUNDO O CAMPO A CRIPTOGRAFAR(HASHEAR))


--hasheando dados e filtrando apenas um usu�rio
SELECT Id, Email, HASHBYTES('MD2', Senha) FROM Usuarios WHERE Id = 2;

--hasheando dados e filtrando apenas um usu�rio e dando apelido para a coluna hasheada
SELECT Id, Email, HASHBYTES('MD2', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;

--utilizando algoritmo MD4 (Seguindo os �ltimos exemplo de Linhas x Colunas)
SELECT Id, Email, HASHBYTES('MD4', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;

--utilizando algoritmo MD5 (Seguindo os �ltimos exemplo de Linhas x Colunas)
SELECT Id, Email, HASHBYTES('MD5', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;

--utilizando algoritmo SHA (Seguindo os �ltimos exemplo de Linhas x Colunas)
SELECT Id, Email, HASHBYTES('SHA', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;

--utilizando algoritmo SHA1 (Seguindo os �ltimos exemplo de Linhas x Colunas)
SELECT Id, Email, HASHBYTES('SHA1', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;

--utilizando algoritmo SHA2_256 (Seguindo os �ltimos exemplo de Linhas x Colunas)
SELECT Id, Email, HASHBYTES('SHA2_256', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;

--utilizando algoritmo SHA2_512 (Seguindo os �ltimos exemplo de Linhas x Colunas)
SELECT Id, Email, HASHBYTES('SHA2_512', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;
