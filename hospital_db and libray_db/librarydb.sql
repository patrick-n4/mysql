-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: library_db
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors_table`
--

DROP TABLE IF EXISTS `authors_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors_table` (
  `AuID` int NOT NULL AUTO_INCREMENT,
  `AuName` varchar(50) NOT NULL,
  `AUTELL` int NOT NULL,
  PRIMARY KEY (`AuID`),
  UNIQUE KEY `AUTELL` (`AUTELL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_table`
--

LOCK TABLES `authors_table` WRITE;
/*!40000 ALTER TABLE `authors_table` DISABLE KEYS */;
INSERT INTO `authors_table` VALUES (1,'Austin',111111111),(2,'Marville',222222222),(3,'John',333333333),(4,'Roman',444444444),(5,'Shakespare',555555555);
/*!40000 ALTER TABLE `authors_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_author_table`
--

DROP TABLE IF EXISTS `book_author_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_author_table` (
  `ISBN` int NOT NULL,
  `AuID` int NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author_table`
--

LOCK TABLES `book_author_table` WRITE;
/*!40000 ALTER TABLE `book_author_table` DISABLE KEYS */;
INSERT INTO `book_author_table` VALUES (1992000,1),(1992001,2),(1992002,8),(1992003,3),(1992004,4);
/*!40000 ALTER TABLE `book_author_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_table`
--

DROP TABLE IF EXISTS `books_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_table` (
  `ISBN` bigint NOT NULL,
  `Title` varchar(30) NOT NULL,
  `PubId` int NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_table`
--

LOCK TABLES `books_table` WRITE;
/*!40000 ALTER TABLE `books_table` DISABLE KEYS */;
INSERT INTO `books_table` VALUES (1992000,'FOP',1,2000),(1992001,'JavaScript',2,1000),(1992002,'Romeo and Juliet',3,2000),(1992003,'Cyber Security',3,3000),(1992004,'Mathematics V5',2,5000);
/*!40000 ALTER TABLE `books_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers_table`
--

DROP TABLE IF EXISTS `publishers_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers_table` (
  `PubID` int NOT NULL AUTO_INCREMENT,
  `PubName` varchar(50) NOT NULL,
  `PUBTEL` int NOT NULL,
  PRIMARY KEY (`PubID`),
  UNIQUE KEY `PUBTEL` (`PUBTEL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers_table`
--

LOCK TABLES `publishers_table` WRITE;
/*!40000 ALTER TABLE `publishers_table` DISABLE KEYS */;
INSERT INTO `publishers_table` VALUES (1,'Pub House',888888888),(2,'Mega Press',333333333),(3,'Alpha House',222222222),(4,'Pub House',111112222),(5,'Alpha House',252525256);
/*!40000 ALTER TABLE `publishers_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 18:15:28
