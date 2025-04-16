-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.21
create database project;
use project;
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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `id` int DEFAULT NULL,
  `name_of_artist` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Neha kakkar'),(2,'Vishal Shekar'),(3,'arijit singh'),(4,'Monali Thakur'),(5,'Badshah'),(6,'Guru Randhawa'),(7,'Diljit Dosanjh'),(8,'Atif Aslam'),(9,'Sunidhi Chauhan'),(10,'A.R Rahman'),(11,'Arif Lohar'),(12,'Kavita Krishnamurthy'),(13,'Osman Mir'),(14,'Shreya Ghoshal'),(15,'Bulleh Shah'),(16,'kishor kumar'),(17,'Suman Sridhar'),(18,'Mukesh'),(19,'Hemant Kumar'),(20,'Lata Mangeshkar'),(21,'Mohammed Rafi');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Pop'),(2,'Classical'),(3,'Jazz'),(4,'Folk'),(5,'Punjabi');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hits`
--

DROP TABLE IF EXISTS `hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hits` (
  `s_no` int DEFAULT NULL,
  `song_name` varchar(20) DEFAULT NULL,
  `song_rank` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hits`
--

LOCK TABLES `hits` WRITE;
/*!40000 ALTER TABLE `hits` DISABLE KEYS */;
INSERT INTO `hits` VALUES (2,'Mile ho tum humko',12),(12,'High rated gabru',14),(13,'Lahore',19),(18,'Dilbaro',23),(3,'Swag se swagat',22),(7,'Cham cham',25),(11,'kala chashma',34),(17,'Dil diya gallan',37),(4,'Nashe si chad gyi',43),(5,'Galti se mistake',52),(16,'Ve mahi',94),(14,'Laembadgini',154),(8,'Mercy',212);
/*!40000 ALTER TABLE `hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preview`
--

DROP TABLE IF EXISTS `preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preview` (
  `S_no` int DEFAULT NULL,
  `name_of_song` varchar(35) DEFAULT NULL,
  `Artist` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preview`
--

LOCK TABLES `preview` WRITE;
/*!40000 ALTER TABLE `preview` DISABLE KEYS */;
INSERT INTO `preview` VALUES (1,'Dilbar','Neha Kakkar'),(2,'Mile ho tum humko','Neha Kakkar'),(3,'swag se swagat','Vishal Shekar'),(4,'nashe si chad gayi','Arijit Singh'),(5,'galti se mistake','Arijit Singh'),(6,'First class','Arijit Singh'),(7,'Cham cham','Monali Thakur'),(8,'Mercy','Badshah'),(9,'abhi to party shuru hui hai','Badshah'),(10,'Lalala','Neha Kakkar'),(11,'kala chashma','Neha Kakkar'),(12,'high rated gabru','Guru Randhawa'),(13,'Lahore','Guru Randhawa'),(14,'Laembadgini','Diljit Dosanjh'),(15,'Ek kudi','Diljit Dosanjh'),(16,'Ve Mahi','Arijit Singh'),(17,'Dil Diyan Gallan','Atif Aslam'),(18,'Dilbaro','Sunidhi Chauhan'),(19,'Genda Phool','A.R Rahman'),(20,'Jugni','Arif Lohar'),(21,'Nimbooda','Kavita Krishnamurthy'),(22,'Mor Bani Thanghat Kare','Osman Mir'),(23,'Pinga','Shreya Ghoshal'),(24,'Dama dam mast kalandar','Bulleh Shah'),(25,'girls like to swing','sunidhi chauhan'),(26,'Ek Ladki Bheegi Bhaagi Si','kishor kumar'),(27,'Muskaanein Jhooti Hai','Suman Sridhar'),(28,'Aise Na dekho','A.R Rahman'),(29,'Kaisi Paheli Zindgani','Sunidhi Chauhan'),(30,'Kabhi Kabhi','A.R Rahman'),(31,'Mera joota hai japani ','Mukesh'),(32,'kisi ki muskurahaton','Mukesh'),(33,'hai apna dil to awara','Hemant Kumar'),(34,'pyar kiya to darna kya','Lata Mangeshkar'),(35,'Abhi na jao','Mohammed Rafi'),(36,'Gaata Rhe dil','kishor kumar'),(37,'yeh chand sa roshan chehra','Mohammed Rafi'),(38,'mere sapno ki rani','Kishor kumar');
/*!40000 ALTER TABLE `preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `S_no` int DEFAULT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),(11,10),(12,10),(13,10),(14,10),(15,10),(16,18),(17,10),(18,10),(19,10),(20,10),(21,10),(21,10),(22,10),(23,10),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),(31,10),(32,10),(33,10),(34,10),(35,10),(36,10),(37,10),(38,10);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_gerne`
--

DROP TABLE IF EXISTS `sub_gerne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_gerne` (
  `parent_gerne` int DEFAULT NULL,
  `name_of_song` varchar(30) DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `s_no` int DEFAULT NULL,
  KEY `parent_gerne` (`parent_gerne`),
  CONSTRAINT `sub_gerne_ibfk_1` FOREIGN KEY (`parent_gerne`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_gerne`
--

LOCK TABLES `sub_gerne` WRITE;
/*!40000 ALTER TABLE `sub_gerne` DISABLE KEYS */;
INSERT INTO `sub_gerne` VALUES (1,'dilbar',1,1),(1,'mile ho tum hamko',2,2),(1,'swag se swagat',1,3),(1,'nashe si chad gayi',3,4),(1,'galti se mistake',3,5),(1,'first class',3,6),(1,'Cham cham',4,7),(1,'mercy',5,8),(1,'abhi to party shuru hui hai',5,9),(5,'lalala',1,10),(5,'kala chashma',1,11),(5,'high rated gabru',6,12),(5,'lahore',6,13),(5,'laembadgini',7,14),(5,'ek kudi',7,15),(5,'ve mahi',3,16),(5,'dil diyan gallan',8,17),(4,'dilbaro',9,18),(4,'genda phool',10,19),(4,'jugni',11,20),(4,'nimbooda',12,21),(4,'Mor Bani Thanghat Kare',13,22),(4,'pinga',14,23),(4,'dama dam mast kalandar',15,24),(3,'girls like to swing',9,25),(3,'ek ladki bheegi bhaagi si',16,26),(3,'muskaanein jhooti hai',17,27),(3,'aise na dekho',10,28),(3,'kaisi paheli zindgani',9,29),(3,'Kabhi Kabhi',10,30),(2,'mera joota hai japani',18,31),(2,'kisi ki muskurahaton',18,32),(2,'hai apna dil to awara',19,33),(2,'pyar kiya to darna kya',20,34),(2,'abhi na jao',21,35),(2,'gaata rahe dil',16,36),(2,'yeh chand sa roshan chehra',21,37),(2,'mere sapno ki rani',16,38);
/*!40000 ALTER TABLE `sub_gerne` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 11:46:37
