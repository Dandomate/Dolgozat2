-- MySQL dump 10.13  Distrib 5.6.20, for Win32 (x86)
--
-- Host: localhost    Database: dolgozok
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `dolgozó`
--

DROP TABLE IF EXISTS `dolgozo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dolgozo` (
  `osztaly` smallint(6) DEFAULT NULL,
  `WID` smallint(6) DEFAULT NULL,
  `nev` varchar(50) DEFAULT NULL,
  `fizetes` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL,
  `munkakor` smallint(6) DEFAULT NULL,
  `fonok` smallint(6) DEFAULT NULL,
  `belepett` datetime DEFAULT NULL,
  `szuletett` datetime DEFAULT NULL,
  `vegzettseg` smallint(6) DEFAULT NULL,
  `irsz` int(11) DEFAULT NULL,
  `utca` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dolgozó`
--

LOCK TABLES `dolgozo` WRITE;
/*!40000 ALTER TABLE `dolgozo` DISABLE KEYS */;
INSERT INTO `dolgozo` VALUES (13,3102,'Balogh Virág',285000,0,3,3128,'1994-04-17 00:00:00','1969-02-02 00:00:00',6,4400,'Géza u. 2'),(11,3117,'Horváth Tibor',245000,0,3,3128,'1994-09-13 00:00:00','1969-10-05 00:00:00',6,1035,'Fejedelem u. 84/a'),(11,3128,'Sas Pál',500000,0,5,NULL,'1994-01-26 00:00:00','1969-03-05 00:00:00',6,4400,'Kilátó u. 27'),(11,3157,'Bodnár Béla',13000,0,1,3117,'1994-03-07 00:00:00','1970-10-24 00:00:00',5,1011,'Kérész u. 5.'),(12,3164,'Kiss Borbála',300000,0,4,3288,'1994-10-03 00:00:00','1965-04-01 00:00:00',6,4025,'Pet?fi Sándor u. 45.'),(13,3181,'Nagy Géza',125000,95000,2,3102,'1993-07-01 00:00:00','1972-09-06 00:00:00',4,4400,'Margaréta u. 7.'),(13,3194,'Vén Anna',150000,10000,2,3102,'1994-08-12 00:00:00','1975-06-04 00:00:00',4,4400,'Rétes u. 19.'),(12,3204,'Boros Zoltán',300000,0,4,3288,'1994-01-10 00:00:00','1973-05-16 00:00:00',7,4027,'Széplaki u. 34.'),(13,3206,'Csapó Pál',95000,0,1,3102,'1993-05-18 00:00:00','1971-12-24 00:00:00',5,4400,'Arany János 15.'),(12,3224,'Fazekas Judit',110000,0,1,3204,'1994-04-01 00:00:00','1970-11-05 00:00:00',5,4027,'Libakert u. 8'),(12,3247,'Szabó Tímár',80000,0,1,3164,'1993-03-12 00:00:00','1964-05-01 00:00:00',6,4400,'Kossuth u. 14'),(13,3249,'Tímár Zsolt',160000,70000,2,3102,'1993-08-03 00:00:00','1959-12-06 00:00:00',5,4400,'Körte u. 3'),(13,3283,'Béres László',125000,20000,2,3102,'1994-03-26 00:00:00','1970-06-17 00:00:00',5,4400,'Kert u. 17'),(12,3288,'Pintér Balázs',297500,0,3,3128,'1993-11-05 00:00:00','1967-05-13 00:00:00',6,4010,'Csapó u. 5');
/*!40000 ALTER TABLE `dolgozo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fizetesikat`
--

DROP TABLE IF EXISTS `fizetesikat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fizetesikat` (
  `fiz_kat` smallint(6) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fizetesikat`
--

LOCK TABLES `fizetesikat` WRITE;
/*!40000 ALTER TABLE `fizetesikat` DISABLE KEYS */;
INSERT INTO `fizetesikat` VALUES (1,0,70000),(2,70001,95000),(3,95001,130000),(4,130001,200000),(5,200001,1000000),(6,1000001,2500000),(7,2500001,100000000);
/*!40000 ALTER TABLE `fizetesikat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irányítószám`
--

DROP TABLE IF EXISTS `iranyitoszam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iranyitoszam` (
  `irsz` smallint(6) DEFAULT NULL,
  `telepules` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irányítószám`
--

LOCK TABLES `iranyitoszam` WRITE;
/*!40000 ALTER TABLE `iranyitoszam` DISABLE KEYS */;
INSERT INTO `iranyitoszam` VALUES (1011,'Budapest'),(1035,'Budapest'),(1103,'Budapest'),(1107,'Budapest'),(4010,'Debrecen'),(4025,'Debrecen'),(4027,'Debrecen'),(4300,'Nyírbátor'),(4400,'Nyíregyháza');
/*!40000 ALTER TABLE `iranyitoszam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `munkakör`
--

DROP TABLE IF EXISTS `munkakor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `munkakor` (
  `m_kod` int(11) DEFAULT NULL,
  `munkakor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `munkakör`
--

LOCK TABLES `munkakor` WRITE;
/*!40000 ALTER TABLE `munkakor` DISABLE KEYS */;
INSERT INTO `munkakor` VALUES (1,'Tisztvisel?'),(2,'Eladó'),(3,'Ügyvezet?'),(4,'Fejleszt?'),(5,'Elnök');
/*!40000 ALTER TABLE `munkakor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osztály`
--

DROP TABLE IF EXISTS `osztaly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osztaly` (
  `o_azon` int(11) DEFAULT NULL,
  `o_nev` varchar(50) DEFAULT NULL,
  `o_irsz` int(11) DEFAULT NULL,
  `o_utca` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osztály`
--

LOCK TABLES `osztaly` WRITE;
/*!40000 ALTER TABLE `osztaly` DISABLE KEYS */;
INSERT INTO `osztaly` VALUES (11,'Értékesítés',1103,'Népliget 3'),(12,'Fejlesztés',4027,'Dózsa Gy. U. 25.'),(13,'Gyártás',4400,'Tünde u. 103.'),(14,'Könyvelés',1107,'Almássy u. 107.');
/*!40000 ALTER TABLE `osztaly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `végzettség`
--

DROP TABLE IF EXISTS `vegzettseg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vegzettseg` (
  `vegz_kod` smallint(6) DEFAULT NULL,
  `Vegzettseg` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `végzettség`
--

LOCK TABLES `vegzettseg` WRITE;
/*!40000 ALTER TABLE `vegzettseg` DISABLE KEYS */;
INSERT INTO `vegzettseg` VALUES (1,'nincs'),(2,'álltalános iskola'),(3,'szakmunkás'),(4,'érettségi'),(5,'f?iskola'),(6,'egyetem'),(7,'több diplomás');
/*!40000 ALTER TABLE `vegzettseg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-09 10:29:21
