/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50616
 Source Host           : localhost:3306
 Source Schema         : mysqltest

 Target Server Type    : MySQL
 Target Server Version : 50616
 File Encoding         : 65001

 Date: 27/08/2020 14:53:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `acctno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amt` double NOT NULL,
  PRIMARY KEY (`acctno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('acct1', 'cust1', 1000);
INSERT INTO `account` VALUES ('acct2', 'cust2', 2000);

-- ----------------------------
-- Table structure for cust
-- ----------------------------
DROP TABLE IF EXISTS `cust`;
CREATE TABLE `cust`  (
  `custno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custtype` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`custno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cust
-- ----------------------------
INSERT INTO `cust` VALUES ('cust1', '张三', '0001', '1');
INSERT INTO `cust` VALUES ('cust2', '李四', '0002', '2');

-- ----------------------------
-- Table structure for trade
-- ----------------------------
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade`  (
  `tradeid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acctno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amt` double NOT NULL,
  PRIMARY KEY (`tradeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trade
-- ----------------------------
INSERT INTO `trade` VALUES ('trade1', 'acct1', 10);
INSERT INTO `trade` VALUES ('trade2', 'acct2', 12);

-- ----------------------------
-- Table structure for trade_all
-- ----------------------------
DROP TABLE IF EXISTS `trade_all`;
CREATE TABLE `trade_all`  (
  `tradeid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acctno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amt` double NOT NULL,
  `custno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custtype_cn` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tradeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trade_all
-- ----------------------------
INSERT INTO `trade_all` VALUES ('trade1', 'acct1', 10, 'cust1', '张三', '0001', '对公客户交易', '这是一笔对公客户发生的交易');
INSERT INTO `trade_all` VALUES ('trade2', 'acct2', 12, 'cust2', '李四', '0002', '对私客户交易', '这是一笔对私客户发生的交易');

SET FOREIGN_KEY_CHECKS = 1;
