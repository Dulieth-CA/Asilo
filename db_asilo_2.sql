CREATE DATABASE  IF NOT EXISTS `asilo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `asilo`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: asilo
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacen` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `caducidad` date NOT NULL,
  `categoria_id_categoria` int(11) NOT NULL,
  `unidad_medida_id_unidad_medida` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio_a_cliente_por_unidad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_almacen_categoria1_idx` (`categoria_id_categoria`),
  KEY `fk_almacen_unidad_medida1_idx` (`unidad_medida_id_unidad_medida`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
INSERT INTO `almacen` VALUES (1,'Respirador','0004-02-03',4,10,1,'200'),(2,'Jeringas','0004-02-04',4,10,5,'10'),(3,'Pañales','0004-02-05',4,10,5,'15'),(4,'Sondas','0004-02-06',4,10,1,'200'),(5,'Sangre','0004-02-07',4,5,1,'500'),(6,'Ambulancia','0004-02-08',2,10,1,'300'),(7,'Cuarto','0004-02-09',2,10,1,'400'),(8,'Camilla','0004-02-10',2,10,1,'150'),(9,'Tapabocas','0004-02-11',4,10,2,'5'),(10,'Ropa','0004-02-12',2,10,3,'150');
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ancianos`
--

DROP TABLE IF EXISTS `ancianos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ancianos` (
  `id_anciano` int(11) NOT NULL AUTO_INCREMENT,
  `txt_nombre` varchar(50) NOT NULL,
  `txt_apellodo` varchar(50) NOT NULL,
  `txt_apellidom` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` varchar(50) NOT NULL,
  `com_sexo` varchar(50) NOT NULL,
  `com_identifica` varchar(50) NOT NULL,
  `com_sociable` varchar(50) NOT NULL,
  `com_inter_exter` varchar(50) NOT NULL,
  `txt_nombre_clien` varchar(50) NOT NULL,
  `txt_apellido_clien` varchar(50) NOT NULL,
  `txt_apelli_mat_clien` varchar(50) DEFAULT NULL,
  `txt_telefono_clien` varchar(50) NOT NULL,
  `txt_compr_domi_clien` varchar(50) NOT NULL,
  `txt_identi_ofici_client` varchar(50) NOT NULL,
  `com_relacion_clien` varchar(50) NOT NULL,
  `txt_proibiciones` varchar(50) NOT NULL,
  `txt_estado_salud` varchar(50) NOT NULL,
  `com_id_doctor` varchar(45) DEFAULT NULL,
  `com_id_terapeuta` varchar(45) DEFAULT NULL,
  `com_id_enfermera` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id_anciano`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ancianos`
--

LOCK TABLES `ancianos` WRITE;
/*!40000 ALTER TABLE `ancianos` DISABLE KEYS */;
INSERT INTO `ancianos` VALUES (1,'ISRAEL','MUÑOZ','URIAS','VIERNES, 15 DE ENERO DE 2016','MASCULINO','CARTA DE NATURALIZACIÓN','SI','EXTERNO','EDMUNCO','MUÑOZ','urias','6685454346','LUZ','CREDENCIAL PARA JUBILADOS Y PENSIONADOS','HIJO','NADA','BUENO','Aurora Urias Castillo','Alicia Olivia Peláez Jaume','Josefina Vasquez Mota','ACTIVADO'),(2,'AURORA','URIAS','CASTILLO','VIERNES, 15 DE ENERO DE 2016','MASCULINO','CARTILLA DEL SERVICIO MILITAR NACIONAL LIBERADA','SI','INTERNO','E','WW','wewe','E','WE','CREDENCIAL DEL INAPAM','HIJA','E','R','Aurora Urias Castillo','Abel Braulio Dorens Viera','Alejandra Garcia','ACTIVADO'),(3,'DAVID','GARCIA','SOLIS','VIERNES, 15 DE ENERO DE 2016','MASCULINO','CARTILLA DEL SERVICIO MILITAR NACIONAL LIBERADA','NO','EXTERNO','ISRAEL','MUÑOZ','URIAS','88888','LA CASA','CREDENCIAL DEL INAPAM','HERMANO','NA HAY','EL PACIENTE ENTA EN BIEN ESTADO','Israel Muñoz Urias','Alfonsina Elisa Casal Moreira','Alejandra Garcia','ACTIVADO'),(4,'W','W','W','E','FEMENINO','CARTILLA DEL SERVICIO MILITAR NACIONAL LIBERADA','SI','INTERNO','WM','W','w','W','W','CREDENCIAL DEL INAPAM','HIJO','W','WMM','Israel Muñoz Urias','Abel Braulio Dorens Viera','Alejandra Garcia','ACTIVADO');
/*!40000 ALTER TABLE `ancianos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atenciones`
--

DROP TABLE IF EXISTS `atenciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atenciones` (
  `id_atenciones` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_atenciones`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atenciones`
--

LOCK TABLES `atenciones` WRITE;
/*!40000 ALTER TABLE `atenciones` DISABLE KEYS */;
INSERT INTO `atenciones` VALUES (1,'Toma de Presión Arterial','30'),(2,'Lavado Ótico (De Oido)','30'),(3,'Aplicación de Inyecciones','20'),(4,'Curación Menor','23'),(5,'Curación Mayor','46'),(6,'Prueba para Detectar Niveles de Azúcar','54'),(7,'Retiro de Puntos','100'),(8,'Retiro de Sondas','100'),(9,'Extracción de Uña Enterrada (Onicocriptosis)','300'),(10,'Nebulizaciones','200');
/*!40000 ALTER TABLE `atenciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_alergia_alimento`
--

DROP TABLE IF EXISTS `aux_alergia_alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_alergia_alimento` (
  `id_ancianos` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_alergia_alimento`
--

LOCK TABLES `aux_alergia_alimento` WRITE;
/*!40000 ALTER TABLE `aux_alergia_alimento` DISABLE KEYS */;
INSERT INTO `aux_alergia_alimento` VALUES (1,'Almendra',7),(1,'Harina De Guisante Partido',8),(1,'Almeja',10),(0,'Alubias',16),(1,'Almendra',17),(1,'Ajo',19),(0,'Almendra',20),(1,'Almeja',21),(1,'Aceite De Soja',22),(0,'Almeja',23),(2,'Almendra',26),(2,'Almorta (Lathyrus Sativus),',27),(3,'Rábano',28),(3,'Almorta (Lathyrus Sativus),',29),(1,'Alcaravea',30),(4,'Alfalfa',31),(4,'Alfalfa',32),(4,'Whisky',33),(4,'Almeja',34),(4,'Amapola, Semillas De (Papaver Somniferum)',35);
/*!40000 ALTER TABLE `aux_alergia_alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_alergias_medicamento`
--

DROP TABLE IF EXISTS `aux_alergias_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_alergias_medicamento` (
  `id_anciano` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_alergias_medicamento`
--

LOCK TABLES `aux_alergias_medicamento` WRITE;
/*!40000 ALTER TABLE `aux_alergias_medicamento` DISABLE KEYS */;
INSERT INTO `aux_alergias_medicamento` VALUES (1,'Fexofenadina y Pseudoefedrina (Oral)',8),(1,'Econazol (Tópico)',10),(1,'Acetaminofeno (Rectal)',11),(1,'Aceite de Silicona 5000 Centistokes (Oftálmic',13),(1,'Alatrofloxacina (Por Inyección)',20),(1,'Alcaloides de Rauwolfia y Diuréticos Tiazídic',21),(0,'Agentes Antidiabéticos, Sulfonilurea (Orales)',24),(1,'Alcaloides de Belladona y Barbitúricos (Orale',25),(1,'Adapaleno (Tópico)',26),(0,'Alcaloides de Belladona y Barbitúricos (Orale',27),(0,'Alcaloides de Rauwolfia (Orales)',28),(2,'Albendazol (Oral)',29),(2,'Alatrofloxacina (Por Inyección)',30),(2,'Alcaloides de Rauwolfia (Orales)',31),(2,'Albendazol (Oral)',32),(3,'rr',33),(3,'Alcaloides de Rauwolfia y Diuréticos Tiazídic',34),(1,'Albendazol (Oral)',35),(4,'Albendazol (Oral)',36),(4,'Albendazol (Oral)',37),(4,'w',38),(4,'Alcaloides de Rauwolfia y Diuréticos Tiazídic',39),(2,'Alcaloides de Rauwolfia y Diuréticos Tiazídic',40);
/*!40000 ALTER TABLE `aux_alergias_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_cosina`
--

DROP TABLE IF EXISTS `aux_cosina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_cosina` (
  `almacen_id_producto` int(11) NOT NULL,
  `cosina_id_platillo` int(11) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`),
  KEY `fk_table1_almacen1_idx` (`almacen_id_producto`),
  KEY `fk_table1_cosina1_idx` (`cosina_id_platillo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_cosina`
--

LOCK TABLES `aux_cosina` WRITE;
/*!40000 ALTER TABLE `aux_cosina` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_cosina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_discapacidades`
--

DROP TABLE IF EXISTS `aux_discapacidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_discapacidades` (
  `id_anciano` int(11) unsigned NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_discapacidades`
--

LOCK TABLES `aux_discapacidades` WRITE;
/*!40000 ALTER TABLE `aux_discapacidades` DISABLE KEYS */;
INSERT INTO `aux_discapacidades` VALUES (0,'Accidente (lesión sin intención)',25),(0,'Alzheimer/Enfermedad',27),(0,'Alcoholismo y drogadicción',28),(0,'Acondroplasia',29),(2,'Amputación',32),(3,'Artritis',39),(3,'Acondroplasia',40),(3,'Accidente (lesión sin intención)',41),(1,'Alzheimer/Enfermedad',44),(1,'Accidente (lesión sin intención)',45),(4,'Alcoholismo y drogadicción',46),(4,'Alcoholismo y drogadicción',47),(4,'w',48),(4,'Acondroplasia',49);
/*!40000 ALTER TABLE `aux_discapacidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_doctor`
--

DROP TABLE IF EXISTS `aux_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_doctor` (
  `id_anciano` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `conse` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_doctor`
--

LOCK TABLES `aux_doctor` WRITE;
/*!40000 ALTER TABLE `aux_doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_enfermedades`
--

DROP TABLE IF EXISTS `aux_enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_enfermedades` (
  `id_anciano` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`),
  KEY `fk_table1_ancianos1_idx` (`id_anciano`),
  KEY `fk_table1_enfermedades1_idx` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_enfermedades`
--

LOCK TABLES `aux_enfermedades` WRITE;
/*!40000 ALTER TABLE `aux_enfermedades` DISABLE KEYS */;
INSERT INTO `aux_enfermedades` VALUES (1,'Astigmatismo',21),(1,'Edema pulmonar',22),(1,'Ataxia',23),(1,'Astigmatismo',24),(1,'Ascitis',25),(0,'Asma',27),(0,'Ascitis',29),(2,'Atrofia vaginal',34),(3,'Rabia',35),(3,'Astigmatismo',36),(1,'Astigmatismo',37),(4,'Ascitis',38),(4,'Ascitis',39),(4,'w',40),(4,'Astigmatismo',41);
/*!40000 ALTER TABLE `aux_enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_maquinaria`
--

DROP TABLE IF EXISTS `aux_maquinaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_maquinaria` (
  `id_anciano` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_maquinaria`
--

LOCK TABLES `aux_maquinaria` WRITE;
/*!40000 ALTER TABLE `aux_maquinaria` DISABLE KEYS */;
INSERT INTO `aux_maquinaria` VALUES (1,'Jeringas',9),(1,'Jeringas',11),(1,'Jeringas',13),(1,'Respirador',14),(3,'Respirador',15),(3,'Jeringas',16),(1,'Pañales',17);
/*!40000 ALTER TABLE `aux_maquinaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_medicamento`
--

DROP TABLE IF EXISTS `aux_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_medicamento` (
  `id_anciano` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `hora_medicamento` int(11) NOT NULL,
  `intrucciones` varchar(45) NOT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_medicamento`
--

LOCK TABLES `aux_medicamento` WRITE;
/*!40000 ALTER TABLE `aux_medicamento` DISABLE KEYS */;
INSERT INTO `aux_medicamento` VALUES (1,'Aceite de Silicona 5000 Centistokes (Oftálmic',0,'w',11),(3,'Agentes Colecistográficos (Diagnóstico -- Ora',20,'2',28),(3,'Agentes Antitiroideos (Orales)',0,'m',29),(2,'BCG (Mucosa-Local)',20,'',30),(3,'Agentes Antitiroideos (Orales)',19,'',31),(2,'Agentes Antitiroideos (Orales)',19,'',32),(3,'Agentes Antitiroideos (Orales)',21,'',33);
/*!40000 ALTER TABLE `aux_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_terapia_terapeuta`
--

DROP TABLE IF EXISTS `aux_terapia_terapeuta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_terapia_terapeuta` (
  `id_terapeuta` int(11) NOT NULL,
  `id_terapia` int(11) NOT NULL,
  `conce` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conce`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_terapia_terapeuta`
--

LOCK TABLES `aux_terapia_terapeuta` WRITE;
/*!40000 ALTER TABLE `aux_terapia_terapeuta` DISABLE KEYS */;
INSERT INTO `aux_terapia_terapeuta` VALUES (1,1,1),(4,2,2),(3,3,3),(4,4,4),(4,5,5),(3,6,6),(5,7,7),(2,8,8),(2,9,9),(1,10,10);
/*!40000 ALTER TABLE `aux_terapia_terapeuta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_terapias`
--

DROP TABLE IF EXISTS `aux_terapias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_terapias` (
  `id_ancianos` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `conse` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conse`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_terapias`
--

LOCK TABLES `aux_terapias` WRITE;
/*!40000 ALTER TABLE `aux_terapias` DISABLE KEYS */;
INSERT INTO `aux_terapias` VALUES (3,'Estimulación Cognitiva',6),(3,'Activación Y Terapia Física',7),(3,'Estimulación Cognitiva',8),(1,'Actividades Lúdicas',9);
/*!40000 ALTER TABLE `aux_terapias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caja` (
  `id_caja` int(11) NOT NULL AUTO_INCREMENT,
  `ate_especial` varchar(45) DEFAULT NULL,
  `id_medicamento` varchar(45) DEFAULT NULL,
  `hora_medica` varchar(45) DEFAULT NULL,
  `id_instru_medica` varchar(45) DEFAULT NULL,
  `id_uso_maquinaria` varchar(45) DEFAULT NULL,
  `inter_exter` varchar(45) DEFAULT NULL,
  `id_enfermera` varchar(45) DEFAULT NULL,
  `id_doctor` varchar(45) DEFAULT NULL,
  `id_terapeuta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Alimento elaborados'),(2,'Infraestructura y maquinaria'),(3,'Ingredientes de alimento'),(4,'Material medico'),(5,'Medicamento');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cosina`
--

DROP TABLE IF EXISTS `cosina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cosina` (
  `id_platillo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `ingrediente` varchar(45) NOT NULL,
  `cantidad` double NOT NULL,
  `persona_num` int(11) NOT NULL,
  `id_enfermedad` int(11) NOT NULL,
  PRIMARY KEY (`id_platillo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosina`
--

LOCK TABLES `cosina` WRITE;
/*!40000 ALTER TABLE `cosina` DISABLE KEYS */;
/*!40000 ALTER TABLE `cosina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discapacidades`
--

DROP TABLE IF EXISTS `discapacidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discapacidades` (
  `id_discapacidades` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_discapacidades`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discapacidades`
--

LOCK TABLES `discapacidades` WRITE;
/*!40000 ALTER TABLE `discapacidades` DISABLE KEYS */;
INSERT INTO `discapacidades` VALUES (1,'Accidente (lesión sin intención)'),(2,'Acondroplasia'),(3,'Alcoholismo y drogadicción'),(4,'Alzheimer/Enfermedad'),(5,'Amputación'),(6,'Artritis'),(7,'Autismo'),(8,'Cáncer'),(9,'Celíaca/Enfermedad'),(10,'Colitis ulcerativa'),(11,'Corazón/Enfermedad'),(12,'Crohn/Enfermedad'),(13,'Charcot-Marie-Tooth/Enfermedad'),(14,'Déficit de la atención con hiperactividad'),(15,'Demencia'),(16,'Depresión'),(17,'Derrame cerebral'),(18,'Desarrollo tardío del habla y lenguaje'),(19,'Diabetes'),(20,'Discapacidad de aprendizaje'),(21,'Discapacidad intellectual'),(22,'Enfermedades raras'),(23,'Epilepsia'),(24,'Esclerodermia'),(25,'Esclerosis múltiple'),(26,'Esclerosis tuberosa'),(27,'Espina bifida'),(28,'Esquizofrenia'),(29,'Fibromialgia'),(30,'Fibrosis quística'),(31,'Fobia social'),(32,'Huntington/Enfermedad'),(33,'Lesión de la medula espinal'),(34,'Lesión traumática de cerebro'),(35,'Lesiones de quemaduras'),(36,'Lupus'),(37,'Narcolepsia'),(38,'Parálisis cerebral'),(39,'Perdida de la audición y sordera'),(40,'Polio y el síndrome de la pospoliomielitis'),(41,'Problemas de visión y ceguera'),(42,'Psoriasis'),(43,'Pulmonar obstructiva crónica/Enfermedad'),(44,'Riñón/Enfermedad'),(45,'Síndrome alcohólico fetal'),(46,'Síndrome de Asperger'),(47,'Síndrome de Down'),(48,'Síndrome de fatiga crónica'),(49,'Síndrome de Turner'),(50,'Síndrome de Williams'),(51,'Tiroides/Enfermedad'),(52,'Trastorno bipolar'),(53,'Trastornos de ansiedad generalizada'),(54,'Trastornos de comportamiento obsesivo compuls'),(55,'Trastornos de estrés postraumático'),(56,'Trastornos de la conducta alimentaria'),(57,'Trastornos de pánico'),(58,'Trastornos disociativos'),(59,'Trastornos generalizados del desarrollo'),(60,'VIH/SIDA');
/*!40000 ALTER TABLE `discapacidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `id_doctor` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_doctor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Israel Muñoz Urias'),(2,'Aurora Urias Castillo'),(3,'Edmundo Muñoz Urias');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedades` (
  `id_enfermedades` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_enfermedades`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedades`
--

LOCK TABLES `enfermedades` WRITE;
/*!40000 ALTER TABLE `enfermedades` DISABLE KEYS */;
INSERT INTO `enfermedades` VALUES (1,'Abrasión corneal'),(5,'Acné'),(6,'Aftas bucales'),(7,'Albinismo'),(8,'Alcoholismo'),(9,'Alergia'),(10,'Alergia al níquel'),(11,'Alergia al sol'),(12,'Alzhéimer'),(13,'Amenorrea'),(14,'Ampollas'),(15,'Anemia'),(16,'Aneurisma'),(17,'Angina de pecho'),(18,'Anisakiasis'),(19,'Anorexia'),(20,'Ansiedad'),(21,'Apendicitis'),(22,'Apnea del sueño'),(23,'Arritmia'),(24,'Arteriosclerosis'),(25,'Artritis reumatoide'),(26,'Artrosis'),(27,'Ascitis'),(28,'Asma'),(29,'Astigmatismo'),(30,'Ataxia'),(31,'Atragantamiento'),(32,'Atrofia vaginal'),(33,'Autismo'),(34,'Balanitis'),(35,'Bocio'),(36,'Botulismo'),(37,'Bronquiectasias'),(38,'Bronquiolitis obliterante'),(39,'Bronquitis'),(40,'Brucelosis'),(41,'Bruxismo'),(42,'Bulimia'),(43,'Campylobacter'),(44,'Cáncer'),(45,'Cáncer de cabeza y cuello'),(46,'Cáncer de colon'),(47,'Cáncer de cuello de útero'),(48,'Cáncer de esófago'),(49,'Cáncer de estómago'),(50,'Cáncer de hígado'),(51,'Cáncer de laringe'),(52,'Cáncer de mama'),(53,'Cáncer de ovario'),(54,'Cáncer de páncreas'),(55,'Cáncer de pene'),(56,'Cáncer de piel'),(57,'Cáncer de próstata'),(58,'Cáncer de pulmón'),(59,'Cáncer de riñón'),(60,'Cáncer de testículo'),(61,'Cáncer de tiroides'),(62,'Cáncer de vejiga'),(63,'Cáncer oral'),(64,'Cáncer óseo'),(65,'Candidiasis'),(66,'Carbunco'),(67,'Cataratas'),(68,'Catarro'),(69,'Celiaquía'),(70,'Chikungunya'),(71,'Ciática'),(72,'Cirrosis'),(73,'Cistitis'),(74,'Cólera'),(75,'Cólico nefrítico'),(76,'Colitis ulcerosa'),(77,'Colon irritable'),(78,'Congelamiento'),(79,'Congestión nasal'),(80,'Conjuntivitis'),(81,'Contusiones'),(82,'Corte de digestión'),(83,'Crisis de pánico'),(84,'Cuerpos extraños'),(85,'Daltonismo'),(86,'Déficit de la hormona del crecimiento'),(87,'Degeneración macular'),(88,'Demencia'),(89,'Dengue'),(90,'Depresión'),(91,'Dermatitis atópica'),(92,'Derrame ocular'),(93,'Diabetes'),(94,'Diabetes insípida'),(95,'Difteria'),(96,'Disfunción eréctil'),(97,'Dislexia'),(98,'Dismenorrea'),(99,'Dispepsia'),(100,'Distonía'),(101,'Distrofia muscular de Duchenne'),(102,'Diverticulosis'),(103,'Ébola'),(104,'Edema pulmonar'),(105,'Elefantiasis'),(106,'Encefalitis'),(107,'Endocarditis'),(108,'Endometriosis'),(109,'Enfermedad de Addison'),(110,'Enfermedad de Chagas'),(111,'Enfermedad de Crohn'),(112,'Enfermedad de Huntington'),(113,'Enfermedad de Kawasaki'),(114,'Enfermedad de La Peyronie'),(115,'Enfermedad de Paget'),(116,'Enfermedad de Wilson'),(117,'Enfermedad inflamatoria pélvica'),(118,'Enfermedades de Transmisión Sexual'),(119,'Enfermedades raras'),(120,'Epilepsia'),(121,'EPOC'),(122,'Esclerodermia'),(123,'Esclerosis lateral amiotrófica'),(124,'Esclerosis múltiple'),(125,'Escoliosis'),(126,'Esófago de Barrett'),(127,'Espondilitis anquilosante'),(128,'Esquizofrenia'),(129,'Esteatosis hepática'),(130,'Estrabismo'),(131,'Estreñimiento'),(132,'Eyaculación precoz'),(133,'Faringitis'),(134,'Fascitis plantar'),(135,'Fenilcetonuria'),(136,'Fibrilación auricular'),(137,'Fibromialgia'),(138,'Fibrosis quística'),(139,'Fiebre amarilla'),(140,'Fístula anal'),(141,'Fractura de dedo'),(142,'Fractura nasal'),(143,'Galactorrea'),(144,'Gastritis'),(145,'Gastroenteritis'),(146,'Glaucoma'),(147,'Golpe de calor'),(148,'Gonorrea'),(149,'Gota'),(150,'Gripe'),(151,'Hemocromatosis'),(152,'Hemofilia'),(153,'Hemorragia nasal'),(154,'Hemorroides'),(155,'Hepatitis'),(156,'Heridas'),(157,'Hernia de hiato'),(158,'Hernia discal'),(159,'Hernia inguinal'),(160,'Herpes'),(161,'Herpes zóster'),(162,'Hiperactividad (TDAH)'),(163,'Hipercolesterolemia'),(164,'Hipermetropía'),(165,'Hiperplasia benigna de próstata'),(166,'Hipertensión arterial'),(167,'Hipertiroidismo'),(168,'Hipoacusia'),(169,'Hipocalcemia'),(170,'Hipoglucemia'),(171,'Hipotensión arterial'),(172,'Hipotermia'),(173,'Hipotiroidismo'),(174,'Ictus'),(175,'Impétigo'),(176,'Incendios'),(177,'Incontinencia urinaria'),(178,'Infarto de miocardio'),(179,'Infecciones urinarias'),(180,'Insomnio'),(181,'Insomnio familiar fatal'),(182,'Insuficiencia cardiaca'),(183,'Insuficiencia renal crónica'),(184,'Intoxicación etílica'),(185,'Intoxicación por monóxido de carbono'),(186,'Intoxicaciones'),(187,'Juanetes'),(188,'Ladillas'),(189,'Legionella'),(190,'Leishmaniasis'),(191,'Lepra'),(192,'Leptospirosis'),(193,'Lesiones maxilares'),(194,'Leucemia'),(195,'Lipodistrofia'),(196,'Lipotimia'),(197,'Listeriosis'),(198,'Litiasis biliar'),(199,'Lumbalgia'),(200,'Lupus'),(201,'Luxaciones'),(202,'Mal agudo de montaña'),(203,'Malaria'),(204,'Melanoma'),(205,'Melasma'),(206,'Meningitis'),(207,'Menopausia'),(208,'MERS'),(209,'Mesotelioma'),(210,'Miastenia gravis'),(211,'Migraña'),(212,'Miomatosis uterina'),(213,'Miopía'),(214,'Molusco contagioso'),(215,'Mononucleosis'),(216,'Mordeduras de animales'),(217,'Narcolepsia'),(218,'Neumonía'),(219,'Neuralgia del trigémino'),(220,'Neurofibromatosis'),(221,'Obesidad'),(222,'Obesidad infantil'),(223,'Ojo seco'),(224,'Oncocercosis'),(225,'Onicomicosis'),(226,'Orquitis'),(227,'Osteomalacia'),(228,'Osteomielitis'),(229,'Osteoporosis'),(230,'Otitis'),(231,'Palpitaciones cardíacas'),(232,'Pancreatitis'),(233,'Paperas'),(234,'Parálisis cerebral'),(235,'Párkinson'),(236,'Patologías benignas de mama'),(237,'Pericarditis'),(238,'Peritonitis'),(239,'Peste'),(240,'Pian'),(241,'Picaduras de insectos'),(242,'Pie de atleta'),(243,'Pielonefritis'),(244,'Policitemia vera'),(245,'Poliomielitis'),(246,'Pólipos uterinos'),(247,'Prediabetes'),(248,'Presbicia'),(249,'Prostatitis'),(250,'Psoriasis'),(251,'PTI (trombocitopenia inmune primaria)'),(252,'Quemaduras'),(253,'Rabia'),(254,'Raspaduras y laceraciones'),(255,'Reacciones alérgicas a medicamentos'),(256,'Reanimación cardiopulmonar'),(257,'Reflujo gastroesofágico'),(258,'Rescate en montaña'),(259,'Retinosis pigmentaria'),(260,'Rinitis'),(261,'Rosácea'),(262,'Rubéola'),(263,'Salmonelosis'),(264,'Sarampión'),(265,'Sarcoidosis'),(266,'Sarna'),(267,'Sepsis'),(268,'Shigelosis'),(269,'Shock'),(270,'SIDA'),(271,'Sífilis'),(272,'Síndrome de Angelman'),(273,'Síndrome de Cushing'),(274,'Síndrome de Down'),(275,'Síndrome de Klinefelter'),(276,'Síndrome de Lynch'),(277,'Síndrome de Marfan'),(278,'Síndrome de Ovario Poliquístico (SOP)'),(279,'Síndrome de Patau'),(280,'Síndrome de piernas inquietas'),(281,'Síndrome de Rett'),(282,'Síndrome de Tourette'),(283,'Síndrome de Turner'),(284,'Síndrome de Williams'),(285,'Síndrome de X Frágil'),(286,'Síndrome del túnel carpiano'),(287,'Síndrome metabólico'),(288,'Sinusitis'),(289,'Sobredosis'),(290,'Talasemia'),(291,'Telangiectasias'),(292,'Tendinitis'),(293,'Terremotos'),(294,'Tétanos'),(295,'Tos ferina'),(296,'Toxoplasmosis'),(297,'Trastorno bipolar'),(298,'Trastorno obsesivo compulsivo'),(299,'Traumatismo craneal'),(300,'Tricograma capilar'),(301,'Tricomoniasis'),(302,'Tromboembolismo pulmonar'),(303,'Trombosis venosa'),(304,'Tuberculosis'),(305,'Tumores cerebrales'),(306,'Úlcera'),(307,'Uretritis'),(308,'Urticaria'),(309,'Uveítis'),(310,'Vaginitis'),(311,'Varicela'),(312,'Varices'),(313,'Varicocele'),(314,'Vértigo'),(315,'Virus del Nilo Occidental'),(316,'Virus Zika'),(317,'Vitíligo'),(318,'VPH');
/*!40000 ALTER TABLE `enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeras`
--

DROP TABLE IF EXISTS `enfermeras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermeras` (
  `id_enfermeras` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_enfermeras`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeras`
--

LOCK TABLES `enfermeras` WRITE;
/*!40000 ALTER TABLE `enfermeras` DISABLE KEYS */;
INSERT INTO `enfermeras` VALUES (1,'Alejandra Garcia'),(2,'Josefina Vasquez Mota'),(3,'Aurora Urias Castillo');
/*!40000 ALTER TABLE `enfermeras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `id_especialidades` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_especialidades`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'CHEF'),(2,'COCINERO'),(3,'DOCTOR'),(4,'ENFERMERO'),(5,'TERAPEUTA');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientes` (
  `id_ingredientes` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ingredientes`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'Acedera'),(2,'Aceite De Maíz'),(3,'Aceite De Oliva'),(4,'Aceite De Soja'),(5,'Aceituna'),(6,'Acelga'),(7,'Agave'),(8,'Agua'),(9,'Agua Gaseosa'),(10,'Agua Mineral'),(11,'Aguacate'),(12,'Aguacate Criollo'),(13,'Aguacate Has'),(14,'Ajo'),(15,'Ajonjolí'),(16,'Albahaca'),(17,'Albaricoque'),(18,'Alcachofa'),(19,'Alcaparra'),(20,'Alcaravea'),(21,'Alcoholes Fuertes'),(22,'Alfalfa'),(23,'Alfalfa Verde'),(24,'Algarroba'),(25,'Almeja'),(26,'Almendra'),(27,'Almorta (Lathyrus Sativus),'),(28,'Alubias'),(29,'Amapola, Semillas De (Papaver Somniferum)'),(30,'Ameo'),(31,'Anacardo'),(32,'Anchoa'),(33,'Anís'),(34,'Anís Estrellado'),(35,'Apio'),(36,'Arroz'),(37,'Arroz Palay'),(38,'Arroz Silvestre'),(39,'Atún'),(40,'Avellana'),(41,'Avena'),(42,'Avena Forrajera'),(43,'Avestruz'),(44,'Azafrán'),(45,'Bacalao'),(46,'Batata'),(47,'Berenjena'),(48,'Berro'),(49,'Betabel'),(50,'Bonito'),(51,'Boquerón'),(52,'Brecol (BRÓCOLI)'),(53,'Brócoli'),(54,'Bulgur'),(55,'Caballa'),(56,'Cacahuete'),(57,'Cacao'),(58,'Café Cereza'),(59,'Cafés'),(60,'Calabacín'),(61,'Calabaza'),(62,'Calabaza Semillas'),(63,'Calamar'),(64,'Caldo Vegetal Concentrado'),(65,'Caléndula'),(66,'Camarón'),(67,'Canela'),(68,'Caña'),(69,'Caña De Azúcar (Semilla)'),(70,'Capones'),(71,'Capulín'),(72,'Cardamomo'),(73,'Cardo'),(74,'Cártamo'),(75,'Castaña'),(76,'Cebada'),(77,'Cebada Grano'),(78,'Cebolla'),(79,'Cebolleta'),(80,'Cebollino'),(81,'Centeno'),(82,'Cereza'),(83,'Cerveza Sin Alcohol'),(84,'Cervezas'),(85,'Chabacano'),(86,'Champiñones'),(87,'Chayote'),(88,'Chícharo'),(89,'Chicharro'),(90,'Chicozapote'),(91,'Chile Habanero'),(92,'Chile Poblano'),(93,'Chile Verde'),(94,'Chirimoya'),(95,'Chufa'),(96,'Cigala'),(97,'Cilantro'),(98,'Cilantro (Coriandrum Sativum)'),(99,'Cinco Especias Chinas'),(100,'Ciruela'),(101,'Ciruela Amarilla'),(102,'Ciruela Roja'),(103,'Citronela'),(104,'Clavo'),(105,'Coco'),(106,'Col'),(107,'Cola'),(108,'Coles De Bruselas'),(109,'Coliflor'),(110,'Comino'),(111,'Copra'),(112,'Corvina'),(113,'Crisantemo'),(114,'Cúrcuma'),(115,'Curry, Hojas De (Chalcas Koenigii)'),(116,'Dátil'),(117,'Dorada'),(118,'Durazno'),(119,'Elote'),(120,'Endivia'),(121,'Enebro'),(122,'Eneldo (Anethum Graveolens)'),(123,'Escarola'),(124,'Espinaca'),(125,'Estragón (Artemisia Dracunculus), Dragoncillo'),(126,'Fécula De Patata'),(127,'Fenogreco'),(128,'Fideos'),(129,'Frambuesa'),(130,'Fresa'),(131,'Gallinas'),(132,'Gamba'),(133,'Garbanzo (Cicer Arietinum)'),(134,'Garbanzos'),(135,'Girasol, Semillas De (Helianthus Annuus)'),(136,'Gomasio'),(137,'Granada China'),(138,'Granada, Semilla De (Punica Granatum), Anarda'),(139,'Guanábana'),(140,'Guayaba'),(141,'Guindilla'),(142,'Guisante (Pisum Sativum)'),(143,'Haba Común (Vicia Faba)'),(144,'Harina De Garbanzos'),(145,'Harina De Guisante Partido'),(146,'Harina De Maíz'),(147,'Harina De Soja'),(148,'Helado'),(149,'Higo'),(150,'Hinojo'),(151,'Hinojo (Foeniculum Vulgare)'),(152,'Hongos'),(153,'Horchata'),(154,'Huevos : Clara, Yema.'),(155,'Jengibre'),(156,'Jícama'),(157,'Jitomate'),(158,'Judía (Phaseolus Vulgaris)'),(159,'Judía Azukin (Phaseolus Angularis)'),(160,'Judía De Egipto (Dolichos Lablab)'),(161,'Judía De Lima (Phaseolus Lunatus)'),(162,'Judía De Urd (Phaseolus Mungo)'),(163,'Judía Mungo (Phaseolus Aureus)'),(164,'Judías'),(165,'Kiwi'),(166,'Langostino'),(167,'Laurel (Laurus Nobilis)'),(168,'Leche'),(169,'Lechuga'),(170,'Legumbres'),(171,'Lenguado'),(172,'Lenteja (Lens Esculenta)'),(173,'Lentejas'),(174,'Licores'),(175,'Limón'),(176,'Limón Real'),(177,'Lino'),(178,'Lubina'),(179,'Macadamia'),(180,'Maíz'),(181,'Mamey'),(182,'Mandarina'),(183,'Mango'),(184,'Mango Seco'),(185,'Manzana'),(186,'Maravilla (Calendula, Spp.)'),(187,'Mejillón'),(188,'Mejorana (Origanum Majorana)'),(189,'Melocotones'),(190,'Melón'),(191,'Membrillo'),(192,'Menta (Mentha)'),(193,'Merluza'),(194,'Mero'),(195,'Mijo'),(196,'Mostaza'),(197,'Naranja'),(198,'Nata O Crema De Leche'),(199,'Nectarina'),(200,'Nixtamal'),(201,'Nopales'),(202,'Nuez'),(203,'Nuez De Brasil'),(204,'Nuez De Castilla'),(205,'Nuez Moscada Y Macís (Myristica Fragrans)'),(206,'Ocas'),(207,'Orégano (Origanum Vulgare)'),(208,'Ostra'),(209,'Pacana'),(210,'Palmito'),(211,'Paloma'),(212,'Palometa'),(213,'Papa'),(214,'Papaya'),(215,'Pasta'),(216,'Patata'),(217,'Patos'),(218,'Pavos'),(219,'Pejerrey'),(220,'Pepino'),(221,'Pera'),(222,'Percebe'),(223,'Perdiz'),(224,'Perejil (Petroselinum Crispum)'),(225,'Perifollo (Anthriscum Cerefolium)'),(226,'Perón'),(227,'Pimentón (Capsicum Tetragonum)'),(228,'Pimienta (Piper Nigrum)'),(229,'Pimienta De Cayena (Capsicum Annum)'),(230,'Pimienta De China (Zanthoxyllum Piperitum)'),(231,'Pimienta Jamaicana (Pimenta Officinalis)'),(232,'Piña'),(233,'Piñón'),(234,'Pistacho'),(235,'Pitahaya'),(236,'Plátano'),(237,'Pollo'),(238,'Pomelo'),(239,'Puerro'),(240,'Pulpo'),(241,'Queso'),(242,'Rábano'),(243,'Rábano Rusticano (Armoracia Rusticana)'),(244,'Raíces Y Tubérculos'),(245,'Rape'),(246,'Regaliz (Glycyrrhiza Glabra), Orozuz'),(247,'Remolacha'),(248,'Rodaballo'),(249,'Romeritos'),(250,'Romero (Rosmarinus Officinalis)'),(251,'Rosa (Rosa, Spp.)'),(252,'Sal'),(253,'Salmón'),(254,'Sandía'),(255,'Sardina'),(256,'Sepia'),(257,'Sésamo, Semillas De (Sesamum Indicum)'),(258,'Setas'),(259,'Sidras'),(260,'Soja'),(261,'Soja (Glycine Max)'),(262,'Tamarindo'),(263,'Tamarindo (Tamarindus Indica)'),(264,'Tejocote'),(265,'Tés'),(266,'Tomate'),(267,'Tomillo (Thymus Vulgaris)'),(268,'Toronja'),(269,'Trigo'),(270,'Trigo Sarraceno'),(271,'Trucha'),(272,'Tuna'),(273,'Uva'),(274,'Vainilla (Vanilla Planifolia)'),(275,'Verdolagas'),(276,'Vieira'),(277,'Vino Blanco'),(278,'Vino Caliente'),(279,'Vino Rosado'),(280,'Vino Tinto'),(281,'Whisky'),(282,'Yogur'),(283,'Zanahoria'),(284,'Zapote Negro'),(285,'Zumo');
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamento` (
  `id_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `descriccion` varchar(45) NOT NULL,
  `precio_unidad` varchar(45) NOT NULL,
  `existencia` decimal(11,0) NOT NULL,
  `stop_minimo` int(11) NOT NULL,
  `Caducidad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'Acarbosa (Oral)','1887',12,13,'22/10/2017'),(2,'Acebutolol (Oral)','467',58,21,'06/08/2017'),(3,'Aceite de Silicona 5000 Centistokes (Oftálmic','255',26,15,'04/11/2017'),(4,'Acetaminofeno (Oral)','1385',98,30,'13/12/2017'),(5,'Acetaminofeno (Rectal)','1582',80,24,'14/11/2016'),(6,'Acetaminofeno y Salicilatos (Orales)','1379',79,29,'27/08/2017'),(7,'Acetaminofeno, Bicarbonato de Sodio y Ácido C','125',47,30,'08/08/2016'),(8,'Acetato de Calcio (Oral)','495',54,11,'26/09/2017'),(9,'Acetato de Glatirámero (Por Inyección)','2175',70,21,'28/08/2017'),(10,'Acetilcisteína (Por Inhalación)','2301',66,28,'11/02/2017'),(11,'Aciclovir (Oral)','3209',45,15,'06/12/2017'),(12,'Aciclovir (Por Inyección)','34',16,14,'04/04/2017'),(13,'Aciclovir (Tópico)','2903',19,19,'22/08/2016'),(14,'Acido Acetohidroxámico (Oral)','4564',83,25,'07/04/2016'),(15,'Acitretina (Oral)','4862',6,15,'13/06/2017'),(16,'Adapaleno (Tópico)','3774',19,17,'16/10/2017'),(17,'Agentes Antidiabéticos, Sulfonilurea (Orales)','3540',27,10,'08/07/2016'),(18,'Agentes Antitiroideos (Orales)','1966',30,9,'19/09/2016'),(19,'Agentes Colecistográficos (Diagnóstico -- Ora','1863',41,27,'29/12/2016'),(20,'Agentes de Contraste para IRM (Diagnóstico --','1007',35,22,'13/03/2017'),(21,'Agentes Radiopacos (Diagnóstico, Local)','4619',65,28,'08/03/2016'),(22,'Alatrofloxacina (Por Inyección)','4329',64,25,'14/01/2017'),(23,'Albendazol (Oral)','2016',11,22,'20/08/2017'),(24,'Alcaloides de Belladona y Barbitúricos (Orale','2638',93,13,'14/04/2017'),(25,'Alcaloides de Rauwolfia (Orales)','641',7,13,'24/02/2016'),(26,'Alcaloides de Rauwolfia y Diuréticos Tiazídic','357',50,26,'01/09/2016'),(27,'Alcohol Nicotinílico (Oral)','3021',67,29,'18/08/2016'),(28,'Alcohol y Acetona (Tópico)','1919',73,6,'27/01/2016'),(29,'Alcohol y Azufre (Tópico)','2028',59,16,'04/01/2017'),(30,'Aldesleukina (Por Inyección)','815',91,5,'07/11/2017'),(31,'Bacampicilina (Oral)','3485',36,30,'03/08/2017'),(32,'Baclofeno (Oral)','1293',94,11,'14/10/2016'),(33,'Baclofeno (Por Inyección)','1858',70,26,'03/01/2017'),(34,'Barbitúricos (Orales)','3615',73,27,'29/10/2016'),(35,'Basiliximab (Inyección)','2808',32,15,'29/06/2016'),(36,'BCG (Mucosa-Local)','2641',86,11,'05/04/2016'),(37,'Becaplermina (Tópica)','3132',27,5,'01/04/2017'),(38,'Benazepril (Oral)','2332',47,6,'24/05/2016'),(39,'Bentiromida (Diagnóstico-Oral)','2385',72,14,'25/04/2016'),(40,'Benznidazol (Oral)','3004',37,16,'18/07/2017'),(41,'Benzoato de Bencilo (Tópico)','2015',26,28,'23/03/2017'),(42,'Benzoato de Sodio y Fenilacetato de Sodio (Or','1881',15,17,'15/04/2016'),(43,'Benzodiazepinas (Orales)','3060',74,9,'13/02/2017'),(44,'Benzodiazepinas (Para Ansiedad -- Orales)','4718',90,9,'08/11/2016'),(45,'Benzodiazepinas (Para Epilepsia -- Orales)','964',11,12,'26/08/2016'),(46,'Benzodiazepinas (Para Insomnio -- Orales)','1925',67,8,'11/03/2017'),(47,'Benzonatato (Oral)','4617',35,6,'24/07/2017'),(48,'Bepridil (Oral)','3729',44,5,'03/08/2017'),(49,'Beta Caroteno (Oral)','1755',79,16,'03/07/2017'),(50,'Betaína (Oral)','2735',29,23,'17/11/2017'),(51,'Betanecol (Oral)','4610',54,17,'30/10/2016'),(52,'Betaxolol (Oral)','4132',13,9,'04/07/2016'),(53,'Bicalutamida (Oral)','2338',71,18,'20/09/2016'),(54,'Bicarbonato de Sodio (Oral)','4278',81,12,'21/11/2017'),(55,'Bisoprolol (Oral)','1279',26,20,'16/04/2017'),(56,'Bisoprolol e Hidroclorotiazida (Oral)','161',78,23,'17/05/2016'),(57,'Bleomicina (Por Inyección)','624',84,28,'23/02/2017'),(58,'Bloqueadores Beta (Oftálmicos)','3220',48,24,'27/11/2017'),(59,'Bloqueantes Beta (Orales)','2769',55,9,'22/08/2017'),(60,'Bloqueantes Beta y Diuréticos Tiazídicos (Ora','3412',71,15,'16/05/2017'),(61,'Cabergolina (Oral)','244',42,25,'03/02/2016'),(62,'Cafeína (Oral)','1813',63,28,'07/07/2017'),(63,'Calamina (Tópica)','1051',51,17,'13/06/2016'),(64,'Calcifediol (Oral)','4868',30,13,'03/06/2016'),(65,'Calcipotrieno (Tópico)','4020',100,21,'04/11/2016'),(66,'Calcitonina (Nasal)','4713',29,23,'10/10/2016'),(67,'Calcitonina (Por Inyección)','154',85,23,'27/10/2016'),(68,'Calcitriol (Oral)','3402',35,26,'05/01/2017'),(69,'Caolín y Pectina (Oral)','4049',91,12,'03/02/2016'),(70,'Caolín, Pectina y Alcaloides de Belladona (Or','4104',96,15,'01/06/2016'),(71,'Caolín, Pectina y Paregórico (Oral)','2026',83,10,'21/07/2016'),(72,'Capecitabina (Oral)','2006',92,11,'22/11/2017'),(73,'Capreomicina (Por Inyección)','3798',70,23,'27/08/2016'),(74,'Capsaicina (Tópica)','4332',57,16,'28/07/2016'),(75,'Captopril (Oral)','4399',65,16,'27/03/2017'),(76,'Carbamazepina (Oral)','3326',70,9,'08/09/2017'),(77,'Carbenicilina (Oral)','4180',53,14,'09/11/2016'),(78,'Carbenicilina (Por Inyección)','4044',10,19,'02/02/2017'),(79,'Carbolfucsina (Tópica)','2272',34,5,'10/03/2017'),(80,'Carbón, Activado (Oral)','3887',93,8,'24/03/2017'),(81,'Carboplatino (Por Inyección)','2582',3,13,'13/08/2016'),(82,'Carboprost (Por Inyección)','4413',51,17,'09/10/2016'),(83,'Carmustina (Implante)','236',77,21,'09/06/2017'),(84,'Carmustina (Por Inyección)','4273',47,12,'30/05/2016'),(85,'Carteolol (Oral)','1563',68,12,'13/12/2016'),(86,'Carvedilol (Oral)','86',0,6,'31/08/2016'),(87,'Cefalosporinas (Orales)','2442',18,19,'15/05/2016'),(88,'Cefalosporinas (Por Inyección)','895',9,18,'18/04/2016'),(89,'Cefdinir (Oral)','2554',84,11,'08/11/2016'),(90,'Cefepima (Por Inyección)','4006',37,29,'05/09/2017'),(91,'Dacarbazina (Por Inyección)','1900',5,21,'14/07/2016'),(92,'Daclizumab (Inyección)','1491',46,15,'23/11/2016'),(93,'Dactinomicina (Por Inyección)','370',49,19,'21/07/2017'),(94,'Dalteparina (Por Inyección)','2695',62,15,'18/02/2017'),(95,'Danaparoid (Inyección)','4041',0,24,'09/07/2017'),(96,'Danazol (Oral)','2159',25,30,'13/11/2016'),(97,'Dantroleno (Oral)','3758',4,25,'19/06/2016'),(98,'Dapiprazol (Oftálmico)','4860',17,5,'31/12/2016'),(99,'Dapsona (Oral)','2947',22,7,'24/07/2016'),(100,'Daunorrubicina Liposomal (Inyección)','2117',63,26,'12/05/2016'),(101,'Daunorubicina (Por Inyección)','1848',60,28,'17/02/2017'),(102,'Deferoxamina (Por Inyección)','2004',69,29,'11/12/2017'),(103,'Delavirdina (Oral)','2674',57,20,'01/10/2016'),(104,'Demeclociclina (Oral)','4827',85,19,'19/11/2016'),(105,'Denileukin Diftitox (Por Inyección)','327',11,17,'30/07/2017'),(106,'Descongestivos y Analgésicos (Orales)','1977',25,17,'29/09/2017'),(107,'Descongestivos/Expectorantes (Orales)','1808',30,19,'30/06/2016'),(108,'Desflurano (Por Inhalación)','4325',94,8,'31/08/2017'),(109,'Desipramina (Oral)','930',10,20,'23/09/2016'),(110,'Desmopresina (Nasal)','4698',36,13,'08/07/2016'),(111,'Desmopresina (Oral)','2765',94,12,'30/04/2017'),(112,'Desmopresina (Por Inyección)','446',22,24,'04/05/2016'),(113,'Dexametasona (Para Náuseas y Vómitos -- Oral/','2827',60,7,'06/02/2017'),(114,'Dexclorfeniramina (Oral)','3407',19,26,'10/02/2017'),(115,'Dexfenfluramina (Oral)','4816',18,20,'11/12/2016'),(116,'Dexrazoxano (Por Inyección)','2302',58,7,'06/04/2016'),(117,'Dextrometorfano (Oral)','1274',78,29,'23/05/2016'),(118,'Diazóxido (Oral)','3500',35,12,'09/12/2016'),(119,'Diclofenaco y Misoprostol (Oral)','4344',66,29,'15/06/2016'),(120,'Dicloxacilina (Oral)','4744',42,26,'10/04/2016'),(121,'Econazol (Tópico)','892',11,17,'05/03/2016'),(122,'Eflornitina (Por Inyección)','2363',0,26,'10/11/2017'),(123,'Emedastina (Oftálmica )','2443',29,13,'06/11/2017'),(124,'Emulsiones Grasas (Por Inyección)','458',38,11,'23/05/2017'),(125,'Enalapril (Oral)','2777',98,18,'30/04/2017'),(126,'Enalapril y Felodipino (Oral)','1634',15,27,'26/04/2017'),(127,'Enoxaparina (Por Inyección)','813',82,24,'22/06/2016'),(128,'Epirubicin (Injection)','3666',90,14,'13/02/2017'),(129,'Epoetina (Por Inyección)','2428',43,9,'06/05/2016'),(130,'Eprosartan (Oral)','4501',12,13,'30/04/2016'),(131,'Ergonovina/Metilergonovina (Oral)','3319',21,24,'14/06/2016'),(132,'Eritromicina (Oftálmica)','1918',93,12,'10/09/2017'),(133,'Eritromicina (Tópica)','4418',27,15,'18/10/2016'),(134,'Eritromicina y Peróxido de Benzoílo (Tópico)','2596',90,22,'06/03/2016'),(135,'Eritromicina y Sulfisoxazol (Oral)','3819',25,24,'09/03/2016'),(136,'Eritromicinas (Orales)','1427',3,11,'17/06/2016'),(137,'Eritromicinas (Por Inyección)','1159',63,7,'03/10/2017'),(138,'Escopolamina (Rectal)','3589',68,25,'13/10/2017'),(139,'Escopolamina (Transdérmica)','1920',75,10,'16/01/2017'),(140,'Esparfloxacino (Oral)','988',87,8,'26/08/2016'),(141,'Espermicidas (Vaginales)','2922',88,19,'05/04/2017'),(142,'Espiramicina (Oral)','1149',13,25,'10/04/2017'),(143,'Espíritu de Amoníaco Aromático (Por Inhalació','807',1,13,'25/04/2017'),(144,'Estavudina (Oral)','3820',70,20,'13/11/2017'),(145,'Esteroides Anabólicos (Orales)','4253',65,17,'22/11/2017'),(146,'Estradiol (Transdérmico)','3021',38,23,'04/04/2017'),(147,'Estramustina (Oral)','1032',22,11,'20/03/2016'),(148,'Estreptozocina (Por Inyección)','2663',8,6,'25/09/2016'),(149,'Estrógenos (Orales)','4812',24,14,'20/09/2017'),(150,'Estrógenos (Por Inyección)','2087',24,27,'12/11/2016'),(151,'Factor Antihemofílico (Por Inyección)','3602',11,19,'20/01/2017'),(152,'Factor IX (Por Inyección)','4380',42,7,'17/02/2017'),(153,'Factores Estimulantes de Colonia (Por Inyecci','2017',89,8,'24/03/2017'),(154,'Famciclovir (Oral)','3315',37,22,'14/08/2017'),(155,'Felbamato (Oral)','2024',3,20,'04/04/2016'),(156,'Felodipino (Oral)','506',30,25,'28/08/2017'),(157,'Fenacemida (Oral)','1371',81,21,'14/10/2017'),(158,'Fenazopiridina (Oral)','301',92,19,'05/07/2016'),(159,'Fenfluramina (Oral)','3505',29,24,'24/06/2017'),(160,'Fenilbutirato Sódico (Oral)','3977',15,18,'26/10/2017'),(161,'Fenilefrina (Nasal)','1878',21,5,'21/06/2016'),(162,'Fenilefrina (Oftálmica)','1387',89,8,'27/05/2016'),(163,'Fenilpropanolamina (Oral)','4853',59,16,'30/10/2017'),(164,'Fenindamina (Oral)','1728',71,12,'15/09/2017'),(165,'Fenobarbital (Para Epilepsia -- Oral)','2910',90,24,'06/02/2016'),(166,'Fenofibrato (Oral)','1760',53,14,'03/09/2016'),(167,'Fenolsulfonftaleína (Diagnóstico-Por Inyecció','1341',86,24,'15/11/2017'),(168,'Fenotiazinas (Orales)','3142',48,29,'18/02/2017'),(169,'Fenotiazinas (Para Náuseas y Vómitos -- Orale','3761',87,30,'28/07/2017'),(170,'Fenotiazinas (Para Náuseas y Vómitos -- Por I','4230',97,6,'09/08/2017'),(171,'Fenotiazinas (Para Náuseas y Vómitos -- Recta','3942',16,8,'30/06/2017'),(172,'Fenotiazinas (Por Inyección)','2975',93,11,'05/09/2017'),(173,'Fenotiazinas (Rectales)','4258',22,14,'01/03/2017'),(174,'Fenoxibenzamina (Oral)','1264',27,30,'11/10/2016'),(175,'Fentanil (Oral)','4058',55,9,'21/01/2017'),(176,'Fentanilo (Transdérmico)','1888',38,18,'19/04/2016'),(177,'Fexofenadina (Oral)','2960',7,24,'03/06/2017'),(178,'Fexofenadina y Pseudoefedrina (Oral)','3615',29,16,'16/08/2016'),(179,'Fibra de Tetraciclina Periodontal (Dental)','2403',42,15,'01/11/2017'),(180,'Finasterida (Oral)','3111',58,22,'27/11/2016'),(181,'Gabapentina (Oral)','4397',28,13,'22/05/2017'),(182,'Gadodiamida (Diagnóstico -- Por Inyección)','3388',85,11,'11/03/2017'),(183,'Gadopentetato (Diagnóstico--Por Inyección)','611',49,20,'14/03/2017'),(184,'Gadoteridol (Diagnóstico -- Por Inyección)','3524',44,8,'27/11/2016'),(185,'Ganciclovir (Implante Oftálmico)','1967',4,7,'31/12/2016'),(186,'Ganciclovir (Oral)','4806',20,18,'13/07/2017'),(187,'Ganciclovir (Por Inyección)','1397',93,5,'15/12/2016'),(188,'Ganirelix (Por inyección)','1563',59,15,'18/03/2016'),(189,'Gemcitabina (Por Inyección)','2145',35,12,'15/01/2017'),(190,'Gemfibrozilo (Oral)','458',43,6,'29/09/2017'),(191,'Gentamicina (Oftálmica)','2947',79,20,'10/02/2017'),(192,'Gentamicina (Ótica)','2242',58,6,'26/03/2017'),(193,'Glimepirida (Oral)','1490',31,22,'14/06/2016'),(194,'Globulina Inmune de la Rabia (Inyección)','3440',93,27,'14/11/2016'),(195,'Globulina Inmune Rho(D) (Por Inyección)','1282',97,12,'16/03/2017'),(196,'Glucagón (Por Inyección)','955',49,14,'09/04/2016'),(197,'Glutetimida (Oral)','2627',17,12,'12/01/2017'),(198,'Gonadorelina (Por Inyección)','1038',90,16,'03/07/2017'),(199,'Gonadotropina Coriónica (Por Inyección)','1706',79,16,'17/08/2016'),(200,'Goserelina (Por Inyección)','773',79,9,'07/11/2017'),(201,'Granisetrón (Oral)','4666',74,15,'22/04/2017'),(202,'Granisetrón (Por Inyección)','4776',4,15,'08/08/2017'),(203,'Griseofulvina (Oral)','2922',17,23,'03/03/2016'),(204,'Guaifenesina (Oral)','1514',48,27,'29/09/2016'),(205,'Guanabenzo (Oral)','1179',1,21,'12/10/2017'),(206,'Guanadrel (Oral)','945',36,19,'27/01/2017'),(207,'Guanetidina (Oral)','1763',26,17,'06/12/2016'),(208,'Guanfacina (Oral)','3349',23,8,'12/06/2016'),(209,'Halofantrina (Oral)','754',96,24,'21/11/2017'),(210,'Haloperidol (Oral)','3523',85,8,'04/09/2016'),(211,'Haloperidol (Por Inyección)','3536',82,30,'22/10/2017'),(212,'Haloprogina (Tópica)','2716',43,5,'29/09/2017'),(213,'Heparina (Por Inyección)','4848',54,26,'09/09/2017'),(214,'Hialuronato Sódico (Inyección)','3971',94,11,'07/04/2017'),(215,'Hialuronato Sódico (Por inyección)','508',69,15,'06/12/2017'),(216,'Hidralazina (Oral)','3378',33,19,'01/09/2017'),(217,'Hidralazina e Hidroclorotiazida (Oral)','1073',87,24,'14/02/2017'),(218,'Hidrato de Cloral (Oral)','162',82,28,'31/07/2017'),(219,'Hidratos de Carbono y Electrolitos (Orales)','2386',52,30,'12/09/2017'),(220,'Hidrocortisona (Rectal)','4741',11,25,'26/12/2016'),(221,'Hidroxicloroquina (Oral)','4369',21,13,'26/05/2017'),(222,'Hidroxiurea (Oral)','362',99,19,'08/02/2016'),(223,'Hidroxizina (Oral/Por Inyección)','4494',34,18,'30/04/2016'),(224,'Histamina (Diagnóstico-Por Inyección)','2012',80,16,'05/05/2017'),(225,'Histrelina (Por Inyección)','928',86,22,'11/02/2017'),(226,'Hormona de Crecimiento (Por Inyección)','1993',85,28,'24/09/2016'),(227,'Hormonas Tiroideas (Orales)','4220',52,30,'14/09/2016'),(228,'Hydrocodona e Ibuprofeno (Oral)','284',48,16,'14/06/2017'),(229,'Idarubicina (Por Inyección)','1342',50,15,'31/08/2017'),(230,'Idoxuridina (Oftálmica)','4731',27,23,'17/01/2017'),(231,'Ifosfamida (Por Inyección)','3937',88,17,'02/05/2016'),(232,'Imiglucerasa (Por Inyección)','929',16,30,'16/08/2016'),(233,'Imipenem y Cilastatina (Por Inyección)','3074',64,9,'19/02/2016'),(234,'Imipramina (Oral)','4128',38,21,'08/11/2016'),(235,'Imiquimod (Tópico)','4744',80,30,'19/02/2017'),(236,'Indapamida (Oral)','4399',14,5,'27/06/2016'),(237,'Indinavir (Oral)','4843',9,24,'12/07/2017'),(238,'Infliximab (Por Inyección)','4271',14,6,'26/09/2017'),(239,'Inhibidores de la Agregación de Plaquetas (Or','4741',82,23,'04/09/2017'),(240,'Inhibidores de la Anhidrasa Carbónica (Orales','1847',83,19,'07/11/2016'),(241,'Inhibidores de Proteasa (Orales)','2225',45,8,'13/09/2017'),(242,'Inhibidores ECA (Orales)','1045',10,26,'16/06/2016'),(243,'Inhibidores ECA e Hidroclorotiazida (Oral)','714',84,17,'06/11/2017'),(244,'Inmunoglobulina Intravenosa para el Virus Sin','3946',72,10,'28/07/2016'),(245,'Inmunoglobulina Intravenosa, Humana (Por Inye','4926',38,5,'06/10/2017'),(246,'Insulina (Por Inyección)','2883',23,20,'05/06/2017'),(247,'Insulina Lispro (Por Inyección)','1427',41,8,'18/08/2016'),(248,'Interferón Alfacón-1 (Por Inyección)','542',75,23,'05/09/2017'),(249,'Interferón Beta-1a (Por Inyección)','2619',76,18,'29/11/2016'),(250,'Interferón, Beta-1b (Por Inyección)','3141',100,7,'15/07/2016'),(251,'Interferón, Gamma (Por Inyección)','3060',45,19,'11/11/2017'),(252,'Interferones, Alfa (Por Inyección)','704',5,16,'11/09/2016'),(253,'Inulina (Diagnóstico-Por Inyección)','4824',73,24,'19/08/2016'),(254,'Iobenguano, Radioyodado (Terapéutico -- Por I','305',13,9,'29/04/2016'),(255,'Ipecacuana (Oral)','990',87,13,'19/01/2017'),(256,'Ipratropio (Nasal)','2756',15,26,'02/11/2017'),(257,'Ipratropio (Por Inhalación)','52',19,9,'21/06/2017'),(258,'Ipratropio y Albuterol (Por Inhalación)','403',18,23,'28/03/2016'),(259,'Kanamicina (Oral)','2806',47,13,'24/03/2016'),(260,'Ketoconazol (Oral)','715',22,14,'16/03/2016'),(261,'Ketoconazol (Tópico)','976',62,7,'17/08/2017'),(262,'Ketorolaco (Oftálmico)','286',27,11,'29/01/2016'),(263,'Ketorolaco (Oral)','3808',4,9,'25/05/2017'),(264,'Ketorolaco (Por Inyección)','3300',100,26,'24/01/2017'),(265,'Ketotifen (Ophthalmic)','3473',19,26,'11/08/2017'),(266,'Labetalol (Oral)','611',5,17,'18/07/2017'),(267,'Lamivudina (Oral)','1265',47,8,'06/07/2016'),(268,'Lamivudina y Zidovudina (Oral)','1174',80,18,'22/10/2017'),(269,'Lamotrigina (Oral)','773',10,22,'24/08/2017'),(270,'Lansoprazol (Oral)','3936',16,28,'29/09/2017'),(271,'Latanoprost (Oftálmico)','212',33,29,'10/10/2017'),(272,'Laxantes, Ablandadores de las Heces (Orales)','2747',29,30,'08/09/2017'),(273,'Laxantes, Ablandadores de las Heces (Rectales','2102',20,20,'25/03/2017'),(274,'Laxantes, Combinaciones de Estimulantes y Abl','1830',51,24,'03/02/2017'),(275,'Laxantes, Combinaciones de Hiperosmóticos y E','3829',84,29,'17/07/2016'),(276,'Laxantes, Combinaciones de Hiperosmóticos y L','4461',64,28,'15/05/2016'),(277,'Laxantes, Combinaciones de Hiperosmóticos, Lu','3720',23,7,'29/10/2017'),(278,'Laxantes, Combinaciones de Incrementadores de','533',20,15,'07/06/2017'),(279,'Laxantes, Combinaciones de Incrementadores de','1012',32,12,'24/11/2017'),(280,'Laxantes, Combinaciones de Incrementadores de','1415',44,24,'02/06/2017'),(281,'Laxantes, Combinaciones de Lubrificantes y Es','1981',12,6,'23/04/2017'),(282,'Laxantes, Estimulantes (Orales)','334',93,21,'02/07/2016'),(283,'Laxantes, Estimulantes (Rectales)','2162',41,26,'31/07/2016'),(284,'Laxantes, Hiperosmóticos (Lactulosa -- Orales','1166',100,9,'10/11/2017'),(285,'Laxantes, Hiperosmóticos (Rectales)','3743',71,17,'29/07/2016'),(286,'Laxantes, Hiperosmóticos (Salinos -- Orales)','2291',12,22,'28/11/2016'),(287,'Laxantes, Incrementadores del Bolo Intestinal','3040',31,10,'11/08/2017'),(288,'Laxantes, Liberadores de Dióxido de Carbono (','878',41,6,'12/03/2017'),(289,'Laxantes, Lubrificantes (Orales)','4452',34,7,'21/10/2017'),(290,'Laxantes, Lubrificantes (Rectales)','3916',85,5,'18/08/2017'),(291,'Letrozol (Oral)','2097',63,28,'28/09/2017'),(292,'Leucovorina (Oral/Por Inyección)','1555',88,6,'08/11/2017'),(293,'Leuprolida (Por Inyección)','2511',23,13,'06/02/2017'),(294,'Levalbuterol (Por Inhalación-Local)','4080',92,26,'29/10/2017'),(295,'Mafenida (Tópica)','4819',10,5,'12/12/2016'),(296,'Malatión (Tópico)','4880',88,7,'20/07/2016'),(297,'Maprotilina (Oral)','3744',11,14,'03/02/2017'),(298,'Mebendazol (Oral)','1416',16,27,'19/06/2017'),(299,'Mecloretamina (Por Inyección)','2699',60,7,'28/12/2016'),(300,'Mecloretamina (Tópica)','3089',98,21,'24/08/2016'),(301,'Meclozina/Buclizina/Ciclizina (Oral)','390',54,23,'24/03/2017'),(302,'Medicamentos Antiinflamatorios (AINEs) (Orale','4846',70,23,'25/10/2016'),(303,'Medicamentos Antiinflamatorios (Oftálmicos)','4459',67,18,'21/11/2017'),(304,'Medicamentos de Digital (Orales)','3651',43,20,'24/11/2016'),(305,'Medicamentos de Ergotamina (Orales)','1728',37,25,'14/04/2017'),(306,'Medicamentos para Glaucoma (Colinérgicos de A','1249',100,23,'07/11/2017'),(307,'Medicamentos para Glaucoma (Colinérgicos de A','3347',45,21,'16/03/2017'),(308,'Medicamentos para Glaucoma (Tipo Epinefrina)','4650',3,21,'23/07/2017'),(309,'Medicamentos Reductores del Colesterol, Tipo ','3677',21,8,'16/04/2017'),(310,'Medroxiprogesterona (Para Uso Contraceptivo-P','2337',30,14,'02/12/2017'),(311,'Mefloquina (Oral)','633',36,22,'25/01/2017'),(312,'Melarsoprol (Por Inyección)','271',98,23,'22/03/2017'),(313,'Melfalán (Oral)','1930',24,23,'01/04/2017'),(314,'Menotrofinas (Por Inyección)','547',30,23,'09/09/2016'),(315,'Meprobamato (Oral)','3816',46,8,'20/11/2017'),(316,'Meprobamato y Aspirina (Oral)','3543',56,28,'17/06/2016'),(317,'Mercaptopurina (Oral)','4992',58,10,'28/01/2016'),(318,'Meropenem (Por Inyección)','1388',76,27,'09/12/2017'),(319,'Mesalamina (Oral)','1063',25,30,'13/12/2016'),(320,'Mesalamina (Rectal)','171',21,7,'03/10/2017'),(321,'Mesilatos Ergoloides (Orales)','4401',45,5,'23/06/2016'),(322,'Mesna (Por Inyección)','1648',37,11,'06/04/2017'),(323,'Metadona (Para la Adicción a los Narcóticos -','4101',31,30,'03/12/2016'),(324,'Metenamina (Oral)','4462',20,22,'30/10/2017'),(325,'Nabilona (Oral)','1196',69,11,'22/07/2016'),(326,'Nadolol (Oral)','984',100,29,'29/02/2016'),(327,'Nafarelina (Nasal)','4989',31,14,'29/09/2017'),(328,'Nafazolina (Oftálmica)','2421',27,21,'17/05/2016'),(329,'Nafcilina (Oral)','2968',18,26,'01/11/2016'),(330,'Nafcilina (Por Inyección)','3645',21,24,'28/06/2017'),(331,'Naftifina (Tópica)','4448',98,21,'09/12/2016'),(332,'Naltrexona (Oral)','1320',81,9,'26/07/2017'),(333,'Naratriptan (Oral)','1423',100,20,'05/05/2017'),(334,'Natamicina (Oftálmica)','1893',14,28,'17/02/2017'),(335,'Nedocromilo (Por Inhalación)','3680',51,12,'19/09/2016'),(336,'Nefazodona (Oral)','4244',12,13,'08/05/2016'),(337,'Nelfinavir (Oral)','2313',74,17,'12/10/2016'),(338,'Neomicina (Oral)','236',27,6,'04/09/2016'),(339,'Neomicina y Polimixina B (Tópica)','3775',20,13,'22/01/2016'),(340,'Neomicina, Polimixina B e Hidrocortisona (Oft','2267',82,28,'07/06/2016'),(341,'Neomicina, Polimixina B y Bacitracina (Oftálm','1453',82,12,'19/07/2016'),(342,'Neomicina, Polimixina B y Gramicidina (Oftálm','4028',55,11,'13/01/2017'),(343,'Nevirapina (Oral)','3525',58,8,'23/10/2016'),(344,'Niacina (Para Colesterol Alto -- Oral)','2191',45,5,'15/09/2017'),(345,'Niacina (Vitamina B3) (Oral)','4350',45,23,'27/06/2016'),(346,'Nicardipino (Oral)','324',31,21,'09/03/2016'),(347,'Niclosamida (Oral)','302',6,30,'27/01/2017'),(348,'Nicotina (Nasal)','790',54,29,'23/01/2017'),(349,'Nicotina (Oral)','4214',19,8,'04/08/2016'),(350,'Nicotina (Por Inhalación)','3067',69,7,'27/03/2016'),(351,'Nicotina (Transdérmica)','4098',11,28,'04/07/2017'),(352,'Nifedipino (Oral)','1065',73,8,'27/06/2016'),(353,'Nifurtimox (Oral)','545',66,11,'05/10/2016'),(354,'Nilutamida (Oral)','2661',44,19,'18/01/2017'),(355,'Octreotida (Por Inyección)','1570',86,19,'16/06/2016'),(356,'Ofloxacino (Oftálmico)','861',58,7,'14/11/2017'),(357,'Olanzapina (Oral)','4838',32,8,'22/10/2017'),(358,'Olopatadina (Oftálmica)','3485',84,28,'25/08/2016'),(359,'Olsalazina (Oral)','3962',17,21,'04/05/2017'),(360,'Omeprazol (Oral)','3773',54,20,'08/10/2017'),(361,'Ondansetrón (Oral)','1600',72,20,'21/02/2016'),(362,'Ondansetrón (Por Inyección)','1705',73,9,'18/08/2016'),(363,'Oprelvekin (Por Inyección)','559',21,17,'22/04/2016'),(364,'Orfenadrina (Oral)','2600',35,15,'25/02/2017'),(365,'Orfenadrina y Aspirina (Oral)','302',9,6,'08/08/2017'),(366,'Orlistat (Oral)','3587',11,28,'20/12/2016'),(367,'Oseltamivir (Oral)','207',62,20,'16/02/2017'),(368,'Oxacilina (Oral)','3813',56,25,'15/06/2016'),(369,'Oxacilina (Por Inyección)','4814',54,20,'26/07/2016'),(370,'Oxamniquina (Oral)','771',85,22,'13/02/2017'),(371,'Oxibutinina (Oral)','2554',35,9,'04/08/2016'),(372,'Oxiconazol (Tópico)','2250',39,10,'25/05/2016'),(373,'Oximetazolina (Nasal)','1668',56,16,'22/03/2016'),(374,'Oximetazolina (Oftálmica)','2580',77,12,'17/11/2016'),(375,'Oxitetraciclina (Oral)','3222',8,25,'31/08/2016'),(376,'Oxitocina (Nasal)','4497',1,16,'16/11/2016'),(377,'Oxprenolol (Oral)','2391',47,30,'16/02/2016'),(378,'Oxtrifilina y Guaifenesina (Oral)','2043',41,16,'22/05/2017'),(379,'Paclitaxel (Por Inyección)','813',68,17,'07/01/2017'),(380,'Pamidronato (Por Inyección)','3415',89,15,'06/03/2017'),(381,'Pancrelipasa (Oral)','4534',39,15,'04/09/2016'),(382,'Pantoprazol (Oral)','59',11,21,'17/09/2016'),(383,'Papaverina (Oral)','2565',59,22,'26/10/2017'),(384,'Paracetamol (Oral)','1150',75,17,'08/04/2016'),(385,'Pargilina (Oral)','2736',55,13,'18/03/2017'),(386,'Pargilina y Metilclotiazida (Oral)','3766',86,30,'23/03/2016'),(387,'Paricalcitol (Por Inyección)','4561',1,23,'16/07/2017'),(388,'Paroxetina (Oral)','1468',11,13,'14/07/2016'),(389,'Pegademasa (Por Inyección)','2715',78,7,'19/05/2016'),(390,'Pegaspargasa (Por Inyección)','3697',37,22,'29/06/2016'),(391,'Pemolina (Oral)','601',19,8,'05/06/2017'),(392,'Penbutolol (Oral)','292',39,26,'18/04/2017'),(393,'Penciclovir (Tópico)','3144',91,8,'02/08/2017'),(394,'Penicilamina (Oral)','4642',52,25,'06/01/2017'),(395,'Penicilina G (Oral)','173',74,24,'11/12/2016'),(396,'Penicilina G (Por Inyección)','2067',47,16,'28/03/2017'),(397,'Penicilina V (Oral)','443',38,24,'19/11/2016'),(398,'Penicilinas e Inhibidores de las Beta-lactama','1829',51,27,'13/06/2016'),(399,'Penicilinas e Inhibidores de las Beta-lactama','2104',48,30,'01/02/2016'),(400,'Pentamidina (Por Inhalación)','917',52,16,'16/05/2016'),(401,'Pentamidina (Por Inyección)','4781',93,30,'31/01/2017'),(402,'Pentosano (Oral)','1916',50,23,'31/05/2017'),(403,'Pentostatina (Por Inyección)','4201',4,5,'12/02/2016'),(404,'Pentoxifilina (Oral)','1702',39,23,'28/06/2017'),(405,'Perfenazina y Amitriptilina (Oral)','2375',26,26,'15/08/2016'),(406,'Perflubrón (Diagnóstico -- Oral)','3152',78,6,'07/10/2016'),(407,'Pergolida (Oral)','4616',18,8,'19/11/2017'),(408,'Perindopril (Oral)','1337',19,7,'18/08/2016'),(409,'Permetrina (Tópica)','1766',92,21,'13/12/2016'),(410,'Quenodiol (Oral)','2757',17,16,'08/11/2017'),(411,'Quetiapina (Oral)','490',0,15,'17/02/2017'),(412,'Quimopapaína (Por Inyección)','4420',79,25,'06/12/2016'),(413,'Quinapril (Oral)','2357',8,30,'16/07/2017'),(414,'Quinidina (Oral)','1921',16,7,'30/07/2017'),(415,'Quinina (Oral)','4658',89,19,'13/12/2016'),(416,'Quinupristina y Dalfopristina','3507',34,6,'18/07/2017'),(417,'Rabeprazol (Oral)','2762',63,29,'12/01/2017'),(418,'Racemetionina (Oral)','121',50,25,'24/05/2016'),(419,'Radiofármacos (Diagnósticos)','2189',64,24,'14/01/2017'),(420,'Raloxifeno (Oral)','4161',41,15,'17/12/2016'),(421,'Ramipril (Oral)','361',52,15,'05/03/2017'),(422,'Ranitidina Citrato de Bismuto (Oral)','3919',18,10,'11/07/2017'),(423,'Relajantes Musculares (Orales)','572',99,15,'28/03/2016'),(424,'Repaglinida (Oral)','376',79,7,'07/03/2016'),(425,'Reserpina, Hidralazina e Hidroclorotiazida (O','1158',5,12,'13/03/2017'),(426,'Resinas Reductoras de Colesterol (Orales)','664',88,26,'28/08/2017'),(427,'Reteplasa Recombinante (Por Inyección)','4442',45,13,'24/02/2016'),(428,'Ribavirina (Por Inhalación)','1401',42,6,'04/04/2017'),(429,'Ribavirina e interferón alfa-2b (Oral/Inyecci','3620',38,23,'20/05/2017'),(430,'Riboflavina (Vitamina B2) (Oral)','3304',14,13,'21/05/2017'),(431,'Rifabutina (Oral)','4409',84,30,'27/10/2017'),(432,'Rifampicina (Oral)','387',22,15,'21/06/2016'),(433,'Rifampicina e Isoniazida (Oral)','3035',60,25,'30/09/2017'),(434,'Rifampicina, Isoniazida y Pirazinamida (Oral)','2818',33,20,'11/05/2017'),(435,'Rifapentina (Oral)','935',33,8,'04/09/2016'),(436,'Riluzol (Oral)','1978',42,17,'31/12/2016'),(437,'Rimantadina (Oral)','884',67,11,'26/02/2017'),(438,'Rimexolona (Oftálmica)','2752',85,19,'20/05/2016'),(439,'Risedronato (Oral)','4064',85,30,'18/06/2017'),(440,'Risperidona (Oral)','276',90,30,'19/07/2017'),(441,'Ritodrina (Oral)','4934',45,17,'29/08/2017'),(442,'Ritodrina (Por Inyección)','1810',47,10,'12/06/2016'),(443,'Ritonavir (Oral)','3466',22,17,'01/03/2016'),(444,'Rituximab (Por Inyección)','1009',35,21,'10/10/2016'),(445,'Rofecoxib (Oral)','2305',80,30,'25/10/2017'),(446,'Ropinirol (Oral)','55',86,6,'13/04/2016'),(447,'Salicilato de Colina (Oral)','1515',4,30,'14/03/2017'),(448,'Salicilato de Magnesio (Oral)','3261',0,12,'28/04/2016'),(449,'Salicilato de Sodio (Oral)','569',17,7,'18/04/2016'),(450,'Salicilatos (Orales)','1441',83,24,'31/12/2016'),(451,'Salicilatos de Colina y de Magnesio (Orales)','34',91,6,'30/01/2016'),(452,'Salmeterol (Por Inhalación)','4307',15,6,'21/06/2016'),(453,'Salsalato (Oral)','277',58,13,'05/05/2017'),(454,'Saquinavir (Oral)','1645',76,19,'05/03/2017'),(455,'Selegilina (Oral)','2933',20,19,'28/12/2016'),(456,'Sermorelin (Por Inyección)','298',72,9,'10/11/2016'),(457,'Sertralina (Oral)','1497',99,15,'24/07/2016'),(458,'Sevoflurano (Por Inhalación)','2536',67,24,'19/02/2017'),(459,'Sibutramine (Oral)','2628',85,17,'04/04/2016'),(460,'Sildenafilo (Oral)','929',2,28,'04/01/2017'),(461,'Simeticona (Oral)','895',67,5,'18/06/2017'),(462,'Simvastatina (Oral)','1669',93,26,'22/12/2016'),(463,'Sincalida (Diagnóstico - Por Inyección)','4613',6,25,'30/09/2016'),(464,'Sotalol (Oral)','4537',2,27,'28/02/2017'),(465,'Subsalicilato de Bismuto (Oral)','1132',48,28,'19/10/2016'),(466,'Subsalicilato de Bismuto, Metronidazol y Tetr','3453',13,18,'18/07/2016'),(467,'Succimero (Oral)','354',10,19,'16/07/2016'),(468,'Sucralfato (Oral)','559',60,29,'28/02/2017'),(469,'Sulconazol (Tópico)','2261',54,28,'05/03/2016'),(470,'Sulfadiazina Argéntica (Tópica)','67',15,19,'05/08/2017'),(471,'Sulfadoxina y Pirimetamina (Oral)','1541',99,10,'06/10/2016'),(472,'Sulfametoxazol y Trimetoprima (Oral)','3564',64,19,'06/06/2017'),(473,'Sulfametoxazol y Trimetoprima (Por Inyección)','1529',59,25,'15/09/2016'),(474,'Sulfamidas (Oftálmicas)','2829',32,14,'03/03/2016'),(475,'Sulfamidas (Orales)','3926',98,9,'30/09/2016'),(476,'Sulfamidas (Vaginales)','1626',40,22,'29/06/2016'),(477,'Tacrina (Oral)','541',88,21,'01/10/2017'),(478,'Tacrolimús (Oral)','571',72,19,'16/07/2016'),(479,'Tacrolimús (Por Inyección)','157',75,12,'28/05/2017'),(480,'Talco (Intrapleural-local)','3086',32,5,'13/08/2016'),(481,'Talidomida (Oral)','1814',45,5,'20/06/2016'),(482,'Tamoxifeno (Oral)','4140',20,7,'14/02/2017'),(483,'Tamsulosina (Oral)','4357',6,9,'25/04/2016'),(484,'Tazaroteno (Tópico)','4266',32,29,'05/06/2017'),(485,'Telmisartán (Oral)','308',86,15,'07/10/2017'),(486,'Temozolomida (Oral)','3397',80,24,'13/11/2016'),(487,'Tenipósido (Por Inyección)','3626',98,6,'26/08/2017'),(488,'Teofilina y Guaifenesina (Oral)','2081',6,7,'05/09/2017'),(489,'Teofilina, Efedrina e Hidroxizina (Oral)','191',69,10,'02/06/2016'),(490,'Teofilina, Efedrina y Fenobarbital (Oral)','3846',46,27,'19/05/2017'),(491,'Teofilina, Efedrina, Guaifenesina y Fenobarbi','1449',93,27,'21/08/2017'),(492,'Terazosina (Oral)','3303',22,21,'18/06/2016'),(493,'Terbinafina (Oral)','4057',70,24,'11/12/2017'),(494,'Terbinafina (Tópica)','4561',16,12,'08/06/2017'),(495,'Teriparatida (Diagnóstico -- Por Inyección)','4859',30,21,'28/06/2016'),(496,'Testolactona (Oral)','4492',76,6,'18/08/2016'),(497,'Testosterona (Implante)','689',17,29,'14/08/2016'),(498,'Testosterona (Inyección)','1089',68,26,'06/11/2016'),(499,'Testosterona (Oral)','1069',56,15,'24/08/2016'),(500,'Testosterona (Tópica)','74',41,15,'15/04/2017'),(501,'Testosterona (Transdérmica)','1837',87,8,'28/09/2016'),(502,'Tetraciclina (Oral)','1817',22,9,'15/04/2016'),(503,'Tetraciclinas (Oftálmicas)','1177',88,13,'14/12/2017'),(504,'Tetraciclinas (Tópicas)','2412',8,5,'10/02/2017'),(505,'Tiabendazol (Oral)','4518',30,27,'02/05/2017'),(506,'Tiagabina (Oral)','4635',11,22,'30/06/2017'),(507,'Urea (Por Inyección -- Local)','2528',16,7,'13/08/2016'),(508,'Urofolotropina (Por Inyección)','4790',86,9,'13/03/2016'),(509,'Uroquinasa (Por Inyección)','4508',69,20,'12/10/2017'),(510,'Ursodiol (Oral)','4380',70,26,'14/04/2016'),(511,'Vacuna Anti-Encefalitis del Virus Japonés (Po','1463',28,21,'10/12/2016'),(512,'Vacuna Anti-neumocócica Polivalente (Por Inye','231',71,11,'02/02/2017'),(513,'Vacuna Anti-parotiditis de Virus Vivos (Por I','965',81,18,'05/02/2017'),(514,'Vacuna Anti-Rubéola de Virus Vivo (Por Inyecc','4519',83,28,'20/12/2016'),(515,'Vacuna Anti-Sarampión de Virus Vivos (Por Iny','272',23,15,'22/07/2017'),(516,'Vacuna Conjugada de Haemophilus b (Por Inyecc','1536',30,5,'18/09/2017'),(517,'Vacuna Contra el Cólera (Por Inyección)','4764',84,22,'11/06/2017'),(518,'Vacuna Contra el Tifus Vivo (Oral)','4758',70,13,'16/12/2017'),(519,'Vacuna Contra Fiebre Amarilla (Por Inyección)','2832',61,14,'15/09/2016'),(520,'Vacuna contra la enfermedad de Lyme (Por Inye','4191',63,20,'26/07/2017'),(521,'Vacuna Contra la Peste (Por Inyección)','3370',55,9,'28/06/2017'),(522,'Vacuna de Polisacáridos de Meningococos (Por ','1883',6,5,'28/08/2016'),(523,'Vacuna de Virus Vivo de Varicela (Por Inyecci','542',38,6,'07/05/2016'),(524,'Vacuna del Poliovirus (Oral)','1665',82,9,'16/12/2017'),(525,'Vacuna del Poliovirus (Por Inyección)','1625',0,12,'19/06/2017'),(526,'Vacuna del Virus de la Influenza (Por Inyecci','1365',43,23,'07/03/2017'),(527,'Vacuna Inactivada de Hepatitis A (Por Inyecci','3178',75,7,'07/02/2017'),(528,'Vacuna Polisacárida de Haemophilus B (Por Iny','4240',3,21,'03/03/2017'),(529,'Vacuna Recombinante de Hepatitis B (Por Inyec','4341',69,26,'11/07/2016'),(530,'Valaciclovir (Oral)','4540',48,18,'20/01/2017'),(531,'Valrubicin (Mucosal-Local)','4908',93,10,'21/06/2017'),(532,'Valsartán (Oral)','3934',19,18,'23/04/2017'),(533,'Valsartan e hidroclorotiazida (Oral)','3872',47,10,'14/05/2017'),(534,'Vancomicina (Oral)','1715',61,6,'28/04/2016'),(535,'Vancomicina (Por Inyección)','803',76,10,'27/04/2016'),(536,'Vasopresina (Por Inyección)','2293',11,10,'27/06/2017'),(537,'Venlafaxina (Oral)','1371',59,19,'09/01/2017'),(538,'Verapamilo (Oral/Por Inyección)','4681',46,27,'23/10/2017'),(539,'Vidarabina (Oftálmica)','2012',0,6,'08/08/2016'),(540,'Vinblastina (Por Inyección)','53',19,22,'20/07/2016'),(541,'Xilometazolina (Nasal)','610',73,7,'16/11/2017'),(542,'Yodo, Fuerte (Oral)','458',38,12,'10/04/2016'),(543,'Yodoquinol (Oral)','2019',43,11,'29/10/2017'),(544,'Yoduro de Potasio (Oral)','2728',89,14,'23/06/2017'),(545,'Yoduro I 131 de Sodio (Terapéutico -- Oral)','1498',27,22,'14/06/2016'),(546,'Yohimbina (Oral)','3132',49,16,'14/09/2016'),(547,'Zafirlukast (Oral)','1405',78,16,'16/01/2017'),(548,'Zalcitabina (Oral)','3367',59,15,'20/05/2017'),(549,'Zaleplón (Oral)','4835',8,21,'13/02/2017'),(550,'Zanamivir (Por Inhalación)','4175',48,25,'22/02/2017'),(551,'Zidovudina (Oral)','4911',35,20,'23/09/2016'),(552,'Zidovudina (Por Inyección)','1460',84,28,'11/05/2017'),(553,'Zileutón (Oral)','2978',27,5,'07/05/2016'),(554,'Zolmitriptán (Oral)','1384',77,9,'23/12/2016'),(555,'Zolpidem (Oral)','2711',76,18,'29/05/2017');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `id_notificacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha_activacion` varchar(45) NOT NULL,
  `minuto_activacion` varchar(45) NOT NULL,
  `medidiado` varchar(45) NOT NULL,
  `dias_activo` varchar(50) NOT NULL,
  `usuarios_dirigidos` varchar(45) NOT NULL,
  `hora_activacion` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id_notificacion`),
  KEY `fk_notificaciones_usuarios_idx` (`usuarios_dirigidos`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (12,'ISRAEL MUÑOZ URIAS','NADA\r\nNADA','JUEVES, 14 DE ENERO DE 2016','21','AM','lunes','MARTES','2','martes'),(13,'ISRAEL MUÑOZ URIAS','NADA\r\nNADA','JUEVES, 14 DE ENERO DE 2016','21','AM','lunes','MARTES','2','martes'),(14,'ISRAEL MUÑOZ URIAS','','DOMINGO, 17 DE ENERO DE 2016','','','','','',''),(15,'ISRAEL MUÑOZ URIAS','','DOMINGO, 17 DE ENERO DE 2016','','','','','',''),(16,'ISRAEL MUÑOZ URIAS','','DOMINGO, 17 DE ENERO DE 2016','','','','','',''),(17,'ISRAEL MUÑOZ URIAS','','MARTES, 19 DE ENERO DE 2016','','','','','',''),(18,'ISRAEL MUÑOZ URIAS','','MARTES, 19 DE ENERO DE 2016','','','','','',''),(19,'ISRAEL MUÑOZ URIAS','','MARTES, 19 DE ENERO DE 2016','','','','','',''),(20,'ISRAEL MUÑOZ URIAS','','MARTES, 19 DE ENERO DE 2016','','','','','',''),(21,'ISRAEL MUÑOZ URIAS','','MARTES, 19 DE ENERO DE 2016','','','','','',''),(22,'ISRAEL MUÑOZ URIAS','','MARTES, 19 DE ENERO DE 2016','','','','','',''),(23,'ISRAEL MUÑOZ URIAS','','MARTES, 19 DE ENERO DE 2016','','','','','','');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporadas`
--

DROP TABLE IF EXISTS `temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporadas` (
  `idtemporadas` int(11) NOT NULL AUTO_INCREMENT,
  `nom_temporada` varchar(45) NOT NULL,
  `fecha_Inico` date NOT NULL,
  `fecha_Final` date NOT NULL,
  `des_Adu` int(11) DEFAULT '0',
  `des_Est` int(11) DEFAULT '0',
  `des_Pro` int(11) DEFAULT '0',
  `des_3ed` int(11) DEFAULT '0',
  `des_Men` int(11) DEFAULT '0',
  PRIMARY KEY (`idtemporadas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporadas`
--

LOCK TABLES `temporadas` WRITE;
/*!40000 ALTER TABLE `temporadas` DISABLE KEYS */;
INSERT INTO `temporadas` VALUES (1,'BAJA','2015-08-24','2015-12-01',0,0,0,0,0),(2,'ALTA','2015-08-24','2015-12-01',10,50,25,50,50),(3,'NORMAL','2015-01-01','2015-06-30',0,0,0,50,50),(4,'ESPECIAL','2015-05-25','2015-05-29',10,10,10,65,60),(5,'ESPECIALOIDE','2015-06-01','2015-06-05',25,30,25,50,50);
/*!40000 ALTER TABLE `temporadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapeuta`
--

DROP TABLE IF EXISTS `terapeuta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terapeuta` (
  `id_terapeuta` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_terapeuta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapeuta`
--

LOCK TABLES `terapeuta` WRITE;
/*!40000 ALTER TABLE `terapeuta` DISABLE KEYS */;
INSERT INTO `terapeuta` VALUES (1,'Abel Braulio Dorens Viera'),(2,'Alfonsina Elisa Casal Moreira'),(3,'Alicia Olivia Peláez Jaume'),(4,'Alma Brenda Oliva Acevedo'),(5,'Ana Celestina Damiano Alvaredo');
/*!40000 ALTER TABLE `terapeuta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapia`
--

DROP TABLE IF EXISTS `terapia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terapia` (
  `id_tereapia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tereapia`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapia`
--

LOCK TABLES `terapia` WRITE;
/*!40000 ALTER TABLE `terapia` DISABLE KEYS */;
INSERT INTO `terapia` VALUES (1,'Activación Y Terapia Física','400'),(2,'Actividades Lúdicas','330'),(3,'Estimulación Cognitiva','440'),(4,'Gimnasia Cerebral','500'),(5,'Manualidades','333'),(6,'Musicoterapia','430'),(7,'Pintura','100'),(8,'Taller De Memoria','340'),(9,'Taller De Reminiscencias','500'),(10,'Temporo-Espacial','900');
/*!40000 ALTER TABLE `terapia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `Total` varchar(45) NOT NULL,
  `id_nosequemas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'121','1221sddsa'),(2,'23','faltan mas cosas');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_medida`
--

DROP TABLE IF EXISTS `unidad_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_medida` (
  `id_unidad_medida` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_unidad_medida`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_medida`
--

LOCK TABLES `unidad_medida` WRITE;
/*!40000 ALTER TABLE `unidad_medida` DISABLE KEYS */;
INSERT INTO `unidad_medida` VALUES (1,'Caja'),(2,'Galón'),(3,'Gramo'),(4,'Kilo'),(5,'Litro'),(6,'Lote'),(7,'Paquete'),(8,'Pieza'),(9,'Tonelada'),(10,'Unidad');
/*!40000 ALTER TABLE `unidad_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `apellidom` varchar(50) DEFAULT NULL,
  `PASS_USUARIO` varchar(45) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `tipo_usuario` varchar(45) NOT NULL,
  `especialidad_id_especialidades` varchar(50) NOT NULL,
  `curp` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  `txt_salario` decimal(14,0) NOT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ISRAEL','MUÑOZ','URIAS','SILOBISTES','LOS MOCHIS','ADMINISTRADOR','CHEF','MUUI921205HSLXRS06','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','ELCHILO_333@HOTMAIL.COM',10000),(2,'ARMIDA','URIAS','CASTILLO','123','TOPOLOBAMPO','ALMACENISTA','COCINERO','MUUI921205HSLXRS08','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','ARMIDA@HOTAIL.COM',1000),(3,'DELFINA','OSORIO','','123','CARRETERA MOCHIS TOPO','CAJERO','CHEF','MUUI921205HSLXRS06','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','DELFINA_EL@HOTMAIL.COM',400),(4,'JESSICA','DUCKCASDAD','URIAS','123','US','COCINERO','DOCTOR','MUUI921205HSLXRS06','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','YECA@GMAIL.COM',3443),(5,'JSILIM','PARRA','MUÑOZ','123','CONOCIDO','DOCTOR','DOCTOR','MUUI921205HSLXRS06','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','JSILIM@HOTMAIL.COM',34343),(6,'ANGEL DE JESUS','MUÑOZ','URIAS','123','EL CAMPITO','ENFERMERO','ENFERMERO','MUUI921205HSLXRS06','DESACTIVADO','DOMINGO, 17 DE ENERO DE 2016','ANGEL@HOTMAIL.COM',344),(7,'DAVID','URIAS','MUÑOZ','123','MAZATLAN','LIMPIEZA','DOCTOR','MUUI921205HSLXRS06','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','DAVID_GORDO@HOTMAIL.COM',21323),(8,'EDMUNDO','MUÑOZ','OSORIO','123','LOS POSOS','SEGURIDAD','CHEF','MUUI921205HSLXRS06','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','EDMUNDO@HOTMAIL.COM',65645),(9,'MARIA','URIAS','ALVARES','123','US','TERAPEUTA','TERAPEUTA','MUUI921205HSLXRS06','ACTIVADO','DOMINGO, 17 DE ENERO DE 2016','MARIA@HOTMAIL.COM',56456);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'asilo'
--

--
-- Dumping routines for database 'asilo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-16 12:39:12
