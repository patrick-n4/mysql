-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_db
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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `name` varchar(50) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `address` varchar(50) NOT NULL,
  `idNumber` varchar(16) NOT NULL,
  `telephone` int DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`idNumber`),
  UNIQUE KEY `tel` (`telephone`),
  CONSTRAINT `doctors_chk_1` CHECK (((2022 - year(`DOB`)) >= 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES ('KAYITARE Davis','MALE','kayitaredavis@gmail.com','1198023123432434',793454353,'1990-10-02'),('UMUHIRE Clenia','FEMALE','umuhireclenia@gmail.com','1198023123432438',786267979,'1985-07-12'),('NOELLA Trezor','FEMALE','noellatrezor@gmail.com','1198023123432479',783040031,'1995-04-07'),('NSABIMANA Hakim','MALE','nsabimahakim@gmail.com','1198023123432562',781075888,'1997-04-10'),('MUHOZA Jani','FEMALE','muhozajani@gmail.com','1198023123433431',784345664,'1980-01-10');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medecine`
--

DROP TABLE IF EXISTS `medecine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medecine` (
  `Name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `medCode` int NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `expiryDate` date NOT NULL,
  PRIMARY KEY (`medCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medecine`
--

LOCK TABLES `medecine` WRITE;
/*!40000 ALTER TABLE `medecine` DISABLE KEYS */;
INSERT INTO `medecine` VALUES ('EPHLALIGAN',7500,2367,'PAIN KILLER','2023-01-01'),('EBIPLOFEN',1500,3245,'ANTIBODY','2023-01-01'),('QUALITEME',3000,4775,'MALARIA KILLER','2027-01-01'),('PALACETAMOL',500,5432,'ABTLIC','2024-12-20'),('CETAMO',2500,6473,'ANTIBIOTIC','2025-02-20');
/*!40000 ALTER TABLE `medecine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `name` varchar(50) NOT NULL,
  `patNumber` int NOT NULL,
  `sex` varchar(6) NOT NULL,
  `disease` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`patNumber`),
  CONSTRAINT `patient_chk_1` CHECK (((2022 - year(`DOB`)) >= 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('KAMALIZA ANTOINETTE',222333399,'FEMALE','DIARRHOEA','NYARUGENGE-NYAMIRAMBO','1997-12-12'),('MUGEMA Jean Claude',222444439,'MALE','HIV/AIDS','NYARUGENGE-MUMENA','1995-01-12'),('HATEGEKIMANA Hertie',222557439,'MALE','CORONA VIRUS','GASABO-GATENGA','2000-11-12'),('IRAKARAMA Bonfils',1111222200,'MALE','MALARIA','KICUKIRO-KANOMBE','1992-07-12'),('UMWALI Delphine',1111333399,'FEMALE','HEADACHE','KICUKIRO-NYARUGUNGA','1990-07-31');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `rNum` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `capacity` varchar(10) NOT NULL,
  `incharge` varchar(50) NOT NULL,
  PRIMARY KEY (`rNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'CONSULT ROOM','SMALL','INCHARGE OF GIVING CONSULTATION'),(101,'MEDICAL LABO','X-LARGE','TESTING OF MEDICINES'),(121,'VACCINATION','LARGE','VACCINATION AREA'),(234,'INFIRIMORY','MEDIUM','INCHARGE OF HELPING MOTHERS TO GIVE BIRTH'),(258,'AUTOPCY','LARGE','INCHARGE OF TESTING WHAT KILLED A PERSON');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 18:14:41
