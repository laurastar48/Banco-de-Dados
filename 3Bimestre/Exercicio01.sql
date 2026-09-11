CREATE DATABASE bd_infonet

USE bd_infonet

CREATE TABLE Funcionarios(
    ID_FUNCIONARIO INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(150) UNIQUE,
    CIDADE VARCHAR(100) NOT NULL,
    ESTADO CHAR(2) NOT NULL,
    SETOR VARCHAR(80) NOT NULL,
    SALARIO DECIMAL(10,2) NOT NULL
	)

	INSERT INTO Funcionarios (NOME, EMAIL, CIDADE, ESTADO, SETOR, SALARIO)
	 VALUES
	     ('Ana Souza', 'ana@infonet.com', ' Sao Paulo', 'SP', 'TI', '5200.00'),
		 ('Carlos Lima', 'carlos@infonet.com',  'Rio de Janeiro', 'RJ', 'RH', '3800.00'),
		 ('Fernanda Costa', 'fernanda@infonet.com', 'Campinas', 'SP', 'Financeiro', '4500.00'),
		 ('Roberto Alves', 'roberto@infonet.com', 'Belo Horizonte', 'MG', 'TI', '6100.00'),
		 ('Juliana Matos', 'juliana@infonet.com', 'Curitiba', 'PR', 'Comercial', '2900.00'),
		 ('Marcos Pereira', 'marcos@infonet.com', 'Sao Paulo', 'SP', 'RH', '3200.00'),
		 ('Patricia Nunes', 'patricia@infonet.com', 'Porto Alegre', 'RS', 'Financeiro', '4100.00')
		
select * from Funcionarios

UPDATE Funcionarios
SET SALARIO = '7000.00'
WHERE ID_Funcionario = 1

UPDATE Funcionarios
SET SETOR = 'Gestao de Pessoas'
WHERE SETOR = 'RH'

UPDATE Funcionarios
SET CIDADE = 'Florianopolis',
	ESTADO = 'SC'
WHERE ID_FUNCIONARIO = 7

DELETE FROM Funcionarios
WHERE ID_FUNCIONARIO = 2

DELETE FROM Funcionarios
WHERE ESTADO =  'RS'
            
SELECT NOME, EMAIL, SALARIO
FROM Funcionarios
where SETOR = 'TI' 

SELECT NOME,SETOR,SALARIO
FROM Funcionarios
WHERE SALARIO < 4000.00;

SELECT NOME, CIDADE, SETOR
FROM Funcionarios
WHERE SETOR != 'Financeiro';
