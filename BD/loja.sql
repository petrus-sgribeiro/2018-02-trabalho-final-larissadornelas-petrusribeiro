-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: loja
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acessorio`
--

DROP TABLE IF EXISTS `acessorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acessorio` (
  `idProduto` int(10) NOT NULL,
  `atipo` varchar(45) DEFAULT NULL,
  `atamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acessorio`
--

LOCK TABLES `acessorio` WRITE;
/*!40000 ALTER TABLE `acessorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `acessorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrinhocompras`
--

DROP TABLE IF EXISTS `carrinhocompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrinhocompras` (
  `idCarrinhoCompras` int(10) NOT NULL,
  PRIMARY KEY (`idCarrinhoCompras`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinhocompras`
--

LOCK TABLES `carrinhocompras` WRITE;
/*!40000 ALTER TABLE `carrinhocompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinhocompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idCompra` int(10) NOT NULL,
  `dataCompra` timestamp NULL DEFAULT NULL,
  `precoCompra` decimal(12,2) DEFAULT NULL,
  `desconto` decimal(12,2) DEFAULT NULL,
  `precoTotal` decimal(12,2) DEFAULT NULL,
  `idUsuarioCompra` int(10) DEFAULT NULL,
  `idCarCompras` int(10) DEFAULT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `idUsuarioCompra` (`idUsuarioCompra`),
  KEY `idCarCompras` (`idCarCompras`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contem`
--

DROP TABLE IF EXISTS `contem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contem` (
  `idCarCompras` int(10) NOT NULL,
  `idProd` int(10) NOT NULL,
  `precoCompra` decimal(12,2) DEFAULT NULL,
  `precoTotal` decimal(12,2) DEFAULT NULL,
  `quantidade` int(10) DEFAULT NULL,
  PRIMARY KEY (`idCarCompras`,`idProd`),
  KEY `idProd` (`idProd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contem`
--

LOCK TABLES `contem` WRITE;
/*!40000 ALTER TABLE `contem` DISABLE KEYS */;
/*!40000 ALTER TABLE `contem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feminino`
--

DROP TABLE IF EXISTS `feminino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feminino` (
  `idProduto` int(10) NOT NULL,
  `ftipo` varchar(45) DEFAULT NULL,
  `ftamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feminino`
--

LOCK TABLES `feminino` WRITE;
/*!40000 ALTER TABLE `feminino` DISABLE KEYS */;
/*!40000 ALTER TABLE `feminino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masculino`
--

DROP TABLE IF EXISTS `masculino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masculino` (
  `idProduto` int(10) NOT NULL,
  `mtipo` varchar(45) DEFAULT NULL,
  `mtamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masculino`
--

LOCK TABLES `masculino` WRITE;
/*!40000 ALTER TABLE `masculino` DISABLE KEYS */;
/*!40000 ALTER TABLE `masculino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `idProduto` int(10) NOT NULL,
  `pnome` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `precoCusto` decimal(12,2) DEFAULT NULL,
  `precoVenda` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefoneusuario`
--

DROP TABLE IF EXISTS `telefoneusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefoneusuario` (
  `idUserTel` int(10) NOT NULL,
  `numTel` int(10) DEFAULT NULL,
  PRIMARY KEY (`idUserTel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefoneusuario`
--

LOCK TABLES `telefoneusuario` WRITE;
/*!40000 ALTER TABLE `telefoneusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefoneusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(10) NOT NULL,
  `cpf` int(11) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `logradouro` varchar(45) NOT NULL,
  `numero` int(10) NOT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `cep` int(8) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-23 15:54:18
