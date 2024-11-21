-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Emp_ID` int NOT NULL,
  `Emp_Name` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Province` varchar(20) NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Street_Num` char(10) NOT NULL,
  `Emp_PhoneNO` char(13) NOT NULL,
  `Manager_ID` int NOT NULL,
  PRIMARY KEY (`Emp_ID`),
  UNIQUE KEY `Emp_PhoneNO` (`Emp_PhoneNO`),
  KEY `Manager_ID` (`Manager_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Manager_ID`) REFERENCES `manager` (`Manager_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (10,'Ahamd','AFG','Ghor','','12b','+937888889889',1),(100,'Hasib','AFG','Ghazni','Jaghori','12b','+937888888889',1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Manager_ID` int NOT NULL,
  `Manager_Name` varchar(20) NOT NULL,
  `Manager_Lastname` varchar(20) DEFAULT NULL,
  `Manager_PhoneNO` char(13) NOT NULL,
  PRIMARY KEY (`Manager_ID`),
  UNIQUE KEY `Manager_PhoneNO` (`Manager_PhoneNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Ali','Alizade','+9378888888');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `Vehicle_plateNO` char(12) NOT NULL,
  `VehicleCom` varchar(20) NOT NULL,
  `Vehicle_Model` varchar(20) NOT NULL,
  `Manager_ID` int DEFAULT NULL,
  `Emp_ID` int DEFAULT NULL,
  PRIMARY KEY (`Vehicle_plateNO`),
  KEY `Manager_ID` (`Manager_ID`),
  KEY `Emp_ID` (`Emp_ID`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Manager_ID`) REFERENCES `manager` (`Manager_ID`),
  CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('-4 342333','Corolla','1995',NULL,10),('-6 12333','Benz','2023',1,NULL),('temp 2333','Passo','2010',NULL,100);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 20:44:29
