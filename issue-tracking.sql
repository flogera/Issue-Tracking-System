-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: issue_tracking
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues` (
  `issue_id` int NOT NULL AUTO_INCREMENT,
  `issue_title` varchar(80) DEFAULT NULL,
  `issue_description` varchar(300) DEFAULT NULL,
  `assigned_to` int DEFAULT NULL,
  `issue_creation_date` date DEFAULT NULL,
  `issue_processing_date` date DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `id_idx` (`assigned_to`,`created_by`),
  KEY `foreign_key2_idx` (`created_by`),
  CONSTRAINT `foreign_key` FOREIGN KEY (`assigned_to`) REFERENCES `user` (`id`),
  CONSTRAINT `foreign_key2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'olga','','','',''),(2,'olga','flogera','flogera','',''),(3,'olga2','flogera','','',''),(4,'olga','flogera','olgaflogera','olga','patra'),(5,'panos','flogeras','panos','flogeras','patra'),(6,'olga','flogera','olga','flogera',''),(7,'olga5','flogera5','','',''),(8,'olga','flogera','olga','olga','patra'),(9,'olga','flogera','olga','olga','patra'),(10,'OLGA','FLOGERA','OLGA','FLOGERA','PATRA'),(11,'OLGA','FLOGERA','OLGA','FLOGERA','PATRA'),(12,'olga12','flogera12','olga12','olga12',''),(13,'olga12','flogera12','olga12','olga12',''),(14,'olga','flogera','flogera','flogera','Theriano'),(15,'&#908;&#955;&#947;&#945;','&#934;&#955;&#959;&#947;&#949;&#961;&#940;','olga','olga','&#920;&#949;&#961;&#953;&#945;&#957;&#972;'),(16,'olga','flogera','olga','olga','patra'),(17,'olga','flogera','olgaflogera','olgaflogera','patra');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 10:14:08
