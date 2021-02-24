/*
 Navicat Premium Data Transfer

 Source Server         : zpl
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : logistics_system

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 08/05/2019 19:27:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `carload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `length` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `public_date` datetime(0) NULL DEFAULT NULL,
  `state` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_owner_id` int(11) NULL DEFAULT NULL,
  `car_source_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKb4sglqcmck666nk0gyqavm7bi`(`car_owner_id`) USING BTREE,
  INDEX `FK368veuefpa9ali4n6y590p3ls`(`car_source_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, '张培梁', '5', 1, '8米', '粤A34224', '2019-04-23 21:45:15', 1, '平板车', '4.2米', 1, NULL);
INSERT INTO `car` VALUES (4, '下一站', '10', 1, '10米', '苏F21312', '2019-04-26 20:30:46', 3, '高栏车', '4.3米', 2, NULL);
INSERT INTO `car` VALUES (17, '张培梁', '10', 1, '10米', '滇A1231', '2019-05-01 17:44:14', 1, '高栏车', '4.4米', 1, NULL);
INSERT INTO `car` VALUES (18, '张培梁', '10', 1, '10米', '湘C253423', '2019-05-07 20:21:56', 3, '托运车', '4.5米', 1, NULL);
INSERT INTO `car` VALUES (19, '张培梁', '11', 1, '10米', '贵A890', '2019-05-07 23:14:28', 3, '托运车', '4.3米', 1, NULL);
INSERT INTO `car` VALUES (20, '张培梁', '6', 1, '8米', '贵A3523', '2019-05-02 22:34:19', 1, '托运车', '4.3米', 1, NULL);
INSERT INTO `car` VALUES (23, '张培梁', '7', 1, '8米', '贵A345', '2019-05-05 16:19:17', 1, '托运车', '4.3米', 1, NULL);
INSERT INTO `car` VALUES (24, '张培梁', '5', 1, '8.3米', '陕A989', '2019-05-05 16:19:47', 1, '高栏车', '4.2米', 1, NULL);
INSERT INTO `car` VALUES (25, '张培梁', '10', 0, '10米', '蒙A84442', '2019-05-05 16:20:18', 1, '托运车', '4.5米', 1, NULL);
INSERT INTO `car` VALUES (26, '张培梁', '5', 0, '7米', '桂A345435', '2019-05-05 17:06:51', 1, '高栏车', '4.3米', 1, NULL);
INSERT INTO `car` VALUES (27, '张培梁', '10', 1, '10米', '湘A2324', '2019-05-07 20:18:06', 3, '托运车', '4.3米', 1, NULL);
INSERT INTO `car` VALUES (28, '张培梁', '6', 1, '7米', '新B3453', '2019-05-07 23:51:07', 4, '高栏车', '4.3米', 1, NULL);

-- ----------------------------
-- Table structure for carowner
-- ----------------------------
DROP TABLE IF EXISTS `carowner`;
CREATE TABLE `carowner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carowner_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` int(11) NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carowner
-- ----------------------------
INSERT INTO `carowner` VALUES (1, '元气满满的一天', 4, 3, '1720619112@qq.com', 0, '张培梁', '809020', 18, NULL, '18292686978');
INSERT INTO `carowner` VALUES (2, '元气满满的一天', 2, 2, 'xsdzpl@163.com', 1, '下一站', '809020', 14, NULL, '15115256021');

-- ----------------------------
-- Table structure for carsource
-- ----------------------------
DROP TABLE IF EXISTS `carsource`;
CREATE TABLE `carsource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `receiver_city` int(11) NOT NULL,
  `receiver_country` int(11) NOT NULL,
  `receiver_province` int(11) NOT NULL,
  `sender_city` int(11) NOT NULL,
  `sender_country` int(11) NOT NULL,
  `sender_province` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `car_id` int(11) NULL DEFAULT NULL,
  `car_owner_id` int(11) NULL DEFAULT NULL,
  `carload` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6yv1f3495rcomqlu1eegus8g1`(`car_id`) USING BTREE,
  INDEX `FKcuml500n45km9ulrbxpefknno`(`car_owner_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carsource
-- ----------------------------
INSERT INTO `carsource` VALUES (1, '车况良好，请各位货主放心下单', 'CN20190423214623903', '张培梁', '2019-04-23 21:46:24', 1, '粤A34224', 2, 3, 18, 12, 1, 19, 5, 1, 1, 5, '18292686978');
INSERT INTO `carsource` VALUES (8, '车况良好', 'CN20190426205434720', '下一站', '2019-04-26 20:55:16', 1, '苏F21312', 2, 2, 12, 2, 2, 10, 3, 4, 2, 10, '15115256021');
INSERT INTO `carsource` VALUES (13, '车况良好', 'CN20190501211450560', '张培梁', '2019-05-01 21:14:51', 1, '湘C253423', 1, 1, 16, 3, 2, 18, 3, 18, 1, 10, '18292686978');
INSERT INTO `carsource` VALUES (14, '车况良好', 'CN20190501224452385', '张培梁', '2019-05-07 23:45:52', 1, '贵A890', 0, 0, 3, 0, 1, 23, 3, 19, 1, 12, '18292686978');
INSERT INTO `carsource` VALUES (15, '车况良好', 'CN20190502223449028', '张培梁', '2019-05-02 22:34:49', 0, '贵A3523', 0, 1, 21, 0, 1, 23, 1, 20, 1, 6, '18292686978');
INSERT INTO `carsource` VALUES (19, '车况良好', 'CN20190505162047137', '张培梁', '2019-05-07 23:53:02', 0, '贵A345', 1, 0, 13, 0, 0, 18, 1, 23, 1, 7, '18292686978');
INSERT INTO `carsource` VALUES (20, '车况良好', 'CN20190505162102562', '张培梁', '2019-05-05 16:21:03', 0, '陕A989', 0, 0, 16, 0, 1, 26, 1, 24, 1, 5, '18292686978');
INSERT INTO `carsource` VALUES (24, '车况良好', 'CN20190507203004760', '张培梁', '2019-05-07 20:54:47', 1, '湘A2324', 0, 0, 12, 2, 0, 19, 3, 27, 1, 10, '18292686978');
INSERT INTO `carsource` VALUES (25, '车况良好', 'CN20190507205221975', '张培梁', '2019-05-07 20:52:22', 0, '滇A1231', 0, 0, 1, 0, 0, 24, 1, 17, 1, 10, '18292686978');
INSERT INTO `carsource` VALUES (26, '车况良好', 'CN20190507235138985', '张培梁', '2019-05-07 23:51:39', 1, '新B3453', 3, 3, 16, 1, 2, 30, 4, 28, 1, 6, '18292686978');
INSERT INTO `carsource` VALUES (27, '车况良好', 'CN20190508153854881', '张培梁', '2019-05-08 15:38:55', 0, '粤A34224', 0, 0, 16, 0, 0, 19, 1, 1, 1, 5, '18292686978');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_city` int(11) NOT NULL,
  `company_country` int(11) NOT NULL,
  `company_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `company_province` int(11) NOT NULL,
  `pic_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pic_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pic_phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `public_date` datetime(0) NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdhowrmgriwmyel7nvbq6jh4bo`(`admin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (2, 0, 2, '顺丰物流，全国速达', '顺丰物流', 2, 'qwe12@qq.com', '小苏打a', '12367892345', '2019-05-04 14:58:18', NULL);
INSERT INTO `company` VALUES (3, 0, 3, '星火物流公司，最新最快的物流服务', '星火物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-04-22 09:04:53', 1);
INSERT INTO `company` VALUES (4, 0, 3, '星火物流公司，最新最快的物流服务', '星火物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-04-22 09:04:53', 1);
INSERT INTO `company` VALUES (5, 0, 3, '星火物流公司，最新最快的物流服务', '星火物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-04-22 09:04:53', 1);
INSERT INTO `company` VALUES (6, 0, 3, '星火物流公司，最新最快的物流服务', '星火物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-04-22 09:04:53', 1);
INSERT INTO `company` VALUES (7, 0, 3, '圆通物流公司，最新最快的物流服务', '圆通物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-05-06 09:55:43', NULL);
INSERT INTO `company` VALUES (8, 0, 3, '星火物流公司，最新最快的物流服务', '顺丰物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-05-06 09:55:29', NULL);
INSERT INTO `company` VALUES (9, 0, 3, '星火物流公司，最新最快的物流服务', '星火物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-04-22 09:04:53', 1);
INSERT INTO `company` VALUES (11, 0, 3, '中通物流公司，最新最快的物流服', '中通物流', 0, '67967876@163.com', '小燕子', '8008208820', '2019-05-06 09:55:15', NULL);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` int(11) NOT NULL,
  `goods_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `public_date` datetime(0) NULL DEFAULT NULL,
  `receiver_city` int(11) NOT NULL,
  `receiver_country` int(11) NOT NULL,
  `receiver_province` int(11) NOT NULL,
  `sender_city` int(11) NOT NULL,
  `sender_country` int(11) NOT NULL,
  `sender_province` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_owner_id` int(11) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKiaqknak9f9upsi61wwrg9vnby`(`goods_owner_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (2, 1, '继续5吨运力', 'GN20190423150345374', '王哥', '新鲜贵妃芒芒果', '2019-04-23 15:03:45', 2, 3, 18, 12, 1, 19, 5, NULL, '30万元', '5', 1, '13676051780');
INSERT INTO `goods` VALUES (3, 1, '需要5吨运力', 'GN20190425145719648', '王哥', '新疆哈密瓜', '2019-04-25 14:57:20', 3, 3, 16, 1, 2, 30, 4, NULL, '20万元', '5', 1, '13676051780');
INSERT INTO `goods` VALUES (15, 0, '需要5吨运力', 'GN20190504170211197', '王哥', '柑橘', '2019-05-04 17:02:11', 1, 0, 13, 0, 0, 18, 1, NULL, '20万元', '5', 1, '13676051780');
INSERT INTO `goods` VALUES (5, 1, '需要10吨运力', 'GN20190426141512345', '王哥', '可口可乐饮料1', '2019-05-02 12:24:20', 0, 0, 3, 0, 1, 23, 3, NULL, '20万元', '10', 1, '13676051780');
INSERT INTO `goods` VALUES (8, 0, '需要10吨运力', 'GN20190426141511423', '王哥', '可口可乐饮料4', '2019-05-02 22:35:25', 0, 1, 21, 0, 1, 23, 1, NULL, '20万元', '10', 1, '13676051780');
INSERT INTO `goods` VALUES (9, 1, '需要10吨运力', 'GN20190426141511456', '王哥', '可口可乐饮料5', '2019-04-26 14:15:11', 2, 2, 12, 2, 2, 10, 3, NULL, '20万元', '10', 1, '13676051780');
INSERT INTO `goods` VALUES (11, 1, '需要5吨运力', 'GN20190501211331416', '王哥', '大豆', '2019-05-01 21:13:31', 1, 1, 16, 3, 2, 18, 3, NULL, '10万元', '5', 1, '13676051780');
INSERT INTO `goods` VALUES (19, 0, '需要5吨运力', 'GN20190505170515750', '王哥', '泰国香米', '2019-05-05 17:05:16', 0, 0, 16, 0, 0, 20, 1, NULL, '50万元', '5', 1, '13676051780');
INSERT INTO `goods` VALUES (20, 0, '需要5吨运力', 'GN20190507203231166', '王哥', '甘蔗', '2019-05-07 20:32:31', 0, 0, 12, 2, 0, 19, 1, NULL, '10万元', '5', 1, '13676051780');
INSERT INTO `goods` VALUES (21, 1, '需要10吨运力', 'GN20190507204414949', '王哥', '大米', '2019-05-07 20:44:15', 0, 0, 12, 2, 0, 19, 3, NULL, '30万元', '10', 1, '13676051780');
INSERT INTO `goods` VALUES (22, 0, '需要3吨车源', 'GN20190508153252362', '王哥', '樱桃', '2019-05-08 15:32:52', 0, 0, 1, 13, 1, 15, 1, NULL, '30万元', '3', 1, '13676051780');

-- ----------------------------
-- Table structure for goodsowner
-- ----------------------------
DROP TABLE IF EXISTS `goodsowner`;
CREATE TABLE `goodsowner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `goodsowner_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` int(11) NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodsowner
-- ----------------------------
INSERT INTO `goodsowner` VALUES (1, 5, 0, 'zpl809020@qq.com', 5, '元气满满', '王哥', '809020', 18, NULL, '13676051780');
INSERT INTO `goodsowner` VALUES (3, 0, 0, 'zpl809020@qq.com', 0, '', '小李', '809020', 21, NULL, '18374567114');
INSERT INTO `goodsowner` VALUES (5, 2, 1, '2089377159@qq.com', 0, '', '爱仕达', '123456', 17, NULL, '13672693447');

-- ----------------------------
-- Table structure for individual
-- ----------------------------
DROP TABLE IF EXISTS `individual`;
CREATE TABLE `individual`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NULL DEFAULT NULL,
  `individual_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `individual_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK8a2td901if39mhi5cc5ac95y0`(`admin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of individual
-- ----------------------------
INSERT INTO `individual` VALUES (1, '2019-04-22 10:03:52', '本人长期从事物流运输工作，需要车源运输请直接电话联系', '黄豆豆', '新时代物流人——草头王', 1, 'weq123@126.com', '18356781234');
INSERT INTO `individual` VALUES (3, '2019-04-22 10:23:43', '本人长期从事提供各类海鲜，需要货源的可以电话或邮箱联系我', '王晓峰', '长期提供各类货源——位置广东', 1, '24224@126.com', '13689023456');
INSERT INTO `individual` VALUES (4, '2019-04-23 10:37:00', '本人长期提供各种农产品货源，有需要的可以联系我', '小红书', '提供大米、水果、蔬菜等货源——位置广东清远', 1, '4132132@126.com', '17823456781');
INSERT INTO `individual` VALUES (5, '2019-04-23 10:39:34', '本人长期提供各种水果，量大价优，需要的直接电话联系我。', '史蒂夫', '提供各类水果，量大价优，需要联系我——广西柳州', 1, '564343@163.com', '19256781234');
INSERT INTO `individual` VALUES (6, '2019-05-04 15:17:50', '本人长期提供运输服务，车辆为10吨中型运输车，本人地址广东清远，可接取广东境内各类货源，需要联系我', '李师傅a1', '长期提供10吨运力运输服务——全国均可', 1, 'lisf123@126.com', '18376541285');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `public_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (2, '能联系一下我吗', '小辣椒', '18256774567', '2019-04-24 13:59:10');
INSERT INTO `message` VALUES (3, '交个朋友', '范德萨', '15111672345', '2019-04-24 14:01:42');
INSERT INTO `message` VALUES (6, '管理大哥，找你有点事', '小张', '13672693447', '2019-05-07 20:15:38');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `news_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `news_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `public_date` datetime(0) NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK9torxbghcbvhljn2vtq2fjnc2`(`admin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '小燕子啊', '江铃新能源无人驾驶体验会现场，特顺EV无人驾驶车的各种前沿科技，一次又一次的刷新参观者的认知，那么这辆车的实际乘坐体验如何呢?“这次对我来说，是真正的第一次体验无人驾驶汽车，整个过程让我非常吃惊。虽然不是在公共道路上行驶，但是也有十字路、障碍物、模拟机器人等等，这辆车在没有任何人工干预的情况下，完全依靠自己来进行处理情况。无论周围发生什么，它都能继续安全的行驶，完全不像是车辆自己开，更像是人来开的。”一位试乘者对特顺EV无人驾驶车的表现是赞不绝口。', '获赞无数 江铃L4级无人驾驶让您不虚此行', '2019-05-04 14:48:03', NULL);
INSERT INTO `news` VALUES (2, '未知啊', '4月16日，以“共创美好生活”为主题的第十八届上海国际汽车工业展览会(简称：2019上海车展)在国家会展中心(上海)拉开帷幕，本届车展集中展示了汽车工业的创新发展成果，再次唱响“美好生活”主旋律。作为国内商用车领军品牌之一，福田汽车在上海车展发布全系国六产品等多款重磅新品，服务于绿色智慧城市生活。同时，福田图雅诺更是在本届上海车展发布了细分市场定制化车型：体检医疗车、四驱运兵车，并展出了图雅诺EV纯电动，引得行业专家、现场媒体、现场观众的纷纷关注。', '竞技上海车展 福田图雅诺再发定制化新品引领细分市场风向', '2019-05-04 14:48:18', NULL);
INSERT INTO `news` VALUES (3, '交通运输部', '为贯彻落实党中央、国务院关于推进“互联网+”高效物流发展相关部署要求，健全完善管理制度，规范培育现代物流市场新业态，加快推进道路货运行业转型升级高质量发展，交通运输部在系统梳理总结道路货运无车承运人试点工作的基础上，起草了《网络平台道路货物运输经营管理办法(征求意见稿)》，现向社会公开征求意见。\r\n\r\n公众可通过以下途径和方式提出反馈意见：\r\n\r\n1.登陆交通运输部网站(网址：http://www.mot.gov.cn)，进入首页右侧的“互动”栏“意见征集”点击“关于《网络平台道路货物运输经营管理办法(征求意见稿)》公开征求意见的通知”提出意见。\r\n\r\n2.电子邮箱：zhangqiang@mot.gov.cn\r\n\r\n3.通信地址：北京市建国门内大街11号交通运输部运输服务司货运与物流管理处(100736)。\r\n\r\n4.意见反馈截止时间为2019年5月1日。\r\n\r\n附《网络平台道路货物运输经营管理办法(征求意见稿)》：\r\n\r\n网络平台道路货物运输经营管理办法\r\n\r\n第一章、总则\r\n\r\n第一条、为促进道路货物运输业与互联网融合发展，规范网络平台道路货物运输经营活动，维护道路货物运输市场秩序，保护网络平台道路货物运输经营各方当事人的合法权益，根据《中华人民共和国道路运输条例》及有关法律法规的规定，制定本办法。\r\n\r\n第二条、从事网络平台道路货物运输(以下简称网络货运)经营，应当遵守本办法。\r\n\r\n本办法所称网络货运经营者，是指依托互联网平台整合配置运输资源，以承运人身份与托运人签订运输服务合同、承担承运人责任，委托实际承运人完成运输服务的道路货物运输经营者。\r\n\r\n实际承运人是指接受网络货运经营者委托，使用符合条件的车辆和驾驶员，实际从事运输服务的道路货物运输经营者。\r\n\r\n第三条、网络货运经营者从事经营活动，应当遵循自愿、平等、公平、诚信的原则，遵守法律和商业道德，公平参与市场竞争，履行消费者权益保护、环境保护、知识产权保护、网络安全与个人信息保护等方面的义务，承担服务质量责任，接受行业管理部门和社会的监督。\r\n\r\n网络货运管理应当公开、公正、公平、便民。\r\n\r\n第四条、国务院交通运输主管部门负责指导全国网络货运管理工作。\r\n\r\n县级以上地方人民政府交通运输主管部门负责组织指导本行政区域的网络货运管理工作。县级以上负有道路运输监督管理职责的机构具体实施本行政区域的网络货运管理工作。\r\n\r\n第五条、鼓励网络货运经营者利用大数据、云计算、卫星定位、人工智能等技术整合资源，应用多式联运、甩挂运输和共同配送等运输组织模式，实现规模化、集约化运输生产。鼓励组织新能源车辆、中置轴模块化汽车列车等标准化车辆运输。\r\n\r\n第二章、经营管理\r\n\r\n第六条、鼓励发展网络货运，促进物流资源集约整合、高效利用。\r\n\r\n从事网络货运经营且需要申领道路运输经营许可证的，可向所在地县级负有道路运输监督管理职责的机构提出申请，县级负有道路运输监督管理职责的机构应按照《中华人民共和国道路运输条例》、《道路货物运输及站场管理规定》的规定，向符合条件的申请人颁发《道路运输经营许可证》，经营范围为网络货运。\r\n\r\n从事网络货运经营的，还应按照《互联网信息服务管理办法》等相关法律法规规章的要求，取得增值电信业务经营许可证或备案证明，并具备其他相关线上服务能力。\r\n\r\n第七条、网络货运经营者应按照《中华人民共和国安全生产法》的规定，建立健全安全生产管理制度，落实安全生产主体责任。\r\n\r\n第八条、网络货运经营者应当在许可的经营范围内从事经营活动，不得承运危险货物(符合豁免要求的除外)。\r\n\r\n网络货运经营者不得运输法律法规规章禁止运输、存在重大安全隐患、或者托运人拒绝安全查验的货物。\r\n\r\n第九条、网络货运经营者应当对实际承运车辆及驾驶员资质进行审查，保证提供服务的车辆具备合法有效营运资质、驾驶员具有合法有效从业资格证。网络货运经营者应保证线上提供服务的车辆、驾驶员与线下实际提供服务的车辆、驾驶员一致。\r\n\r\n网络货运经营者委托运输不得超越实际承运人核定的经营范围。\r\n\r\n第十条、网络货运经营者组织实际承运人从事道路货物运输服务，经营行为应符合合同约定条款及国家相关运营服务规范。\r\n\r\n第十一条、网络货运经营者应当遵守车辆装载的要求，不得指使或者强令要求实际承运人超载、超限运输。\r\n\r\n第十二条、网络货运经营者互联网平台应接入省级交通运输主管部门监测系统，并按照相关技术规范的要求上传运单数据，包括实际承运人、车辆、驾驶员的基本信息，运输起讫点、收发货时间、货类货重、运输费用、路桥通行费发票信息等。\r\n\r\n第十三条、网络货运经营者应当采取承运人责任保险、保证金、保函等措施，充分保障托运人合法权益。\r\n\r\n第十四条、网络货运经营者应当按照《零担货物道路运输服务规范》的相关要求，对托运人身份进行查验登记，督促实际承运人实行安全查验制度，对货物进行安全检查或者开封验视。网络货运经营者应当如实记录托运人身份、物品信息。\r\n\r\n第十五条、网络货运经营者应当加强对实际承运人运输安全、服务质量的管理，建立对实际承运人的服务评价体系，公示服务评价结果。网络货运经营者应当建立投诉举报机制，对举报投诉及时处理。\r\n\r\n第十六条、网络货运经营者应当记录实际承运人、托运人在网络平台上发布的信息内容，包括用户注册信息、身份认证信息、订单日志、网上交易日志、行驶轨迹日志等信息，并确保信息的真实性、完整性、可用性。信息保存时间自交易完成之日起不少于三年;法律法规规章另有规定的，依照其规定。\r\n\r\n第十七条、网络货运经营者应当遵守国家网络和信息安全有关规定。\r\n\r\n第十八条、网络货运经营者应当采取有效措施加强对驾驶员、车辆、托运人等相关信息的保密管理，不得泄露、出售或者非法向他人提供信息，不得使用相关信息开展其他业务。\r\n\r\n第三章、监督检查\r\n\r\n第十九条、省级交通运输主管部门应按照相关技术规范的要求建立和完善省级网络货运经营信息监测系统，实现与网络货运经营者信息平台的有效对接。省级交通运输主管部门应当定期将监测数据上传至部网络货运经营信息交互系统，并与同级税务等部门建立信息共享机制。\r\n\r\n县级以上负有道路运输监督管理职责的机构应利用省级网络货运经营信息监测系统对网络货运经营者经营行为进行信息化监测，监测结果作为执法的重要依据。\r\n\r\n网络货运经营者应遵守国家税收等有关法律法规的规定，经有关部门核实，经营者存在虚开增值税专用发票等违法违规行为的，县级以上负有道路运输监督管理职责的机构应积极配合税务等部门依法查处。\r\n\r\n第二十条、网络货运经营者、实际承运人有违反道路运输法律法规规章规定的，由县级以上负有道路运输监督管理职责的机构按照《公路安全保护条例》《中华人民共和国道路运输条例》《道路货物运输及站场管理规定》的相关规定依法查处;构成犯罪的，依法追究刑事责任。\r\n\r\n第二十一条、县级以上负有道路运输监督管理职责的机构对实际承运人依法实施监督检查时，发现网络货运经营者有违反道路运输法律法规规章规定的违法行为，应当由违法行为发生地县级以上负有道路运输监督管理职责的机构依法处理。\r\n\r\n第二十二条、网络货运经营者违反道路运输法律法规规章及本办法相关规定的，县级以上负有道路运输监督管理职责的机构在作出行政处罚决定的过程中，按照《中华人民共和国行政处罚法》的规定，可以将其违法证据先行登记保存。\r\n\r\n第二十三条、省级交通运输主管部门应当建立网络货运经营者信用评价机制，定期组织开展网络货运经营者信用评价，并将信用评价结果、处罚记录等信息公示。\r\n\r\n第二十四条、鼓励相关行业自律组织建立网络货运经营失信当事人名单制度，引导网络货运经营者和实际承运人加强自律。\r\n\r\n第四章、附则\r\n\r\n第二十五条、本办法对网络货运经营未作规定的，按照《中华人民共和国电子商务法》《中华人民共和国行政许可法》《公路安全保护条例》《中华人民共和国道路运输条例》《道路货物运输及站场管理规定》及相关法律法规规章执行。\r\n\r\n第二十六条、本办法自2019年7月1日起施行。', '《网络平台道路货物运输经营管理办法（征求意见稿）》通知', '2019-04-23 10:33:53', 1);
INSERT INTO `news` VALUES (4, '物流与采购联合会', '商务部新闻发言人高峰28日表示，针对我国农产品流通过程中损耗率较高问题，商务部下一步将从多方面入手推动农产品冷链物流建设。\r\n\r\n近年来，我国农产品流通体系不断完善，全国农产品流通骨干网络基本形成，流通效率进一步提升。但同时，农产品流通中仍然存在一些难点，其中，农产品流通过程中的损耗率较高就是一大突出问题。\r\n\r\n2018年，商务部办公厅、国家标准化管理委员会联合印发关于复制推广农产品冷链流通标准化示范典型经验模式的通知，确定了31个试点城市和285家试点企业参与农产品冷链流通标准化示范。\r\n\r\n高峰在商务部当日召开的新闻发布会上表示，农产品冷链流通标准化试点示范工作，就是要探索解决农产品流通过程中“提高流通效率、减少流通损耗、降低流通成本”的问题。\r\n\r\n据介绍，经过商务部两年多试点示范，有关地方和企业探索出一些可复制推广的经验和模式。比如，在探索社区配送全程冷链物流方面，有的地方企业探索在产地源头建立农产品低温保鲜库。农产品经过预冷库预冷保鲜后，用冷藏车运送到社区冷链工作站。社区工作站配备专业商用冷链系统，实时监控温度，实现从田间地头到百姓餐桌的全程冷链。\r\n\r\n“下一步，商务部将围绕提升农产品冷链流通现代化水平，建立健全农产品产后服务体系，从产地集配中心、冷库等商品化处理设施入手，推动农产品在田头就变成标准化的高附加值商品，把农产品产业链增值更多留在乡村、惠及农民。”高峰说。\r\n\r\n此外，2019年，商务部还将采取多种措施，进一步完善农村和农产品流通体系，包括推动传统零售网点升级改造，鼓励发展连锁化经营和共同配送，加快补齐冷链物流基础设施短板等。', '商务部将进一步推动农产品冷链物流建设', '2019-04-23 10:34:54', 1);
INSERT INTO `news` VALUES (11, '佚名', '4月26日，第二届“一带一路”国际合作高峰论坛开幕式在北京举行。这是继2017年之后，“一带一路”沿线各国领导人和嘉宾再次聚首北京，为推动共建“一带一路”走深走实、构建人类命运共同体而集思广益、共襄盛举。国家主席习近平出席开幕式并发表主旨演讲。\r\n在演讲中，习近平围绕“一带一路”倡议，对今后如何落实这一倡议表明了大国立场，演讲掷地有声，信息满满。而对于物流人而言，可以说是信心满满。\r\n        那么，习近平演讲释放了哪些信号?又给物流人带来了哪些机会?我们不妨从10个维度进行分析。\r\n\r\n        @物流企业\r\n\r\n        维度一：夯实物流业发展基础\r\n\r\n        对于物流企业而言，一个充满机遇的时代来了\r\n\r\n        在各方共同努力下，“六廊六路多国多港”的互联互通架构基本形成，一大批合作项目落地生根，首届高峰论坛的各项成果顺利落实，150多个国家和国际组织同中国签署共建“一带一路”合作协议。\r\n\r\n        共建“一带一路”倡议同联合国、东盟、非盟、欧盟、欧亚经济联盟等国际和地区组织的发展和合作规划对接，同各国发展战略对接。\r\n\r\n        物流企业的机遇：对已经“走出去”和正准备“走出去”的物流企业而言，如何在这些合作项目上找到自身的发展机遇，抢占“一带一路”沿线区域的物流市场，指明了方向。\r\n\r\n        @快递物流企业\r\n\r\n        维度二：走绿色可持续发展道路\r\n\r\n        绿色物流是物流企业未来发展的“必选项”\r\n\r\n        我们要坚持开放、绿色理念，把绿色作为底色，推动绿色基础设施建设、绿色投资、绿色金融，保护好我们赖以生存的共同家园。\r\n\r\n        我们启动共建“一带一路”生态环保大数据服务平台，将继续实施绿色丝路使者计划，并同有关国家一道，实施“一带一路”应对气候变化南南合作计划。我们还将深化农业、卫生、减灾、水资源等领域合作，同联合国在发展领域加强合作，努力缩小发展差距。\r\n\r\n        快递物流企业的机遇：随着我国物流企业的现代化转型，加大物流行业的可持续发展，推动绿色物流战略应用等，逐步成为物流企业谋求发展的重要途径。而想要更好地融入“一带一路”建设，紧跟“绿色之风”必不可少。\r\n\r\n        @物流企业\r\n\r\n        维度三：物流企业\r\n\r\n        秉持共商共建共享原则，激发大家优势\r\n\r\n        我们要秉持共商共建共享原则，倡导多边主义，大家的事大家商量着办，推动各方各施所长、各尽所能，通过双边合作、三方合作、多边合作等各种形式，把大家的优势和潜能充分发挥出来，聚沙成塔、积水成渊。\r\n\r\n        物流企业的机遇：随着“一带一路”倡议的持续深入，各国与中国之间的合作也从单纯的商贸合作，拓展到了基础设施建设、科研创新、园区运营等领域。而这些领域又与物流业紧密相关，如何实现资源整合优化配置以达到合作共赢是每家物流企业都需要深思的问题。\r\n\r\n        @中欧班列企业\r\n\r\n        维度四：中欧班列在互联互通网络承载更多使命\r\n\r\n        搭建层次清晰、结构紧密的“一带一路”互联互通网络\r\n\r\n        基础设施是互联互通的基石，也是许多国家发展面临的瓶颈。建设高质量、可持续、抗风险、价格合理、包容可及的基础设施，有利于各国充分发挥资源禀赋，更好融入全球供应链、产业链、价值链，实现联动发展。\r\n\r\n        中国将同各方继续努力，构建以新亚欧大陆桥等经济走廊为引领，以中欧班列、陆海新通道等大通道和信息高速路为骨架，以铁路、港口、管网等为依托的互联互通网络。我们将继续发挥共建“一带一路”专项贷款、丝路基金、各类专项投资基金的作用，发展丝路主题债券，支持多边开发融资合作中心有效运作。我们欢迎多边和各国金融机构参与共建“一带一路”投融资，鼓励开展第三方市场合作，通过多方参与实现共同受益的目标。\r\n\r\n        中欧班列企业的机遇：当下，中欧班列到达“一带一路”沿线国家及地区不仅是为了物流运输，更重要的是向沿线区域宣传中国物流企业的雄厚实力。中欧班列代表着中国品牌的输出，承载中国物流企业形象的重要使命。\r\n\r\n        @商贸物流企业\r\n\r\n        维度五：物流贸易自由化指日可待\r\n\r\n        税收征管合作机制助力“一带一路”行稳致远\r\n\r\n        我们将同更多国家商签高标准自由贸易协定，加强海关、税收、审计监管等领域合作，建立共建“一带一路”税收征管合作机制，加快推广“经认证的经营者”国际互认合作。我们还制定了《“一带一路”融资指导原则》，发布了《“一带一路”债务可持续性分析框架》，为共建“一带一路”融资合作提供指南。\r\n\r\n        中方今年将举办第二届中国国际进口博览会，为各方进入中国市场搭建更广阔平台。\r\n\r\n        商贸物流企业的机遇：建立“一带一路”税收征管合作机制的目的，就是通过加强税收合作，促进优化营商环境，支持贸易自由化和投资便利化。这对于商贸物流企业而言，又是一个政策福利。\r\n\r\n        @物流技术与设备企业\r\n\r\n维度六：物流科技成就物流未来\r\n\r\n        创新就是生产力，创新也是推动物流业发展的重要力量\r\n\r\n        创新就是生产力，企业赖之以强，国家赖之以盛。我们要顺应第四次工业革命发展趋势，共同把握数字化、网络化、智能化发展机遇，共同探索新技术、新业态、新模式，探寻新的增长动能和发展路径，建设数字丝绸之路、创新丝绸之路。\r\n\r\n        中国将继续实施共建“一带一路”科技创新行动计划，同各方一道推进科技人文交流、共建联合实验室、科技园区合作、技术转移四大举措。我们还将支持各国企业合作推进信息通信基础设施建设，提升网络互联互通水平。\r\n\r\n        物流技术与设备企业的机遇：随着物流业的迅猛发展，行业出现一个“不成文”的规定：玩不好科技的物流企业，不是上进的企业。的确，对于物流技术与设备服务型企业而言，促进科技、金融与产业融合发展，持续提升自主创新能力，才能更好地沐浴“一带一路”建设的春风。科技引领未来，能够真正为“一带一路”沿线国家和地区做好服务，才是王道。\r\n\r\n        @物流企业\r\n\r\n        维度七：从物流港向自贸港转变\r\n\r\n        布局一批自由贸易试验区，加快探索建设自由贸易港\r\n\r\n        更广领域扩大外资市场准入。中国已实施准入前国民待遇加负面清单管理模式，未来将继续大幅缩减负面清单，推动现代服务业、制造业、农业全方位对外开放，并在更多领域允许外资控股或独资经营。\r\n\r\n        我们将新布局一批自由贸易试验区，加快探索建设自由贸易港。我们将加快制定配套法规，确保严格实施《外商投资法》。我们将以公平竞争、开放合作推动国内供给侧结构性改革，有效淘汰落后和过剩产能，提高供给体系质量和效率。\r\n\r\n        物流企业的机遇：探索建设自由贸易港再次被提上议程，也给物流企业带来了不少思考。如何从物流港向贸易港转变，从目的地港或者门户港向枢纽港转变，并随着“一带一路”倡议的实施，沿着海路、陆路，走向世界成为物流企业的重要课题。\r\n\r\n        @物流企业\r\n\r\n        维度八：行业领先的物流专利技术由国家来保护\r\n\r\n        在智能时代，物流企业做好知识产权贯标至关重要\r\n\r\n        更大力度加强知识产权保护国际合作。加强知识产权保护，不仅是维护内外资企业合法权益的需要，更是推进创新型国家建设、推动高质量发展的内在要求。\r\n\r\n        中国将着力营造尊重知识价值的营商环境，全面完善知识产权保护法律体系，大力强化执法，加强对外国知识产权人合法权益的保护，杜绝强制技术转让，完善商业秘密保护，依法严厉打击知识产权侵权行为。中国愿同世界各国加强知识产权保护合作，创造良好创新生态环境，推动同各国在市场化法治化原则基础上开展技术交流合作。\r\n\r\n        物流企业的机遇：科技是第一生产力，全球范围内未来都将是技术的竞争，是知识产权的竞争。加强知识产权保护对物流企业而言至关重要，不过，也只有打造数量更多、质量更高、创新性更强的物流技术创新成果，才能在“一带一路”建设中、高手云集的赛场上赢得主动权。\r\n\r\n        @所有物流人\r\n\r\n        维度九：物流市场体量再升级\r\n\r\n        我国将更大规模增加商品和服务进口，有市场就有需求\r\n\r\n        中国既是“世界工厂”，也是“世界市场”。中国有世界上规模最大、成长最快的中等收入群体，消费增长潜力巨大。为满足人民日益增长的物质文化生活需要，增加消费者选择和福利，我们将进一步降低关税水平，消除各种非关税壁垒，不断开大中国市场大门，欢迎来自世界各国的高质量产品。\r\n\r\n        我们不刻意追求贸易顺差，愿意进口更多国外有竞争力的优质农产品、制成品和服务，促进贸易平衡发展。\r\n\r\n        所有物流人的机遇：面对“世界市场”，物流人要用全球化思维、本土化行动在“一带一路”建设中寻找商机。不断打开中国市场大门，意味着将带来更多机遇，这背后也有一盘价值亿万元的商业大棋。所谓“机遇抓住了才是良机”，物流人需要赶紧行动起来。', '习近平在“一带一路”高峰论坛上释放出10个物流信号', '2019-05-04 20:39:43', NULL);
INSERT INTO `news` VALUES (12, '央视财经', '根据国家发改委消息，新一轮成品油调价窗口将于4月26日24时开启。本轮成品油调价周期内(4月12日—4月25日)，国际油价继续震荡上行。平均来看，伦敦布伦特、纽约WTI油价比上轮调价周期上涨3.89%。受此影响，国内汽油、柴油零售价格随之上调。\r\n\r\n本次油价调整具体情况如下：汽油每吨上调195元、柴油每吨上调185元。全国平均来看：92号汽油每升上调0.15元;95号汽油每升上调0.16元;0号柴油每升上调0.16元。按一般家用汽车油箱50L容量估测，加满一箱92号汽油将多花7.5元。值得注意的是，经过此次调价，2019年国内成品油已呈现“第七涨”的格局。', '年内油价迎“第七涨”，加满一箱油多花约7.5元', '2019-05-04 20:53:55', 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `goods_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `public_id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `car_owner_id` int(11) NULL DEFAULT NULL,
  `car_source_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_owner_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqw58ko8u6itrg7dtunrjtxroq`(`car_owner_id`) USING BTREE,
  INDEX `FKjouggnwxladmjrn4gn71nvrfp`(`car_source_id`) USING BTREE,
  INDEX `FKa0p2310x1lso0jbskrriq0775`(`goods_id`) USING BTREE,
  INDEX `FKee0y102y3xyb2d2v8whikychj`(`goods_owner_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (24, 'CN20190423214623903', '张培梁', '2019-05-07 21:09:47', 'GN20190423150345374', '王哥', 'ON20190507210947128', 1, 6, 1, 1, 2, 1);
INSERT INTO `orders` VALUES (25, 'CN20190501211450560', '张培梁', '2019-05-07 23:02:19', 'GN20190501211331416', '王哥', 'ON20190507230218664', 1, 1, 1, 13, 11, 1);
INSERT INTO `orders` VALUES (26, 'CN20190507203004760', '张培梁', '2019-05-07 23:02:37', 'GN20190507204414949', '王哥', 'ON20190507230236634', 1, 1, 1, 24, 21, 1);
INSERT INTO `orders` VALUES (27, 'CN20190501224452385', '张培梁', '2019-05-07 23:48:38', 'GN20190426141512345', '王哥', 'ON20190507234838306', 1, 1, 1, 14, 5, 1);
INSERT INTO `orders` VALUES (28, 'CN20190426205434720', '下一站', '2019-05-07 23:48:59', 'GN20190426141511456', '王哥', 'ON20190507234858790', 2, 1, 2, 8, 9, 1);
INSERT INTO `orders` VALUES (29, 'CN20190507235138985', '张培梁', '2019-05-08 17:35:12', 'GN20190425145719648', '王哥', 'ON20190508173511684', 1, 5, 1, 26, 3, 1);

-- ----------------------------
-- Table structure for receiver_info
-- ----------------------------
DROP TABLE IF EXISTS `receiver_info`;
CREATE TABLE `receiver_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `reply_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  `car_owner_id` int(11) NULL DEFAULT NULL,
  `goods_owner_id` int(11) NULL DEFAULT NULL,
  `sender_info_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKl2bn9p7n7dgfcjo8jne8aq3d8`(`admin_id`) USING BTREE,
  INDEX `FKpi8yhv25llm2nd6i0t3uma36k`(`car_owner_id`) USING BTREE,
  INDEX `FK1aa8a9inaokt50mcvj68abkxs`(`goods_owner_id`) USING BTREE,
  INDEX `FKqficraye820mb5nwofs96g8gg`(`sender_info_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of receiver_info
-- ----------------------------
INSERT INTO `receiver_info` VALUES (1, 'zz', '2019-05-04 13:05:09', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 1);
INSERT INTO `receiver_info` VALUES (2, '没问题', '2019-05-04 13:15:51', 1, 'admin', 1, 2, '王哥', 1, NULL, 1, 4);
INSERT INTO `receiver_info` VALUES (3, '管理大大你好', '2019-05-04 13:16:04', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 2);
INSERT INTO `receiver_info` VALUES (4, '没问题啊', '2019-05-04 13:16:13', 3, '王哥', 1, 1, '张培梁', NULL, 1, 1, 3);
INSERT INTO `receiver_info` VALUES (5, '知道了，谢谢大大', '2019-05-04 14:02:02', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 5);
INSERT INTO `receiver_info` VALUES (6, '你也好', '2019-05-04 14:02:52', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 6);
INSERT INTO `receiver_info` VALUES (7, '没问题啊，等一下！', '2019-05-07 20:05:59', 3, 'admin', 1, 2, '张培梁', 1, 1, NULL, 7);
INSERT INTO `receiver_info` VALUES (8, '收到', '2019-05-07 20:07:57', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 8);
INSERT INTO `receiver_info` VALUES (9, '好的，谢谢管理大大', '2019-05-07 20:12:27', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 10);
INSERT INTO `receiver_info` VALUES (10, '\\(^o^)/~，Ok', '2019-05-08 15:41:10', 3, 'admin', 1, 2, '张培梁', 1, 1, NULL, 11);
INSERT INTO `receiver_info` VALUES (11, '没问题，我看看', '2019-05-08 15:41:46', 3, '王哥', 1, 1, '张培梁', NULL, 1, 1, 9);
INSERT INTO `receiver_info` VALUES (12, 'Thanks♪(･ω･)ﾉ', '2019-05-08 15:43:44', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 12);
INSERT INTO `receiver_info` VALUES (13, '好的', '2019-05-08 15:48:10', 1, '张培梁', 1, 3, '王哥', NULL, 1, 1, 13);
INSERT INTO `receiver_info` VALUES (14, 'hd1', '2019-05-08 17:39:46', 2, '张培梁', 1, 3, 'admin', 1, 1, NULL, 14);

-- ----------------------------
-- Table structure for sender_info
-- ----------------------------
DROP TABLE IF EXISTS `sender_info`;
CREATE TABLE `sender_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `sender_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  `car_owner_id` int(11) NULL DEFAULT NULL,
  `goods_owner_id` int(11) NULL DEFAULT NULL,
  `receiver_info_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK8jwwtlxuudseo8hosxw1ydm2t`(`admin_id`) USING BTREE,
  INDEX `FK9e48xmaby12t7mn1yifl3aq75`(`car_owner_id`) USING BTREE,
  INDEX `FKo0iwlwa452y4gfpem2a4jw4w0`(`goods_owner_id`) USING BTREE,
  INDEX `FKr25mf1uww9kj9j42punlg03fy`(`receiver_info_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sender_info
-- ----------------------------
INSERT INTO `sender_info` VALUES (1, 'hhh', '2019-05-04 13:05:00', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 1);
INSERT INTO `sender_info` VALUES (2, '你好呀', '2019-05-04 13:15:01', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 3);
INSERT INTO `sender_info` VALUES (3, '货主你好，看看车源吧', '2019-05-04 13:15:26', 3, '张培梁', 1, 1, '13676051780', NULL, 1, 1, 4);
INSERT INTO `sender_info` VALUES (4, '管理大大看看', '2019-05-04 13:15:41', 1, '王哥', 1, 2, 'admin', 1, NULL, 1, 2);
INSERT INTO `sender_info` VALUES (5, '已经发布新的资讯', '2019-05-04 14:01:41', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 5);
INSERT INTO `sender_info` VALUES (6, '你好呀', '2019-05-04 14:02:41', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 6);
INSERT INTO `sender_info` VALUES (7, '管理大大可以发布一些新的物流咨询吗', '2019-05-05 10:00:32', 3, '张培梁', 1, 2, 'admin', 1, 1, NULL, 7);
INSERT INTO `sender_info` VALUES (8, '请完善您的个人信息', '2019-05-05 14:13:50', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 8);
INSERT INTO `sender_info` VALUES (9, '老哥，看看我的车源怎么样', '2019-05-05 16:21:49', 3, '张培梁', 1, 1, '13676051780', NULL, 1, 1, 11);
INSERT INTO `sender_info` VALUES (10, '已经发布新的资讯', '2019-05-07 20:07:32', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 9);
INSERT INTO `sender_info` VALUES (11, '管理大哥发一些物流企业信息吧', '2019-05-08 15:40:53', 3, '张培梁', 1, 2, 'admin', 1, 1, NULL, 10);
INSERT INTO `sender_info` VALUES (12, '已经发布，请查看', '2019-05-08 15:43:32', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 12);
INSERT INTO `sender_info` VALUES (13, '老哥，看看货源吧', '2019-05-08 15:48:01', 1, '王哥', 1, 3, '18292686978', NULL, 1, 1, 13);
INSERT INTO `sender_info` VALUES (14, '已经发布新的物流个人，欢迎查看', '2019-05-08 15:49:37', 2, 'admin', 1, 3, '18292686978', 1, 1, NULL, 14);

SET FOREIGN_KEY_CHECKS = 1;
