CREATE DATABASE  IF NOT EXISTS `blogs` /*!40100 DEFAULT CHARACTER SET big5 */;
USE `blogs`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: blogs
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB-1~jessie

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
-- Table structure for table `blogPosts`
--

DROP TABLE IF EXISTS `blogposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogposts` (
  `blog_post_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_title` varchar(45) NOT NULL,
  `blog_post_content` mediumtext NOT NULL,
  `blog_post_date_entered` datetime NOT NULL,
  `blog_post_blog_id` int(11) NOT NULL,
  `POSITION` int(11) DEFAULT NULL,
  PRIMARY KEY (`blog_post_id`),
  KEY `BLOG_ID_KEY_idx` (`blog_post_blog_id`),
  CONSTRAINT `blog_id` FOREIGN KEY (`blog_post_blog_id`) REFERENCES `blogs` (`blog_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogPosts`
--

LOCK TABLES `blogPosts` WRITE;
/*!40000 ALTER TABLE `blogPosts` DISABLE KEYS */;
INSERT INTO `blogPosts` VALUES (3,'new blog post','new Post','2016-12-10 23:07:27',14,0),(4,'new blog post','new Post','2016-12-10 23:08:25',15,0),(5,'from postman','new Post from postman','2016-12-17 23:38:26',1,0),(6,'from postman','new Post from postman','2016-12-17 23:43:22',1,1),(7,'from postman','new Post from postman','2016-12-18 01:41:19',1,2),(8,'from postman','new Post from postman22','2016-12-18 21:13:41',1,3),(9,'from postman','new Post from postman22','2016-12-18 21:36:15',1,4),(10,'a little genius from Le-Oui','My genius insight','2016-12-18 21:42:54',1,5),(11,'a little genius from Le-Oui','My genius insight','2016-12-18 22:14:24',1,6),(12,'a little genius from Le-Oui','My genius insight','2016-12-18 22:18:54',1,7),(13,'a little genius from Le-Oui22','My genius insight0122','2016-12-18 22:24:06',1,8),(14,'a little genius from Le-Oui22','My genius insight0122 - test','2016-12-18 22:31:28',1,9),(15,'a little genius from Le-Oui22','My genius insight0122 - test','2016-12-18 22:40:25',1,10),(16,'a little genius fr','My genius insight0122 - test','2016-12-18 22:51:27',1,11),(17,'a little genius fr','My genius insight0122 - test','2016-12-20 21:28:58',1,12),(18,'a little genius fr','My genius insight0122 - test','2016-12-20 21:31:51',1,13),(19,'a little genius fr','My genius insight0122 - test','2016-12-20 21:37:57',1,14),(20,'a little genius fr','My genius insight0122 - test','2016-12-21 22:24:40',1,15),(21,'a little genius fr','My genius insight0122 - test','2016-12-21 23:47:09',1,16),(22,'some title','`my test` Is my Test','2016-12-23 00:23:41',1,17);
/*!40000 ALTER TABLE `blogPosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(45) NOT NULL,
  `blog_owner` int(11) NOT NULL,
  `blog_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `id_idx` (`blog_owner`),
  CONSTRAINT `id` FOREIGN KEY (`blog_owner`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Test',1,'some more'),(2,'Test',1,'some more'),(3,'Test22',1,'some more23'),(6,'Test221',1,'some more231'),(14,'Test-Sat Dec 10 23:07:27 CST 2016',1,'some more231'),(15,'Test-Sat Dec 10 23:08:25 CST 2016',1,'some more231');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Louis','Ukiri','louisukiri@gmail.com'),(2,NULL,NULL,'test2@test.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-02 12:37:27
