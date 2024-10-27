/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yingyuangoupiao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yingyuangoupiao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yingyuangoupiao`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客服反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'hhhh','2023-04-25 10:32:47',NULL,NULL,2,1,'2023-04-25 10:32:47'),(2,1,NULL,NULL,'hsfhfshs的双缝干涉','2023-04-25 10:32:58',NULL,2,'2023-04-25 10:32:59'),(3,4,'gds孤独颂歌','2023-04-25 10:40:01',NULL,NULL,2,1,'2023-04-25 10:40:01'),(4,4,NULL,NULL,'和京津冀军','2023-04-25 10:40:12',NULL,2,'2023-04-25 10:40:12'),(5,4,NULL,NULL,'发的更好地发挥','2023-04-25 10:40:15',NULL,2,'2023-04-25 10:40:16'),(6,4,NULL,NULL,'规范化规范化','2023-04-25 10:40:18',NULL,2,'2023-04-25 10:40:18');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1哈哈哈哈','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dianying` */

DROP TABLE IF EXISTS `dianying`;

CREATE TABLE `dianying` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dianying_name` varchar(200) DEFAULT NULL COMMENT '电影名称 Search111 ',
  `dianying_photo` varchar(200) DEFAULT NULL COMMENT '电影海报',
  `dianying_types` int(11) DEFAULT NULL COMMENT '电影类型 Search111',
  `shangying_time` date DEFAULT NULL COMMENT '上映日期',
  `dianying_zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `dianying_diqu` varchar(200) DEFAULT NULL COMMENT '电影地区',
  `dianying_yuyan` varchar(200) DEFAULT NULL COMMENT '语言',
  `dianying_didian` varchar(200) DEFAULT NULL COMMENT '放映地点',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `dianying_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `dianying_old_money` decimal(10,2) DEFAULT NULL COMMENT '电影原价 ',
  `dianying_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `dianying_shichang` int(11) DEFAULT NULL COMMENT '电影时长',
  `dianying_clicknum` int(11) DEFAULT NULL COMMENT '电影热度',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `dianying_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `dianying_content` longtext COMMENT '电影简介',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='电影';

/*Data for the table `dianying` */

insert  into `dianying`(`id`,`dianying_name`,`dianying_photo`,`dianying_types`,`shangying_time`,`dianying_zhuyan`,`dianying_diqu`,`dianying_yuyan`,`dianying_didian`,`zan_number`,`cai_number`,`dianying_price`,`dianying_old_money`,`dianying_new_money`,`zuowei_number`,`dianying_shichang`,`dianying_clicknum`,`shangxia_types`,`dianying_delete`,`dianying_content`,`create_time`) values (1,'电影名称1','upload/dianying1.jpg',4,'2023-04-24','主演1','电影地区1','语言1','放映地点1',422,216,247,'792.98','491.27',20,233,4,1,1,'电影简介1','2023-04-24 16:26:10'),(2,'电影名称2','upload/dianying2.jpg',2,'2023-04-24','主演2','电影地区2','语言2','放映地点2',430,400,76,'992.00','439.86',20,464,57,1,1,'电影简介2','2023-04-24 16:26:10'),(3,'电影名称3','upload/dianying3.jpg',2,'2023-04-24','主演3','电影地区3','语言3','放映地点3',454,476,66,'699.43','373.01',20,293,321,1,1,'电影简介3','2023-04-24 16:26:10'),(4,'电影名称4','upload/dianying4.jpg',1,'2023-04-24','主演4','电影地区4','语言4','放映地点4',38,181,446,'645.82','384.48',20,217,518,1,1,'电影简介4','2023-04-24 16:26:10'),(5,'电影名称5','upload/dianying5.jpg',2,'2023-04-24','主演5','电影地区5','语言5','放映地点5',138,51,214,'921.07','451.56',20,223,229,1,1,'电影简介5','2023-04-24 16:26:10'),(6,'电影名称6','upload/dianying6.jpg',1,'2023-04-24','主演6','电影地区6','语言6','放映地点6',168,352,123,'631.86','311.13',20,331,327,1,1,'电影简介6','2023-04-24 16:26:10'),(7,'电影名称7','upload/dianying7.jpg',1,'2023-04-24','主演7','电影地区7','语言7','放映地点7',52,252,157,'598.39','138.51',20,112,313,1,1,'电影简介7','2023-04-24 16:26:10'),(8,'电影名称8','upload/dianying8.jpg',2,'2023-04-24','主演8','电影地区8','语言8','放映地点8',110,393,176,'597.36','367.06',20,425,410,1,1,'电影简介8','2023-04-24 16:26:10'),(9,'电影名称9','upload/dianying9.jpg',2,'2023-04-24','主演9','电影地区9','语言9','放映地点9',240,64,13,'898.83','122.87',20,86,508,1,1,'电影简介9','2023-04-24 16:26:10'),(10,'电影名称10','upload/dianying10.jpg',4,'2023-04-24','主演10','电影地区10','语言10','放映地点10',56,210,317,'803.11','374.91',20,440,362,1,1,'电影简介10','2023-04-24 16:26:10'),(11,'电影名称11','upload/dianying11.jpg',4,'2023-04-24','主演11','电影地区11','语言11','放映地点11',113,67,17,'970.98','64.77',20,332,2,1,1,'电影简介11','2023-04-24 16:26:10'),(12,'电影名称12','upload/dianying12.jpg',1,'2023-04-24','主演12','电影地区12','语言12','放映地点12',481,361,60,'850.40','321.71',20,374,134,1,1,'电影简介12','2023-04-24 16:26:10'),(13,'电影名称13','upload/dianying13.jpg',3,'2023-04-24','主演13','电影地区13','语言13','放映地点13',269,53,467,'997.75','36.38',20,171,119,1,1,'电影简介13','2023-04-24 16:26:10'),(14,'电影名称14','upload/dianying14.jpg',1,'2023-04-24','主演14','电影地区14','语言14','放映地点14',418,339,472,'904.65','201.75',20,416,359,1,1,'<p>电影简介14个是大概多少根深蒂固</p>','2023-04-24 16:26:10');

/*Table structure for table `dianying_collection` */

DROP TABLE IF EXISTS `dianying_collection`;

CREATE TABLE `dianying_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='电影收藏';

/*Data for the table `dianying_collection` */

insert  into `dianying_collection`(`id`,`dianying_id`,`yonghu_id`,`dianying_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(2,2,2,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(3,3,2,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(4,4,1,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(5,5,2,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(6,6,1,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(7,7,1,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(8,8,3,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(9,9,1,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(10,10,1,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(11,11,2,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(12,12,3,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(13,13,2,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(14,14,1,1,'2023-04-24 16:26:10','2023-04-24 16:26:10'),(15,4,1,2,'2023-04-24 17:30:50','2023-04-24 17:30:50'),(16,8,4,1,'2023-04-25 10:39:39','2023-04-25 10:39:39'),(17,10,4,1,'2023-04-25 10:39:43','2023-04-25 10:39:43'),(18,3,4,1,'2023-04-25 10:39:47','2023-04-25 10:39:47');

/*Table structure for table `dianying_commentback` */

DROP TABLE IF EXISTS `dianying_commentback`;

CREATE TABLE `dianying_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_commentback_pingfen_number` int(11) DEFAULT NULL COMMENT '评分',
  `dianying_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='电影评价';

/*Data for the table `dianying_commentback` */

insert  into `dianying_commentback`(`id`,`dianying_id`,`yonghu_id`,`dianying_commentback_pingfen_number`,`dianying_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,0,'评价内容1','2023-04-24 16:26:10','回复信息1','2023-04-24 16:26:10','2023-04-24 16:26:10'),(2,2,2,1,'评价内容2','2023-04-24 16:26:10','回复信息2','2023-04-24 16:26:10','2023-04-24 16:26:10'),(3,3,1,4,'评价内容3','2023-04-24 16:26:10','回复信息3','2023-04-24 16:26:10','2023-04-24 16:26:10'),(4,4,1,1,'评价内容4','2023-04-24 16:26:10','回复信息4','2023-04-24 16:26:10','2023-04-24 16:26:10'),(5,5,2,5,'评价内容5','2023-04-24 16:26:10','回复信息5','2023-04-24 16:26:10','2023-04-24 16:26:10'),(6,6,1,2,'评价内容6','2023-04-24 16:26:10','回复信息6','2023-04-24 16:26:10','2023-04-24 16:26:10'),(7,7,2,4,'评价内容7','2023-04-24 16:26:10','回复信息7','2023-04-24 16:26:10','2023-04-24 16:26:10'),(8,8,3,3,'评价内容8','2023-04-24 16:26:10','回复信息8','2023-04-24 16:26:10','2023-04-24 16:26:10'),(9,9,2,0,'评价内容9','2023-04-24 16:26:10','回复信息9','2023-04-24 16:26:10','2023-04-24 16:26:10'),(10,10,3,0,'评价内容10','2023-04-24 16:26:10','回复信息10','2023-04-24 16:26:10','2023-04-24 16:26:10'),(11,11,3,2,'评价内容11','2023-04-24 16:26:10','回复信息11','2023-04-24 16:26:10','2023-04-24 16:26:10'),(12,12,3,2,'评价内容12','2023-04-24 16:26:10','回复信息12','2023-04-24 16:26:10','2023-04-24 16:26:10'),(13,13,3,2,'评价内容13','2023-04-24 16:26:10','回复信息13','2023-04-24 16:26:10','2023-04-24 16:26:10'),(14,14,2,5,'评价内容14','2023-04-24 16:26:10','回复信息14','2023-04-24 16:26:10','2023-04-24 16:26:10');

/*Table structure for table `dianying_order` */

DROP TABLE IF EXISTS `dianying_order`;

CREATE TABLE `dianying_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianying_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `dianying_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `dianying_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `changci_types` int(11) DEFAULT NULL COMMENT '场次 Search111 ',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='电影订单';

/*Data for the table `dianying_order` */

insert  into `dianying_order`(`id`,`dianying_order_uuid_number`,`dianying_id`,`yonghu_id`,`dianying_order_true_price`,`dianying_order_types`,`dianying_order_payment_types`,`changci_types`,`buy_zuowei_number`,`buy_zuowei_time`,`insert_time`,`create_time`) values (1,'1682328274271',4,1,'768.96',101,1,3,'1,2','2023-04-25','2023-04-24 17:24:34','2023-04-24 17:24:34'),(2,'1682389564782',4,1,'753.58',101,1,2,'2,3','2023-04-25','2023-04-25 10:26:05','2023-04-25 10:26:05'),(3,'1682389765217',4,1,'753.58',101,1,4,'2,3','2023-04-25','2023-04-25 10:29:25','2023-04-25 10:29:25'),(4,'1682389780661',4,1,'768.96',101,2,3,'8,9','2023-04-25','2023-04-25 10:29:41','2023-04-25 10:29:41'),(5,'1682389799231',4,1,'384.48',101,2,4,'7','2023-04-25','2023-04-25 10:29:59','2023-04-25 10:29:59'),(6,'1682389835713',4,1,'768.96',103,2,3,'7,17','2023-04-25','2023-04-25 10:30:36','2023-04-25 10:30:36'),(7,'1682390089875',4,4,'753.58',101,1,4,'4,13','2023-04-25','2023-04-25 10:34:50','2023-04-25 10:34:50'),(8,'1682390103833',4,4,'753.58',101,1,4,'6,15','2023-04-25','2023-04-25 10:35:04','2023-04-25 10:35:04'),(9,'1682390120600',9,4,'240.83',101,1,2,'8,9','2023-04-25','2023-04-25 10:35:21','2023-04-25 10:35:21'),(10,'1682390293199',4,4,'753.58',103,1,4,'11,12','2023-04-25','2023-04-25 10:38:13','2023-04-25 10:38:13'),(11,'1682390350015',4,4,'768.96',103,2,4,'17,18','2023-04-25','2023-04-25 10:39:10','2023-04-25 10:39:10');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-24 16:25:30'),(18,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-24 16:25:30'),(19,'huodong_types','活动类型',1,'活动类型1',NULL,NULL,'2023-04-24 16:25:31'),(20,'huodong_types','活动类型',2,'活动类型2',NULL,NULL,'2023-04-24 16:25:31'),(21,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-24 16:25:31'),(22,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-24 16:25:31'),(23,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-24 16:25:31'),(24,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-24 16:25:31'),(25,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-24 16:25:31'),(26,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-24 16:25:31'),(27,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2023-04-24 16:25:31'),(28,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2023-04-24 16:25:31'),(29,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2023-04-24 16:25:31'),(30,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-24 16:25:31'),(31,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-24 16:25:31'),(32,'changci_types','场次',1,'第一场(8:00)',NULL,NULL,'2023-04-24 16:25:31'),(33,'changci_types','场次',2,'第二场(10:00)',NULL,NULL,'2023-04-24 16:25:31'),(34,'changci_types','场次',3,'第三场(14:00)',NULL,NULL,'2023-04-24 16:25:31'),(35,'changci_types','场次',4,'第四场(16:00)',NULL,NULL,'2023-04-24 16:25:31'),(36,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-24 16:25:31'),(37,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-24 16:25:31'),(38,'dianying_types','电影类型',1,'电影类型1',NULL,NULL,'2023-04-24 16:25:31'),(39,'dianying_types','电影类型',2,'电影类型2',NULL,NULL,'2023-04-24 16:25:31'),(40,'dianying_types','电影类型',3,'电影类型3',NULL,NULL,'2023-04-24 16:25:31'),(41,'dianying_types','电影类型',4,'电影类型4',NULL,NULL,'2023-04-24 16:25:31'),(42,'dianying_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-24 16:25:31'),(43,'dianying_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-24 16:25:31'),(44,'dianying_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-24 16:25:31'),(45,'dianying_order_types','订单类型',101,'已购买',NULL,NULL,'2023-04-24 16:25:31'),(46,'dianying_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-24 16:25:31'),(47,'dianying_order_types','订单类型',103,'已检票',NULL,NULL,'2023-04-24 16:25:32'),(48,'dianying_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-24 16:25:32'),(49,'dianying_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2023-04-24 16:25:32'),(50,'dianying_order_payment_types','订单支付类型',2,'积分',NULL,NULL,'2023-04-24 16:25:32'),(51,'gonggao_types','公告类型',3,'公告类型3',NULL,'','2023-04-25 10:41:06');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-24 16:26:10','公告详情1','2023-04-24 16:26:10'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-24 16:26:10','公告详情2','2023-04-24 16:26:10'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-24 16:26:10','公告详情3','2023-04-24 16:26:10'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-24 16:26:10','公告详情4','2023-04-24 16:26:10'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-24 16:26:10','公告详情5','2023-04-24 16:26:10'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-24 16:26:10','公告详情6','2023-04-24 16:26:10'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-24 16:26:10','公告详情7','2023-04-24 16:26:10'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-24 16:26:10','公告详情8','2023-04-24 16:26:10'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-24 16:26:10','公告详情9','2023-04-24 16:26:10'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-24 16:26:10','公告详情10','2023-04-24 16:26:10'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-24 16:26:10','公告详情11','2023-04-24 16:26:10'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-24 16:26:10','公告详情12','2023-04-24 16:26:10'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-24 16:26:10','公告详情13','2023-04-24 16:26:10'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-24 16:26:10','公告详情14','2023-04-24 16:26:10');

/*Table structure for table `huodong` */

DROP TABLE IF EXISTS `huodong`;

CREATE TABLE `huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称 Search111  ',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动图片 ',
  `huodong_types` int(11) NOT NULL COMMENT '活动类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `huodong_content` longtext COMMENT '活动详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodong` */

insert  into `huodong`(`id`,`huodong_name`,`huodong_photo`,`huodong_types`,`insert_time`,`huodong_content`,`create_time`) values (1,'活动名称1','upload/huodong1.jpg',2,'2023-04-24 16:26:10','活动详情1','2023-04-24 16:26:10'),(2,'活动名称2','upload/huodong2.jpg',1,'2023-04-24 16:26:10','活动详情2','2023-04-24 16:26:10'),(3,'活动名称3','upload/huodong3.jpg',1,'2023-04-24 16:26:10','活动详情3','2023-04-24 16:26:10'),(4,'活动名称4','upload/huodong4.jpg',1,'2023-04-24 16:26:10','活动详情4','2023-04-24 16:26:10'),(5,'活动名称5','upload/huodong5.jpg',2,'2023-04-24 16:26:10','活动详情5','2023-04-24 16:26:10'),(6,'活动名称6','upload/huodong6.jpg',2,'2023-04-24 16:26:10','活动详情6','2023-04-24 16:26:10'),(7,'活动名称7','upload/huodong7.jpg',2,'2023-04-24 16:26:10','活动详情7','2023-04-24 16:26:10'),(8,'活动名称8','upload/huodong8.jpg',2,'2023-04-24 16:26:10','活动详情8','2023-04-24 16:26:10'),(9,'活动名称9','upload/huodong9.jpg',2,'2023-04-24 16:26:10','活动详情9','2023-04-24 16:26:10'),(10,'活动名称10','upload/huodong10.jpg',1,'2023-04-24 16:26:10','活动详情10','2023-04-24 16:26:10'),(11,'活动名称11','upload/huodong11.jpg',1,'2023-04-24 16:26:10','活动详情11','2023-04-24 16:26:10'),(12,'活动名称12','upload/huodong12.jpg',1,'2023-04-24 16:26:10','活动详情12','2023-04-24 16:26:10'),(13,'活动名称13','upload/huodong13.jpg',2,'2023-04-24 16:26:10','活动详情13','2023-04-24 16:26:10'),(14,'活动名称14','upload/huodong14.jpg',2,'2023-04-24 16:26:10','活动详情14','2023-04-24 16:26:10');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','1pl8yx28kb047j9nho0qyyed7dqiui6w','2023-04-24 16:46:23','2023-04-25 10:48:41'),(2,1,'admin','users','管理员','29g9tyip9hxnm2vzlsav4u5wz9ol7z0j','2023-04-25 10:32:16','2023-04-25 11:40:31'),(3,4,'a5','yonghu','用户','nkq7zogwh0vruyr97bku2om1ussz8ww0','2023-04-25 10:34:01','2023-04-25 11:34:01');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-24 16:25:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`jinyong_types`,`create_time`) values (1,'a1','123456','1682324770580','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','654.53','1860.92','270.05',1,1,'2023-04-24 16:26:10'),(2,'a2','123456','1682324770582','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','927.64','502.61','30.17',1,1,'2023-04-24 16:26:10'),(3,'a3','123456','1682324770643','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','23.20','776.62','194.59',1,1,'2023-04-24 16:26:10'),(4,'a5','123456','1682390033684','张5','17788889999','444222333366669999','upload/1682390065081.jpg',2,'5@qq.com','97497.43','892.00','123.04',1,2,'2023-04-25 10:33:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
