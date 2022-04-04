-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.28 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para bd maria e deyvison
CREATE DATABASE IF NOT EXISTS `bd maria e deyvison` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd maria e deyvison`;

-- Copiando estrutura para tabela bd maria e deyvison.aluga⁄_devolve
CREATE TABLE IF NOT EXISTS `aluga⁄_devolve` (
  `FK_LEITOR_COD_LEITOR` int DEFAULT NULL,
  `FK_LIVRO_COD_LIVRO` int DEFAULT NULL,
  `DATA_ENTREGA` date DEFAULT NULL,
  `DATA_PREVISTA` date DEFAULT NULL,
  `MULTA` decimal(2,0) DEFAULT NULL,
  UNIQUE KEY `FK_LIVRO_COD_LIVRO` (`FK_LIVRO_COD_LIVRO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd maria e deyvison.aluga⁄_devolve: 1 rows
/*!40000 ALTER TABLE `aluga⁄_devolve` DISABLE KEYS */;
INSERT INTO `aluga⁄_devolve` (`FK_LEITOR_COD_LEITOR`, `FK_LIVRO_COD_LIVRO`, `DATA_ENTREGA`, `DATA_PREVISTA`, `MULTA`) VALUES
	(NULL, NULL, '2022-01-23', '2021-12-23', 2);
/*!40000 ALTER TABLE `aluga⁄_devolve` ENABLE KEYS */;

-- Copiando estrutura para tabela bd maria e deyvison.atendente
CREATE TABLE IF NOT EXISTS `atendente` (
  `NOME` varchar(100) NOT NULL,
  `FK_BIBLIOTECA_NOME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NOME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd maria e deyvison.atendente: 2 rows
/*!40000 ALTER TABLE `atendente` DISABLE KEYS */;
INSERT INTO `atendente` (`NOME`, `FK_BIBLIOTECA_NOME`) VALUES
	('Maria', NULL),
	('Deyvison', NULL);
/*!40000 ALTER TABLE `atendente` ENABLE KEYS */;

-- Copiando estrutura para tabela bd maria e deyvison.biblioteca
CREATE TABLE IF NOT EXISTS `biblioteca` (
  `NOME` varchar(30) NOT NULL DEFAULT 'M&D',
  `ENDERECO` varchar(30) DEFAULT NULL,
  `TELEFONE` char(50) DEFAULT NULL,
  `CIDADE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NOME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd maria e deyvison.biblioteca: 1 rows
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
INSERT INTO `biblioteca` (`NOME`, `ENDERECO`, `TELEFONE`, `CIDADE`) VALUES
	('M&D', 'Vila Floriano', '3283-1271', 'Alfenas');
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;

-- Copiando estrutura para tabela bd maria e deyvison.leitor
CREATE TABLE IF NOT EXISTS `leitor` (
  `COD_LEITOR` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(40) DEFAULT NULL,
  `CPF` char(50) DEFAULT NULL,
  `ENDERECO` varchar(70) DEFAULT NULL,
  `FK_ATENDENTE_NOME` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`COD_LEITOR`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd maria e deyvison.leitor: 4 rows
/*!40000 ALTER TABLE `leitor` DISABLE KEYS */;
INSERT INTO `leitor` (`COD_LEITOR`, `NOME`, `CPF`, `ENDERECO`, `FK_ATENDENTE_NOME`) VALUES
	(1, 'Frida', '123.321.432-00', 'Rua Nova', NULL),
	(2, 'Joana', '111.123.432-00', 'Rua Velha', NULL),
	(3, 'Angela', '222.123.321-00', 'Avenida dos sonhos', NULL),
	(5, 'Caetano', '222.123.987-10', 'Rua Salve Jorge', NULL);
/*!40000 ALTER TABLE `leitor` ENABLE KEYS */;

-- Copiando estrutura para tabela bd maria e deyvison.livro
CREATE TABLE IF NOT EXISTS `livro` (
  `COD_LIVRO` int NOT NULL AUTO_INCREMENT,
  `TITULO_DO_LIVRO` varchar(30) DEFAULT NULL,
  `AUTOR` varchar(30) DEFAULT NULL,
  `EDITORA` varchar(30) DEFAULT NULL,
  `DISPONIBILIDADE` int DEFAULT NULL,
  `FK_BIBLIOTECA_NOME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`COD_LIVRO`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd maria e deyvison.livro: 2 rows
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` (`COD_LIVRO`, `TITULO_DO_LIVRO`, `AUTOR`, `EDITORA`, `DISPONIBILIDADE`, `FK_BIBLIOTECA_NOME`) VALUES
	(1, 'Dom Casmurro', 'Machado de Assis', 'Principis', 10, NULL),
	(2, 'Romeu e Julieta', 'Willian Shakaspare', 'Classicos', 5, NULL);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
