-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.27-log
-- Versão do PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `db_sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cadastro_login`
--

CREATE TABLE IF NOT EXISTS `tbl_cadastro_login` (
  `codigo_usuario` int(100) NOT NULL AUTO_INCREMENT,
  `nome_solicitante` varchar(100) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `endereco` varchar(70) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(40) NOT NULL,
  PRIMARY KEY (`codigo_usuario`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cadastro_medico`
--

CREATE TABLE IF NOT EXISTS `tbl_cadastro_medico` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nome_cadastrante` varchar(100) NOT NULL,
  `especialidade_medico` varchar(60) NOT NULL,
  `nome_medico` varchar(100) NOT NULL,
  `hora_entrada` varchar(20) NOT NULL,
  `hora_saida` varchar(20) NOT NULL,
  `data_cadastro` varchar(20) NOT NULL,
  `nivel_procura` varchar(20) NOT NULL,
  `local` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Extraindo dados da tabela `tbl_cadastro_medico`
--

INSERT INTO `tbl_cadastro_medico` (`id`, `nome_cadastrante`, `especialidade_medico`, `nome_medico`, `hora_entrada`, `hora_saida`, `data_cadastro`, `nivel_procura`, `local`, `latitude`, `longitude`) VALUES
(39, '00587100192', 'Pediatria', 'ggiluhli', '23:00', '24:00', '07/09/16', 'Alta', 'QR 318 CONJ D CASA 19', '-16.00840334031377', '-47.9972090478517'),
(40, '00587100192', 'Pediatria', 'gigiu', '10:00', '15:00', '07/09/16', 'Média', 'QR 318 CONJ D CASA 19', '-16.00840334031377', '-47.9972090478517'),
(41, '00587100192', 'Ginecologista', 'Mario0000', '10:00', '14:00', '14/09/16', 'Média', 'QR 318 CONJ D CASA 19', '-16.0036155', '-47.9872688');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cadastro_usuario`
--

CREATE TABLE IF NOT EXISTS `tbl_cadastro_usuario` (
  `codigo_usuario` int(100) NOT NULL AUTO_INCREMENT,
  `nome_solicitante` varchar(100) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `endereco` varchar(70) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(40) NOT NULL,
  `acesso` int(10) NOT NULL,
  `funcao` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Extraindo dados da tabela `tbl_cadastro_usuario`
--

INSERT INTO `tbl_cadastro_usuario` (`codigo_usuario`, `nome_solicitante`, `cpf`, `endereco`, `cidade`, `estado`, `cep`, `email`, `telefone`, `acesso`, `funcao`) VALUES
(34, 'Joao da Venda', '00587100192', '424dsfsdfsdf', 'santa maria', 'DF', '234234234', 'julianogabinicole@gmail.co', '(22)2222-2222', 1, 'Motorista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_controle_administrador`
--

CREATE TABLE IF NOT EXISTS `tbl_controle_administrador` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tbl_controle_administrador`
--

INSERT INTO `tbl_controle_administrador` (`id`, `nome`, `senha`) VALUES
(1, 'admin', '123456');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
