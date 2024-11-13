-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cricket
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
-- Table structure for table `match_record`
--

DROP TABLE IF EXISTS `match_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_record` (
  `year` int NOT NULL,
  `Match_id` int DEFAULT NULL,
  `Country1_Name` varchar(20) NOT NULL,
  `Country2_Name` varchar(20) DEFAULT NULL,
  `Country1_Score` int NOT NULL,
  `Country2_Score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_record`
--

LOCK TABLES `match_record` WRITE;
/*!40000 ALTER TABLE `match_record` DISABLE KEYS */;
INSERT INTO `match_record` VALUES (2012,2,'india','',15,0);
/*!40000 ALTER TABLE `match_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_scorecard`
--

DROP TABLE IF EXISTS `match_scorecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_scorecard` (
  `Match_id` int NOT NULL,
  `Player_id` int DEFAULT NULL,
  `Player_Runs` int DEFAULT NULL,
  `Player_Wickets` int DEFAULT NULL,
  `Ways_of_dismissal` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Match_id`),
  KEY `Player_id` (`Player_id`),
  CONSTRAINT `match_scorecard_ibfk_1` FOREIGN KEY (`Player_id`) REFERENCES `player_record` (`Player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_scorecard`
--

LOCK TABLES `match_scorecard` WRITE;
/*!40000 ALTER TABLE `match_scorecard` DISABLE KEYS */;
INSERT INTO `match_scorecard` VALUES (2,1,0,3,'');
/*!40000 ALTER TABLE `match_scorecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_record`
--

DROP TABLE IF EXISTS `player_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_record` (
  `Player_id` int NOT NULL AUTO_INCREMENT,
  `Player_Name` varchar(20) NOT NULL,
  `Player_Country` varchar(30) NOT NULL,
  `Player_TotalRuns` int DEFAULT NULL,
  `Player_TotalWickets` int DEFAULT NULL,
  PRIMARY KEY (`Player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_record`
--

LOCK TABLES `player_record` WRITE;
/*!40000 ALTER TABLE `player_record` DISABLE KEYS */;
INSERT INTO `player_record` VALUES (1,'zaid','afghanistan',210,0);
/*!40000 ALTER TABLE `player_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 10:11:54
