/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.178.81
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : 192.168.178.81:3306
 Source Schema         : mssystem

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 31/03/2020 21:15:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cap.published
-- ----------------------------
DROP TABLE IF EXISTS `cap.published`;
CREATE TABLE `cap.published`  (
  `Id` bigint(20) NOT NULL,
  `Version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Retries` int(11) NULL DEFAULT NULL,
  `Added` datetime(0) NOT NULL,
  `ExpiresAt` datetime(0) NULL DEFAULT NULL,
  `StatusName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cap.received
-- ----------------------------
DROP TABLE IF EXISTS `cap.received`;
CREATE TABLE `cap.received`  (
  `Id` bigint(20) NOT NULL,
  `Version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Retries` int(11) NULL DEFAULT NULL,
  `Added` datetime(0) NOT NULL,
  `ExpiresAt` datetime(0) NULL DEFAULT NULL,
  `StatusName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oa_chat
-- ----------------------------
DROP TABLE IF EXISTS `oa_chat`;
CREATE TABLE `oa_chat`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `Sender` bigint(20) NOT NULL COMMENT '?????????',
  `Message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `Receiver` bigint(20) NOT NULL COMMENT '?????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `IsRead` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_chat
-- ----------------------------
INSERT INTO `oa_chat` VALUES (1, 5, '??????', 1, 1560898931, 0);
INSERT INTO `oa_chat` VALUES (2, 1, '??????', 5, 1560898950, 0);
INSERT INTO `oa_chat` VALUES (3, 1, '123', 5, 1576624674, 0);
INSERT INTO `oa_chat` VALUES (4, 5, 'asd', 1, 1576624691, 0);
INSERT INTO `oa_chat` VALUES (5, 5, '??????', 1, 1576624705, 0);

-- ----------------------------
-- Table structure for oa_leave
-- ----------------------------
DROP TABLE IF EXISTS `oa_leave`;
CREATE TABLE `oa_leave`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `LeaveCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `Title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `UserId` int(11) NOT NULL COMMENT '?????????',
  `AgentId` int(11) NOT NULL COMMENT '???????????????',
  `LeaveType` tinyint(4) NOT NULL COMMENT '????????????',
  `Reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `Days` int(11) NOT NULL COMMENT '????????????',
  `StartTime` bigint(20) NOT NULL COMMENT '????????????',
  `EndTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` int(11) NOT NULL COMMENT '?????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `FlowStatus` int(11) NULL DEFAULT -1 COMMENT '????????????',
  `FlowTime` bigint(20) NULL DEFAULT NULL COMMENT '?????????????????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_leave
-- ----------------------------
INSERT INTO `oa_leave` VALUES (1, '15604170854388', '????????????????????????', 0, 0, 0, '????????????????????????', 7, 1560441600, 1560960000, 1, 1560417085, 1, 1560417476);
INSERT INTO `oa_leave` VALUES (2, '15604180604164', '??????2', 0, 0, 0, '??????', 2, 1560441600, 1560528000, 1, 1560418060, 1, 1560419404);
INSERT INTO `oa_leave` VALUES (3, '15749778945106', '??????', 0, 0, 0, '12', 2, 1575043200, 1575129600, 1, 1574977894, 1, 1575243821);
INSERT INTO `oa_leave` VALUES (4, '15760022217221', '??????', 0, 0, 0, '??????', 2, 1576080000, 1576166400, 1, 1576002221, 1, 1576110644);
INSERT INTO `oa_leave` VALUES (5, '15766927315354', '123 ??????', 0, 0, 0, '123 ??????', 5, 1576771200, 1577116800, 7, 1576692731, 3, 1576693789);
INSERT INTO `oa_leave` VALUES (7, '15843164815517', '123', 0, 0, 0, '123', 2, 1586966400, 1587052800, 0, 1584316481, -1, 0);
INSERT INTO `oa_leave` VALUES (8, '15843165772134', '??????111', 0, 0, 0, '??????111', 2, 1584374400, 1584460800, 1, 1584316577, -1, 0);
INSERT INTO `oa_leave` VALUES (9, '15843174277352', '123321', 0, 0, 0, '123123', 2, 1584288000, 1584374400, 1, 1584317427, -1, 0);
INSERT INTO `oa_leave` VALUES (10, '15843174560867', '123321', 0, 0, 0, '123123???????????????', 2, 1584288000, 1584374400, 1, 1584317456, -1, 0);

-- ----------------------------
-- Table structure for oa_mail
-- ----------------------------
DROP TABLE IF EXISTS `oa_mail`;
CREATE TABLE `oa_mail`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `Title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SendStatus` tinyint(4) NOT NULL COMMENT '????????????',
  `Sender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `SendMail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oa_mail_config
-- ----------------------------
DROP TABLE IF EXISTS `oa_mail_config`;
CREATE TABLE `oa_mail_config`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `Host` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????????????????',
  `Port` int(11) NOT NULL COMMENT '??????',
  `SecureSocketOptions` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Secure socket options.',
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_mail_config
-- ----------------------------
INSERT INTO `oa_mail_config` VALUES (1, '	smtp.qq.com', 587, 1, '2636256005@qq.com', 'snewsyiqgyagecdd');

-- ----------------------------
-- Table structure for oa_message
-- ----------------------------
DROP TABLE IF EXISTS `oa_message`;
CREATE TABLE `oa_message`  (
  `Id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `MsgType` int(11) NOT NULL COMMENT '????????????',
  `FaceUserType` tinyint(4) NOT NULL COMMENT '??????????????????',
  `Title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `IsLocal` tinyint(4) NOT NULL COMMENT '?????????????????????',
  `IsSystem` tinyint(4) NOT NULL DEFAULT 0 COMMENT '?????????????????????????????????',
  `TargetType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `Link` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `Content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `IsEnable` tinyint(4) NOT NULL COMMENT '??????????????????',
  `StartTime` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  `EndTime` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  `IsExecuted` tinyint(4) NOT NULL COMMENT '???????????????',
  `IsDel` tinyint(4) NOT NULL COMMENT '????????????',
  `MakerUserId` bigint(20) NULL DEFAULT NULL COMMENT '?????????ID',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????Id',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_message
-- ----------------------------
INSERT INTO `oa_message` VALUES (1, 1, 0, '??????', 1, 0, 'tab', NULL, '??????', 1, 0, 0, 1, 1, 0, 1, 1555213291);
INSERT INTO `oa_message` VALUES (2, 0, 0, '??????2', 1, 0, 'blank', NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1555315893);
INSERT INTO `oa_message` VALUES (4, 1, 1, '????????????', 1, 1, 'tab', 'http://www.baidu.com', '???????????????', 1, 0, 0, 1, 1, 1, 1, 1575238117);
INSERT INTO `oa_message` VALUES (5, 1, 1, '????????????', 1, 1, 'tab', '', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575239065);
INSERT INTO `oa_message` VALUES (6, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575239551);
INSERT INTO `oa_message` VALUES (7, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 1, 1, 1, 1, 1575239686);
INSERT INTO `oa_message` VALUES (8, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575239726);
INSERT INTO `oa_message` VALUES (9, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575239794);
INSERT INTO `oa_message` VALUES (10, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575240149);
INSERT INTO `oa_message` VALUES (11, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575240316);
INSERT INTO `oa_message` VALUES (12, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 1, 1, 1, 1, 1575240485);
INSERT INTO `oa_message` VALUES (13, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575241035);
INSERT INTO `oa_message` VALUES (14, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575243564);
INSERT INTO `oa_message` VALUES (15, 1, 1, '????????????', 1, 1, 'tab', '/OA/Leave/Show?id=3', '???????????????', 1, 0, 0, 0, 1, 1, 1, 1575243796);

-- ----------------------------
-- Table structure for oa_message_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_message_user`;
CREATE TABLE `oa_message_user`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `MessageId` bigint(20) NOT NULL COMMENT '??????ID',
  `UserId` bigint(20) NOT NULL COMMENT '??????ID',
  `IsRead` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `MessageId`(`MessageId`) USING BTREE,
  CONSTRAINT `oa_message_user_ibfk_1` FOREIGN KEY (`MessageId`) REFERENCES `oa_message` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_message_user
-- ----------------------------
INSERT INTO `oa_message_user` VALUES (1, 13, 1, 1);
INSERT INTO `oa_message_user` VALUES (2, 14, 1, 1);
INSERT INTO `oa_message_user` VALUES (3, 15, 1, 1);
INSERT INTO `oa_message_user` VALUES (4, 1, 1, 1);
INSERT INTO `oa_message_user` VALUES (5, 1, 4, 0);
INSERT INTO `oa_message_user` VALUES (6, 1, 5, 0);
INSERT INTO `oa_message_user` VALUES (7, 1, 6, 0);
INSERT INTO `oa_message_user` VALUES (8, 1, 7, 0);
INSERT INTO `oa_message_user` VALUES (9, 1, 1, 1);
INSERT INTO `oa_message_user` VALUES (10, 1, 4, 0);
INSERT INTO `oa_message_user` VALUES (11, 1, 5, 0);
INSERT INTO `oa_message_user` VALUES (12, 1, 6, 0);
INSERT INTO `oa_message_user` VALUES (13, 1, 7, 0);

-- ----------------------------
-- Table structure for oa_work
-- ----------------------------
DROP TABLE IF EXISTS `oa_work`;
CREATE TABLE `oa_work`  (
  `WorkId` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `WorkType` tinyint(4) NOT NULL COMMENT '?????????1?????????2?????????3??????',
  `Content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `PlanContent` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `NeedHelpContent` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `Memo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `IsDel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `ReportDate` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` int(11) NOT NULL COMMENT '?????????ID',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`WorkId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_work
-- ----------------------------
INSERT INTO `oa_work` VALUES (1, 0, '123', '123', '123', NULL, 0, 0, 1, 0);
INSERT INTO `oa_work` VALUES (2, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 0);

-- ----------------------------
-- Table structure for oa_work_reporter
-- ----------------------------
DROP TABLE IF EXISTS `oa_work_reporter`;
CREATE TABLE `oa_work_reporter`  (
  `ReportId` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `WorkId` int(11) NOT NULL COMMENT '??????id',
  `Reporter` int(11) NOT NULL COMMENT '?????????',
  `ReadDate` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  `Memo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`ReportId`) USING BTREE,
  INDEX `WorkId`(`WorkId`) USING BTREE,
  CONSTRAINT `oa_work_reporter_ibfk_1` FOREIGN KEY (`WorkId`) REFERENCES `oa_work` (`WorkId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oa_workflowsql
-- ----------------------------
DROP TABLE IF EXISTS `oa_workflowsql`;
CREATE TABLE `oa_workflowsql`  (
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????sql??????,????????????oa_???????????????????????????????????????????????????????????????',
  `FlowSQL` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????SQL????????????????????????????????????',
  `Param` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????? , ??????',
  `SQLType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '?????????0??????????????????????????????????????????ID???1???????????????????????????????????????????????????????????????????????????????????????????????????',
  `Status` int(11) NOT NULL DEFAULT 1 COMMENT '??????',
  `Remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????ID',
  PRIMARY KEY (`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_workflowsql
-- ----------------------------
INSERT INTO `oa_workflowsql` VALUES ('oa_leaveLessThenThreeDays', 'SELECT ol.`Id` FROM `oa_leave` ol WHERE ol.`Days`<=3 AND ol.`CreateUserId`=@userid AND ol.`Id`=@formid', 'userid,formid', 1, 1, '????????????????????????????????????', 1, 1);
INSERT INTO `oa_workflowsql` VALUES ('oa_leaveMoreThenThreeDays', 'SELECT ol.`Id` FROM `oa_leave` ol WHERE ol.`Days` > 3 AND ol.`CreateUserId`=@userid AND ol.`Id`=@formid', 'userid,formid', 1, 1, '??????????????????????????????', 1, 1);

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button`  (
  `ButtonId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `ButtonName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `Memo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`ButtonId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES (1, '??????', '??????');
INSERT INTO `sys_button` VALUES (2, '??????', '??????');
INSERT INTO `sys_button` VALUES (3, '??????', '??????');
INSERT INTO `sys_button` VALUES (4, '??????', '??????');
INSERT INTO `sys_button` VALUES (5, '??????', '??????');
INSERT INTO `sys_button` VALUES (6, '??????', '??????');
INSERT INTO `sys_button` VALUES (7, '??????', '??????');
INSERT INTO `sys_button` VALUES (8, '??????', '??????');
INSERT INTO `sys_button` VALUES (9, '??????', '??????');

-- ----------------------------
-- Table structure for sys_data_privileges
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_privileges`;
CREATE TABLE `sys_data_privileges`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `UserId` bigint(20) NOT NULL COMMENT '??????ID',
  `DeptId` bigint(20) NOT NULL COMMENT '??????ID',
  `SystemId` bigint(20) NOT NULL COMMENT '??????ID',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `UserId`(`UserId`) USING BTREE,
  INDEX `DeptId`(`DeptId`) USING BTREE,
  INDEX `SystemId`(`SystemId`) USING BTREE,
  CONSTRAINT `sys_data_privileges_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `sys_user` (`UserId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_data_privileges_ibfk_2` FOREIGN KEY (`DeptId`) REFERENCES `sys_dept` (`DeptId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_data_privileges_ibfk_3` FOREIGN KEY (`SystemId`) REFERENCES `sys_system` (`SystemId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_privileges
-- ----------------------------
INSERT INTO `sys_data_privileges` VALUES (8, 1, 1, 1);
INSERT INTO `sys_data_privileges` VALUES (9, 1, 2, 1);
INSERT INTO `sys_data_privileges` VALUES (10, 1, 3, 1);
INSERT INTO `sys_data_privileges` VALUES (11, 1, 4, 1);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `DeptId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `DeptName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `DeptCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `ParentId` bigint(20) NOT NULL COMMENT '??????ID',
  `Path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `IsDel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `Memo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????id',
  `CreateTime` bigint(20) NOT NULL COMMENT '???????????????',
  PRIMARY KEY (`DeptId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 'MS??????', '001', 0, '1', 0, 'MS??????', 1, 1517812123);
INSERT INTO `sys_dept` VALUES (2, '?????????', '002', 1, '1:2', 0, '?????????', 1, 1517812220);
INSERT INTO `sys_dept` VALUES (3, '?????????', '003', 1, '1:3', 0, '?????????', 1, 1517814189);
INSERT INTO `sys_dept` VALUES (4, '?????????', '004', 1, '1:4', 0, '?????????', 1, 1517814213);

-- ----------------------------
-- Table structure for sys_dept_leader
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_leader`;
CREATE TABLE `sys_dept_leader`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `DeptId` bigint(20) NOT NULL COMMENT '??????ID',
  `UserId` bigint(20) NOT NULL COMMENT '??????ID',
  `LeaderType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `DeptId`(`DeptId`) USING BTREE,
  INDEX `UserId`(`UserId`) USING BTREE,
  INDEX `LeaderType`(`LeaderType`) USING BTREE,
  CONSTRAINT `sys_dept_leader_ibfk_1` FOREIGN KEY (`DeptId`) REFERENCES `sys_dept` (`DeptId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_dept_leader_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `sys_user` (`UserId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_dept_leader_ibfk_3` FOREIGN KEY (`LeaderType`) REFERENCES `sys_leader` (`Shorter`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept_leader
-- ----------------------------
INSERT INTO `sys_dept_leader` VALUES (1, 3, 1, 'bmfzr');

-- ----------------------------
-- Table structure for sys_leader
-- ----------------------------
DROP TABLE IF EXISTS `sys_leader`;
CREATE TABLE `sys_leader`  (
  `Shorter` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????????????????????????????????????????',
  `LeaderName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `Remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`Shorter`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_leader
-- ----------------------------
INSERT INTO `sys_leader` VALUES ('bmfjl', '???????????????', '???????????????');
INSERT INTO `sys_leader` VALUES ('bmfzr', '???????????????', '???????????????/????????????');
INSERT INTO `sys_leader` VALUES ('boss', '?????????', '?????????/????????????');

-- ----------------------------
-- Table structure for sys_release_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_release_log`;
CREATE TABLE `sys_release_log`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `VersionNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `Memo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_release_log
-- ----------------------------
INSERT INTO `sys_release_log` VALUES (1, '1', '123', 1498481230);

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `ResourceId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `SystemId` bigint(20) NOT NULL COMMENT '????????????',
  `ResourceName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `ParentId` bigint(11) NOT NULL DEFAULT 0 COMMENT '??????ID',
  `ResourceUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `Sort` int(11) NOT NULL COMMENT '????????????',
  `ButtonClass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????ICON',
  `IsShow` tinyint(4) NOT NULL COMMENT '?????????????????????',
  `CreateUserId` bigint(11) NOT NULL COMMENT '?????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '???????????????',
  `Memo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `IsDel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `IsButton` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????',
  `ButtonType` tinyint(4) NULL DEFAULT NULL COMMENT '????????????',
  `Path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`ResourceId`) USING BTREE,
  INDEX `ParentId`(`ParentId`) USING BTREE,
  INDEX `SystemId`(`SystemId`) USING BTREE,
  CONSTRAINT `sys_resource_ibfk_1` FOREIGN KEY (`SystemId`) REFERENCES `sys_system` (`SystemId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1, 1, '????????????', 0, '/', 1, NULL, 'fa fa-cogs', 1, 1, 1, '123', 0, 0, NULL, '1');
INSERT INTO `sys_resource` VALUES (2, 1, '????????????', 1, '/Sys/Resource/Index', 5, NULL, 'fa fa-bars', 1, 1, 1, NULL, 0, 0, NULL, '1:2');
INSERT INTO `sys_resource` VALUES (4, 1, '?????????????????????', 2, '/Sys/Resource/Show', 0, NULL, 'fa fa-balance-scale', 0, 1, 1, NULL, 0, 0, NULL, '2:4');
INSERT INTO `sys_resource` VALUES (48, 1, '??????', 4, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503957966, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (49, 1, '??????', 4, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503957966, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (50, 1, '??????', 4, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503957966, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (51, 1, '??????', 4, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503957966, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (53, 1, '????????????', 1, '/Sys/Role/Index', 2, NULL, 'fa fa-group', 1, 1, 1503958727, '123', 0, 0, NULL, '1:53');
INSERT INTO `sys_resource` VALUES (54, 1, '??????', 53, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503958727, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (55, 1, '??????', 53, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503958727, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (56, 1, '??????', 53, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503958727, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (57, 1, '??????', 53, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503958727, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (58, 1, '???????????????', 1, '/Sys/System/Index', 4, NULL, 'fa fa-cog', 1, 1, 1503958798, '123', 0, 0, NULL, '1:58');
INSERT INTO `sys_resource` VALUES (59, 1, '??????', 58, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503958825, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (60, 1, '??????', 58, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503958825, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (61, 1, '??????', 58, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503958825, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (62, 1, '??????', 58, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503958825, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (64, 1, '??????', 2, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503958921, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (65, 1, '??????', 2, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503958921, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (66, 1, '???????????????', 53, '/Sys/Role/Show', 0, NULL, NULL, 0, 1, 1503959673, NULL, 0, 0, NULL, '53:66');
INSERT INTO `sys_resource` VALUES (67, 1, '??????', 66, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503959674, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (68, 1, '??????', 66, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503959674, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (69, 1, '??????', 66, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503959674, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (70, 1, '??????', 66, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503959674, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (71, 1, '???????????????', 58, '/Sys/System/Show', 0, NULL, NULL, 0, 1, 1503959721, NULL, 0, 0, NULL, '58:71');
INSERT INTO `sys_resource` VALUES (72, 1, '??????', 71, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503959721, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (73, 1, '??????', 71, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503959721, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (74, 1, '??????', 71, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503959721, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (75, 1, '??????', 71, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503959721, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (76, 1, '????????????', 1, '/Sys/User/Index', 1, NULL, 'fa fa-user', 1, 1, 1503959782, NULL, 0, 0, NULL, '1:76');
INSERT INTO `sys_resource` VALUES (77, 1, '??????', 76, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503959782, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (78, 1, '??????', 76, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503959782, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (79, 1, '??????', 76, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503959782, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (80, 1, '??????', 76, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503959782, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (81, 1, '???????????????', 76, '/Sys/User/Show', 0, NULL, NULL, 0, 1, 1503959818, NULL, 0, 0, NULL, '76:81');
INSERT INTO `sys_resource` VALUES (82, 1, '??????', 81, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503959818, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (83, 1, '??????', 81, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503959818, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (84, 1, '??????', 81, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1503959818, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (85, 1, '??????', 81, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1503959818, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (86, 1, '??????', 2, NULL, 4, NULL, 'fa fa-search', 0, 0, 1503990906, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (87, 1, '??????', 2, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1503990906, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (88, 2, '?????????', 0, '/', 3, NULL, 'fa fa-sitemap', 1, 1, 1504013557, NULL, 0, 0, NULL, '88');
INSERT INTO `sys_resource` VALUES (91, 2, '????????????', 88, '/WF/WorkFlow/Index', 3, NULL, 'fa fa-legal', 1, 1, 1504439709, '??????????????????', 0, 0, NULL, '88:91');
INSERT INTO `sys_resource` VALUES (92, 2, '??????', 91, NULL, 4, NULL, 'fa fa-search', 0, 0, 1504439709, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (93, 2, '????????????', 88, '/WF/WorkFlowInstance/TodoList', 1, NULL, 'fa fa-user', 1, 1, 1504439745, '????????????', 0, 0, NULL, '88:93');
INSERT INTO `sys_resource` VALUES (94, 2, '????????????', 88, '/WF/WorkFlowInstance/MyApprovalHistory', 0, NULL, 'fa fa-history', 1, 1, 1504575850, '??????????????????', 0, 0, NULL, '88:94');
INSERT INTO `sys_resource` VALUES (95, 2, '??????', 93, NULL, 4, NULL, 'fa fa-search', 0, 0, 1504575862, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (96, 2, '??????', 94, NULL, 4, NULL, 'fa fa-search', 0, 0, 1504575866, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (97, 3, '????????????', 0, '/', 2, NULL, 'fa fa-weixin', 1, 1, 1504576048, '????????????', 0, 0, NULL, '97');
INSERT INTO `sys_resource` VALUES (98, 2, '????????????', 88, '/WF/Category/Index', 4, NULL, 'fa fa-building-o', 1, 1, 1508764750, '????????????', 0, 0, NULL, '88:98');
INSERT INTO `sys_resource` VALUES (99, 2, '??????', 98, NULL, 4, NULL, 'fa fa-search', 0, 0, 1508764750, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (100, 5, '????????????', 0, '/', 2, NULL, 'fa fa-book', 1, 1, 1509884326, NULL, 0, 0, NULL, '100');
INSERT INTO `sys_resource` VALUES (142, 1, '????????????', 1, '/Sys/Dept/Index', 3, NULL, 'fa fa-sitemap', 1, 1, 1514899755, NULL, 0, 0, NULL, '1:142');
INSERT INTO `sys_resource` VALUES (143, 1, '??????', 142, NULL, 4, NULL, 'fa fa-search', 0, 0, 1514899755, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (144, 1, '??????', 142, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1514899755, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (145, 1, '??????', 142, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1514899755, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (146, 1, '??????', 142, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1514899755, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (152, 1, '???????????????', 142, '/Sys/Dept/Show', 1, NULL, '', 0, 1, 1514899820, NULL, 0, 0, NULL, '1:142:152');
INSERT INTO `sys_resource` VALUES (153, 1, '??????', 152, NULL, 4, NULL, 'fa fa-search', 0, 0, 1514899820, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (154, 1, '??????', 152, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1514899820, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (155, 1, '??????', 152, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1514899820, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (156, 1, '??????', 152, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1514899820, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (157, 1, '????????????', 76, '/Sys/User/DataPrivileges', 2, NULL, NULL, 0, 1, 1515548644, NULL, 0, 0, NULL, '1:76:157');
INSERT INTO `sys_resource` VALUES (158, 1, '??????', 157, NULL, 4, NULL, 'fa fa-search', 0, 0, 1515548644, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (159, 1, '??????', 157, NULL, 1, NULL, 'fa fa-plus', 0, 0, 1515548644, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (160, 1, '??????', 157, NULL, 2, NULL, 'fa fa-edit', 0, 0, 1515548644, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (161, 1, '??????', 157, NULL, 3, NULL, 'fa fa-trash', 0, 0, 1515548644, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (162, 5, '????????????', 100, '/OA/Leave/Index', 1, NULL, 'fa fa-hand-paper-o', 1, 1, 1519985181, NULL, 0, 0, NULL, '100:162');
INSERT INTO `sys_resource` VALUES (163, 5, '??????', 162, NULL, 0, NULL, 'fa fa-search', 0, 0, 1519985181, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (164, 5, '??????', 162, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1519985181, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (165, 5, '??????', 162, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1519985181, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (166, 5, '??????', 162, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1519985181, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (167, 5, '?????????????????????', 162, '/OA/Leave/Show', 1, NULL, 'fa fa-cc-diners-club', 0, 1, 1520040301, NULL, 0, 0, NULL, '162:167');
INSERT INTO `sys_resource` VALUES (168, 5, '??????', 167, NULL, 0, NULL, 'fa fa-search', 0, 0, 1520040301, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (169, 5, '??????', 167, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1520040301, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (170, 5, '??????', 167, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1520040301, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (171, 5, '??????', 167, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1520040301, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (172, 2, '??????', 91, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1544438530, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (173, 2, '??????', 91, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1544438530, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (174, 2, '??????', 91, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1544438530, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (175, 1, '????????????', 1, '/Sys/Schedule/Index', 6, NULL, 'fa fa-joomla', 1, 1, 1545365625, NULL, 0, 0, NULL, '1:175');
INSERT INTO `sys_resource` VALUES (176, 1, '??????', 175, NULL, 0, NULL, 'fa fa-search', 0, 0, 1545365625, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (177, 1, '??????', 175, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1545365625, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (178, 1, '??????', 175, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1545365625, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (179, 1, '??????', 175, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1545365625, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (180, 1, '???????????????', 175, '/Sys/Schedule/Show', 1, NULL, NULL, 0, 1, 1545365682, NULL, 0, 0, NULL, '1:175:180');
INSERT INTO `sys_resource` VALUES (181, 1, '??????', 180, NULL, 0, NULL, 'fa fa-search', 0, 0, 1545365682, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (182, 1, '??????', 180, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1545365754, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (183, 1, '??????', 180, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1545365754, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (184, 1, '??????', 180, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1545365754, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (185, 1, '????????????', 1, '/Sys/Log/Index', 7, NULL, 'fa fa-list-alt', 1, 1, 1545902555, NULL, 0, 0, NULL, '1:185');
INSERT INTO `sys_resource` VALUES (186, 1, '??????', 185, NULL, 0, NULL, 'fa fa-search', 0, 0, 1545902555, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (187, 3, '????????????', 97, '/Weixin/Rule/Index', 3, NULL, 'fa fa-hand-lizard-o', 1, 1, 1547040097, NULL, 0, 0, NULL, '97:187');
INSERT INTO `sys_resource` VALUES (188, 3, '??????', 187, NULL, 0, NULL, 'fa fa-search', 0, 0, 1547040097, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (189, 3, '??????', 187, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1547040097, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (190, 3, '??????', 187, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1547040097, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (191, 3, '??????', 187, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1547040097, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (192, 3, '???????????????', 187, '/Weixin/Rule/Show', 1, NULL, NULL, 0, 1, 1547040143, NULL, 0, 0, NULL, '97:187:192');
INSERT INTO `sys_resource` VALUES (193, 3, '??????', 192, NULL, 0, NULL, 'fa fa-search', 0, 0, 1547040143, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (194, 3, '??????', 192, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1547040143, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (195, 3, '??????', 192, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1547040143, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (196, 3, '??????', 192, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1547040143, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (197, 3, '???????????????', 97, '/Weixin/Menu/Index', 2, NULL, 'fa fa-bars', 1, 1, 1547040193, NULL, 0, 0, NULL, '97:197');
INSERT INTO `sys_resource` VALUES (198, 3, '??????', 197, NULL, 0, NULL, 'fa fa-search', 0, 0, 1547040193, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (199, 3, '??????', 197, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1547040193, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (200, 3, '??????', 197, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1547040193, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (201, 3, '??????', 197, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1547040193, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (202, 3, '????????????????????????', 197, '/Weixin/Menu/Show', 1, NULL, NULL, 0, 1, 1547040223, NULL, 0, 0, NULL, '97:197:202');
INSERT INTO `sys_resource` VALUES (203, 3, '??????', 202, NULL, 0, NULL, 'fa fa-search', 0, 0, 1547040223, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (204, 3, '??????', 202, NULL, 0, NULL, 'fa fa-plus', 0, 0, 1547040223, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (205, 3, '??????', 202, NULL, 0, NULL, 'fa fa-edit', 0, 0, 1547040223, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (206, 3, '??????', 202, NULL, 0, NULL, 'fa fa-trash', 0, 0, 1547040223, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (223, 2, '??????', 98, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1556070241, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (224, 2, '??????', 98, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1556070241, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (225, 2, '??????', 98, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1556070241, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (226, 2, '????????????', 88, '/WF/WorkFlowInstance/MyFlow', 2, NULL, 'fa fa-user-plus', 1, 1, 1556096263, NULL, 0, 0, NULL, '88:226');
INSERT INTO `sys_resource` VALUES (227, 2, '??????', 226, NULL, 0, 'fa fa-search', NULL, 0, 0, 1556096263, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (228, 2, '??????', 226, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1556096263, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (229, 2, '??????', 226, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1556096263, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (230, 2, '??????', 226, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1556096263, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (231, 2, '????????????', 88, '/WF/WorkFlowInstance/Start', 5, NULL, 'fa fa-location-arrow', 1, 1, 1556096629, NULL, 0, 0, NULL, '88:231');
INSERT INTO `sys_resource` VALUES (232, 2, '??????', 231, NULL, 0, 'fa fa-search', NULL, 0, 0, 1556096629, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (236, 2, '????????????', 88, '/WF/Form/Index', 6, NULL, 'fa fa-contao', 1, 1, 1556097850, '????????????', 0, 0, NULL, '88:236');
INSERT INTO `sys_resource` VALUES (237, 2, '??????', 236, NULL, 0, 'fa fa-search', NULL, 0, 0, 1556097850, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (238, 2, '??????', 236, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1556097850, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (239, 2, '??????', 236, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1556097850, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (240, 2, '??????', 236, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1556097850, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (241, 2, '?????????????????????', 236, '/WF/Form/Show', 1, NULL, NULL, 0, 1, 1556098005, NULL, 0, 0, NULL, '88:236:241');
INSERT INTO `sys_resource` VALUES (242, 2, '??????', 241, NULL, 0, 'fa fa-search', NULL, 0, 0, 1556098005, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (243, 2, '??????', 241, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1556098005, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (244, 2, '??????', 241, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1556098005, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (245, 2, '??????', 241, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1556098005, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (246, 2, '?????????????????????', 91, '/WF/WorkFlow/Show', 1, NULL, NULL, 0, 1, 1557981722, '?????????????????????', 0, 0, NULL, '88:91:246');
INSERT INTO `sys_resource` VALUES (247, 2, '??????', 246, NULL, 0, 'fa fa-search', NULL, 0, 0, 1557981722, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (248, 2, '??????', 246, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1557981722, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (249, 2, '??????', 246, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1557981722, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (250, 2, '??????', 246, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1557981722, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (253, 5, '????????????', 100, '/OA/Message/Index', 2, NULL, 'fa fa-envelope-o', 1, 1, 1558927920, NULL, 0, 0, NULL, '100:253');
INSERT INTO `sys_resource` VALUES (254, 5, '??????', 253, NULL, 0, 'fa fa-search', NULL, 0, 0, 1558927920, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (255, 5, '??????', 253, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1558927920, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (256, 5, '??????', 253, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1558927920, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (257, 5, '??????', 253, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1558927920, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (258, 5, '????????????', 253, NULL, 0, 'fa fa-location-arrow', NULL, 0, 0, 1558927931, NULL, 0, 1, 9, NULL);
INSERT INTO `sys_resource` VALUES (259, 5, '???????????????', 253, '/OA/Message/Show', 1, NULL, NULL, 0, 1, 1558927982, NULL, 0, 0, NULL, '100:253:259');
INSERT INTO `sys_resource` VALUES (260, 5, '??????', 259, NULL, 0, 'fa fa-search', NULL, 0, 0, 1558927982, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (261, 5, '??????', 259, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1558927982, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (262, 5, '??????', 259, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1558927982, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (263, 5, '??????', 259, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1558927982, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (264, 5, '????????????', 100, '/OA/Message/MyList', 3, NULL, 'fa fa-commenting-o', 1, 1, 1558928061, NULL, 0, 0, NULL, '100:264');
INSERT INTO `sys_resource` VALUES (265, 5, '??????', 264, NULL, 0, 'fa fa-search', NULL, 0, 0, 1558928061, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (266, 5, '????????????', 264, '/OA/Message/Detail', 1, NULL, NULL, 0, 1, 1558946268, NULL, 0, 0, NULL, '100:264:266');
INSERT INTO `sys_resource` VALUES (267, 5, '??????', 266, NULL, 0, 'fa fa-search', NULL, 0, 0, 1558946268, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (268, 3, '?????????', 97, '/Weixin/Account/Index', 1, NULL, 'fa fa-user', 1, 1, 1560503093, '???????????????', 0, 0, NULL, '97:268');
INSERT INTO `sys_resource` VALUES (269, 3, '??????', 268, NULL, 0, 'fa fa-search', NULL, 0, 0, 1560503093, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (270, 3, '??????', 268, NULL, 0, 'fa fa-plus', NULL, 0, 0, 1560503093, NULL, 0, 1, 2, NULL);
INSERT INTO `sys_resource` VALUES (271, 3, '??????', 268, NULL, 0, 'fa fa-edit', NULL, 0, 0, 1560503093, NULL, 0, 1, 3, NULL);
INSERT INTO `sys_resource` VALUES (272, 3, '??????', 268, NULL, 0, 'fa fa-trash', NULL, 0, 0, 1560503093, NULL, 0, 1, 4, NULL);
INSERT INTO `sys_resource` VALUES (273, 5, '????????????', 100, '/OA/Chat/Index', 4, NULL, 'fa fa-whatsapp', 1, 1, 1560740703, '??????????????????', 0, 0, NULL, '100:273');
INSERT INTO `sys_resource` VALUES (274, 5, '??????', 273, NULL, 0, 'fa fa-search', NULL, 0, 0, 1560740703, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (275, 1, '????????????', 1, '/Sys/CodeBuilder/Index', 8, NULL, 'fa fa-code', 1, 1, 1571682751, NULL, 0, 0, NULL, '1:275');
INSERT INTO `sys_resource` VALUES (276, 1, '??????', 275, NULL, 0, 'fa fa-search', NULL, 0, 0, 1571682751, NULL, 0, 1, 1, NULL);
INSERT INTO `sys_resource` VALUES (277, 1, 'kibana??????', 1, 'http://192.168.178.81:5601/app/kibana', 9, NULL, 'fa fa-building-o', 1, 1, 1575852343, 'kibana??????', 0, 0, NULL, '1:277');
INSERT INTO `sys_resource` VALUES (278, 2, '??????', 246, NULL, 0, '', NULL, 0, 0, 1585541925, NULL, 0, 1, 9, NULL);
INSERT INTO `sys_resource` VALUES (279, 2, '????????????', 91, NULL, 0, '', NULL, 0, 0, 1585542298, NULL, 0, 1, 9, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `RoleId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `SystemId` bigint(20) NOT NULL COMMENT '????????????',
  `RoleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `Memo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `IsDel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????ID',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `UpdateUserId` bigint(20) NULL DEFAULT NULL COMMENT '?????????',
  `UpdateTime` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`RoleId`) USING BTREE,
  INDEX `SystemId`(`SystemId`) USING BTREE,
  CONSTRAINT `sys_role_ibfk_1` FOREIGN KEY (`SystemId`) REFERENCES `sys_system` (`SystemId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 1, '???????????????', '???????????????', 0, 0, 1497889200, NULL, NULL);
INSERT INTO `sys_role` VALUES (2, 1, '???????????????', '???????????????', 1, 0, 1497889200, 0, 0);
INSERT INTO `sys_role` VALUES (4, 1, '????????????', '????????????', 1, 1, 1499488686, NULL, NULL);
INSERT INTO `sys_role` VALUES (5, 2, '???????????????', '???????????????', 0, 1, 1499493280, NULL, NULL);
INSERT INTO `sys_role` VALUES (6, 5, '????????????', '????????????123', 0, 1, 1500956464, NULL, NULL);
INSERT INTO `sys_role` VALUES (7, 3, '???????????????', '???????????????', 0, 1, 1547040281, 0, 0);

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `RoleId` bigint(20) NOT NULL COMMENT '??????ID',
  `ResourceId` bigint(20) NOT NULL COMMENT '??????ID',
  `CreateTime` bigint(20) NOT NULL COMMENT '???????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `RoleId`(`RoleId`) USING BTREE,
  INDEX `ResourceId`(`ResourceId`) USING BTREE,
  CONSTRAINT `sys_role_resource_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `sys_role` (`RoleId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_resource_ibfk_2` FOREIGN KEY (`ResourceId`) REFERENCES `sys_resource` (`ResourceId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2518 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES (2247, 7, 97, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2248, 7, 268, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2249, 7, 269, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2250, 7, 270, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2251, 7, 271, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2252, 7, 272, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2253, 7, 197, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2254, 7, 198, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2255, 7, 199, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2256, 7, 200, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2257, 7, 201, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2258, 7, 202, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2259, 7, 203, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2260, 7, 204, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2261, 7, 205, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2262, 7, 206, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2263, 7, 187, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2264, 7, 188, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2265, 7, 189, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2266, 7, 190, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2267, 7, 191, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2268, 7, 192, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2269, 7, 193, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2270, 7, 194, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2271, 7, 195, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2272, 7, 196, 1560503131);
INSERT INTO `sys_role_resource` VALUES (2273, 6, 100, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2274, 6, 162, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2275, 6, 163, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2276, 6, 164, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2277, 6, 165, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2278, 6, 166, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2279, 6, 167, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2280, 6, 168, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2281, 6, 169, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2282, 6, 170, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2283, 6, 171, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2284, 6, 253, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2285, 6, 254, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2286, 6, 255, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2287, 6, 256, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2288, 6, 257, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2289, 6, 258, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2290, 6, 259, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2291, 6, 260, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2292, 6, 261, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2293, 6, 262, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2294, 6, 263, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2295, 6, 264, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2296, 6, 265, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2297, 6, 266, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2298, 6, 267, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2299, 6, 273, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2300, 6, 274, 1560740715);
INSERT INTO `sys_role_resource` VALUES (2371, 1, 1, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2372, 1, 76, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2373, 1, 81, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2374, 1, 83, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2375, 1, 84, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2376, 1, 85, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2377, 1, 82, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2378, 1, 78, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2379, 1, 79, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2380, 1, 157, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2381, 1, 159, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2382, 1, 160, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2383, 1, 161, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2384, 1, 158, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2385, 1, 80, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2386, 1, 77, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2387, 1, 53, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2388, 1, 66, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2389, 1, 68, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2390, 1, 69, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2391, 1, 70, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2392, 1, 67, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2393, 1, 55, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2394, 1, 56, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2395, 1, 57, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2396, 1, 54, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2397, 1, 142, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2398, 1, 144, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2399, 1, 152, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2400, 1, 154, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2401, 1, 155, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2402, 1, 156, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2403, 1, 153, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2404, 1, 145, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2405, 1, 146, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2406, 1, 143, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2407, 1, 58, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2408, 1, 71, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2409, 1, 73, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2410, 1, 74, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2411, 1, 75, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2412, 1, 72, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2413, 1, 60, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2414, 1, 61, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2415, 1, 62, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2416, 1, 59, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2417, 1, 2, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2418, 1, 4, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2419, 1, 49, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2420, 1, 50, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2421, 1, 51, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2422, 1, 48, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2423, 1, 87, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2424, 1, 64, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2425, 1, 65, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2426, 1, 86, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2427, 1, 175, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2428, 1, 176, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2429, 1, 177, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2430, 1, 178, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2431, 1, 179, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2432, 1, 180, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2433, 1, 181, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2434, 1, 182, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2435, 1, 183, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2436, 1, 184, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2437, 1, 185, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2438, 1, 186, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2439, 1, 275, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2440, 1, 276, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2441, 1, 277, 1575852356);
INSERT INTO `sys_role_resource` VALUES (2480, 5, 88, 1585542317);
INSERT INTO `sys_role_resource` VALUES (2481, 5, 94, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2482, 5, 96, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2483, 5, 93, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2484, 5, 95, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2485, 5, 226, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2486, 5, 227, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2487, 5, 228, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2488, 5, 229, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2489, 5, 230, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2490, 5, 91, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2491, 5, 172, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2492, 5, 173, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2493, 5, 174, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2494, 5, 279, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2495, 5, 246, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2496, 5, 247, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2497, 5, 248, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2498, 5, 249, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2499, 5, 250, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2500, 5, 92, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2501, 5, 98, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2502, 5, 223, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2503, 5, 224, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2504, 5, 225, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2505, 5, 99, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2506, 5, 231, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2507, 5, 232, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2508, 5, 236, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2509, 5, 237, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2510, 5, 238, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2511, 5, 239, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2512, 5, 240, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2513, 5, 241, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2514, 5, 242, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2515, 5, 243, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2516, 5, 244, 1585542318);
INSERT INTO `sys_role_resource` VALUES (2517, 5, 245, 1585542318);

-- ----------------------------
-- Table structure for sys_schedule
-- ----------------------------
DROP TABLE IF EXISTS `sys_schedule`;
CREATE TABLE `sys_schedule`  (
  `JobId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `JobName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `JobGroup` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '????????????',
  `JobStatus` tinyint(4) NOT NULL COMMENT '??????????????? 0 ???????????????1 ????????????',
  `TriggerType` tinyint(4) NOT NULL COMMENT '??????????????????0???simple 1???cron???',
  `Cron` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????????????????',
  `AssemblyName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????DLL????????????????????????',
  `ClassName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `Remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `CreateTime` datetime(0) NOT NULL,
  `UpdateTime` datetime(0) NULL DEFAULT NULL,
  `RunTimes` int(11) NOT NULL DEFAULT 0 COMMENT '????????????',
  `BeginTime` datetime(0) NOT NULL COMMENT '????????????',
  `EndTime` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `IntervalSecond` int(11) NULL DEFAULT NULL COMMENT '??????????????????, ????????????',
  `Url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'job???????????????url',
  `Status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '?????? 0??????,1?????????',
  PRIMARY KEY (`JobId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_schedule
-- ----------------------------
INSERT INTO `sys_schedule` VALUES (1, '??????AccessToken??????????????????', 'DefaultJob', 0, 0, '3 * * * * ? ', 'MsSystem.Schedule.Job', 'WxAccessTokenJob', NULL, '2019-04-17 11:05:13', NULL, 0, '2019-04-17 11:05:08', NULL, 0, NULL, 1);
INSERT INTO `sys_schedule` VALUES (2, '??????????????????????????????', 'DefaultJob', 0, 0, '0 0 0/1 * * ? ', 'MsSystem.Schedule.Job', 'WxUserInfoJob', NULL, '2019-04-17 11:05:13', NULL, 0, '2019-04-17 11:05:08', NULL, 0, NULL, 1);

-- ----------------------------
-- Table structure for sys_system
-- ----------------------------
DROP TABLE IF EXISTS `sys_system`;
CREATE TABLE `sys_system`  (
  `SystemId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `SystemName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `SystemCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `Memo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `IsDel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '??????',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????ID',
  `CreateTime` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  `UpdateUserId` bigint(20) NULL DEFAULT NULL COMMENT '?????????',
  `UpdateTime` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`SystemId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_system
-- ----------------------------
INSERT INTO `sys_system` VALUES (1, '????????????', 'be1c63a0-63aa-11e7-a221-f97d872f551b', '????????????', 0, 1, 1, 1498481230, 0, 1537448282);
INSERT INTO `sys_system` VALUES (2, '?????????', 'c3cd9538-63aa-11e7-a221-f97d872f551b', '?????????', 0, 4, 1, 1498481230, 0, 1537447644);
INSERT INTO `sys_system` VALUES (3, '????????????', 'c7526ad9-63aa-11e7-a221-f97d872f551b', '????????????', 0, 3, 1, 1498481230, 0, 1537447638);
INSERT INTO `sys_system` VALUES (4, '????????????', '252110d2-cb56-46c8-9dc2-64c3d7e23b21', '????????????0000', 1, 0, 1, 1499494026, 0, 0);
INSERT INTO `sys_system` VALUES (5, '??????????????????', 'd65fb3df-d342-41c9-ad9a-3faedbb5b0dc', '??????????????????', 0, 2, 1, 1500955747, 0, 1537448139);
INSERT INTO `sys_system` VALUES (6, '????????????', '8130e64e-912b-4ce5-aae5-89ba3b5d97a9', '??????????????????', 1, 0, 1, 1509884116, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `UserId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `JobNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `HeadImg` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `IsDel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????? 1:??????0??????',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????ID',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `UpdateUserId` bigint(20) NULL DEFAULT NULL COMMENT '?????????',
  `UpdateTime` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`UserId`) USING BTREE,
  INDEX `Account`(`Account`) USING BTREE,
  INDEX `JobNumber`(`JobNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'wms', 'wms', '20180101', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 0, 1, 12, 1, 1542809506);
INSERT INTO `sys_user` VALUES (4, 'wangwu', '??????123', '20180102', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 0, 0, 1498571322, 1, 1560497334);
INSERT INTO `sys_user` VALUES (5, 'zhangsan', '??????', '20180103', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/1ca449c6-24ed-4b78-a032-6005990ff707.jpeg', 0, 0, 1499750510, 1, 1538660578);
INSERT INTO `sys_user` VALUES (6, 'lisi', '??????aa', '20180104', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 0, 0, 1499750523, NULL, NULL);
INSERT INTO `sys_user` VALUES (7, '123', '123', '20180105', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 0, 0, 1499750534, 1, 1557909906);
INSERT INTO `sys_user` VALUES (8, '321', '321', '20180106', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1499750544, NULL, NULL);
INSERT INTO `sys_user` VALUES (9, '1234', '1234', '20180107', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1499750555, NULL, NULL);
INSERT INTO `sys_user` VALUES (10, '1234', '1234', '20180108', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1499750555, NULL, NULL);
INSERT INTO `sys_user` VALUES (11, 'asd', 'asd', '20180109', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1499750583, NULL, NULL);
INSERT INTO `sys_user` VALUES (12, 'asd', 'asd', '20180110', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1499750584, NULL, NULL);
INSERT INTO `sys_user` VALUES (13, 'aaa', 'aaa', '20180111', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1499750592, NULL, NULL);
INSERT INTO `sys_user` VALUES (14, 'aaa', 'aaa', '20180112', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1499750592, NULL, NULL);
INSERT INTO `sys_user` VALUES (15, 'bbb', 'bbb', '20180113', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1501310757, NULL, NULL);
INSERT INTO `sys_user` VALUES (16, 'ccc', 'ccc', '20180114', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1501310765, NULL, NULL);
INSERT INTO `sys_user` VALUES (17, 'ddd', 'ddd', '20180115', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1501310778, NULL, NULL);
INSERT INTO `sys_user` VALUES (18, 'eee', 'eee', '20180116', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1501310789, NULL, NULL);
INSERT INTO `sys_user` VALUES (19, 'asd', 'asd', '20180117', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1509869141, NULL, NULL);
INSERT INTO `sys_user` VALUES (20, '123', '123', '2018102098', 'A93C168323147D1135503939396CAC628DC194C5', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1539993966, NULL, NULL);
INSERT INTO `sys_user` VALUES (21, 'cs', 'cs', '2019041302', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '/uploadfile/342bd59b-edf4-48cf-aa27-d13e5a0b70df.jpeg', 1, 0, 1555123202, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `DeptId` bigint(20) NOT NULL COMMENT '??????ID',
  `UserId` bigint(20) NOT NULL COMMENT '??????ID',
  `CreateTime` bigint(20) NOT NULL COMMENT '???????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `DeptId`(`DeptId`) USING BTREE,
  INDEX `UserId`(`UserId`) USING BTREE,
  CONSTRAINT `sys_user_dept_ibfk_1` FOREIGN KEY (`DeptId`) REFERENCES `sys_dept` (`DeptId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_dept_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `sys_user` (`UserId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept` VALUES (4, 4, 6, 1557303745);
INSERT INTO `sys_user_dept` VALUES (5, 3, 1, 1559469199);
INSERT INTO `sys_user_dept` VALUES (6, 3, 4, 1559792769);
INSERT INTO `sys_user_dept` VALUES (7, 3, 7, 1576693494);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `UserId` bigint(20) NOT NULL COMMENT '??????ID',
  `RoleId` bigint(20) NOT NULL COMMENT '??????ID',
  `CreateTime` bigint(20) NOT NULL COMMENT '???????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `UserId`(`UserId`) USING BTREE,
  INDEX `RoleId`(`RoleId`) USING BTREE,
  CONSTRAINT `sys_user_role_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `sys_user` (`UserId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_role_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `sys_role` (`RoleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (47, 1, 1, 1547040313);
INSERT INTO `sys_user_role` VALUES (48, 1, 5, 1547040313);
INSERT INTO `sys_user_role` VALUES (49, 1, 7, 1547040313);
INSERT INTO `sys_user_role` VALUES (50, 1, 6, 1547040313);
INSERT INTO `sys_user_role` VALUES (51, 4, 1, 1557214422);
INSERT INTO `sys_user_role` VALUES (52, 4, 5, 1557214422);
INSERT INTO `sys_user_role` VALUES (56, 6, 6, 1557303730);
INSERT INTO `sys_user_role` VALUES (58, 6, 1, 1557304953);
INSERT INTO `sys_user_role` VALUES (59, 7, 5, 1557909952);
INSERT INTO `sys_user_role` VALUES (60, 7, 6, 1557909952);
INSERT INTO `sys_user_role` VALUES (61, 4, 6, 1559053056);
INSERT INTO `sys_user_role` VALUES (62, 5, 1, 1559702623);
INSERT INTO `sys_user_role` VALUES (63, 5, 5, 1559702623);
INSERT INTO `sys_user_role` VALUES (64, 5, 6, 1559702623);

-- ----------------------------
-- Table structure for sys_workflowsql
-- ----------------------------
DROP TABLE IF EXISTS `sys_workflowsql`;
CREATE TABLE `sys_workflowsql`  (
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????sql??????,????????????sys_???????????????????????????????????????????????????????????????',
  `FlowSQL` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????SQL????????????????????????????????????',
  `Param` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????? , ??????',
  `SQLType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '?????????0??????????????????????????????????????????ID???1???????????????????????????????????????????????????????????????????????????????????????????????????',
  `Status` int(11) NOT NULL DEFAULT 1 COMMENT '??????',
  `Remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????ID',
  PRIMARY KEY (`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_workflowsql
-- ----------------------------
INSERT INTO `sys_workflowsql` VALUES ('sys_getdeptleader', 'SELECT DISTINCT dl.`UserId` FROM sys_user u \r\nLEFT JOIN sys_user_dept ud ON ud.`UserId`=u.`UserId`\r\nLEFT JOIN sys_dept_leader dl ON dl.`DeptId`=ud.`DeptId`\r\nWHERE u.`UserId`=@userid', 'userid', 0, 1, '????????????????????????????????????', 1, 1);

-- ----------------------------
-- Table structure for wf_workflow
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow`;
CREATE TABLE `wf_workflow`  (
  `FlowId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `FlowCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `CategoryId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????ID',
  `FormId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????ID',
  `FlowName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `FlowContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????JSON',
  `FlowVersion` int(11) NOT NULL DEFAULT 1 COMMENT '????????????',
  `Memo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `IsOld` int(11) NOT NULL DEFAULT 0 COMMENT '??????????????????',
  `Enable` int(11) NOT NULL DEFAULT 1 COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`FlowId`) USING BTREE,
  INDEX `CategoryId`(`CategoryId`) USING BTREE,
  INDEX `FormId`(`FormId`) USING BTREE,
  CONSTRAINT `wf_workflow_ibfk_1` FOREIGN KEY (`FormId`) REFERENCES `wf_workflow_form` (`FormId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wf_workflow_ibfk_2` FOREIGN KEY (`CategoryId`) REFERENCES `wf_workflow_category` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow
-- ----------------------------
INSERT INTO `wf_workflow` VALUES ('011980a7-0ba3-4752-964e-12d88ca5c54c', '15580575818487', '9e9fc7e7-8792-40f2-97bc-8b42e583126d', '3b1ceb38-e1ee-4f15-a709-d6dd3a399c77', '????????????', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":238,\"top\":29,\"type\":\"start round mix\",\"id\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"????????????\",\"left\":390,\"top\":93,\"type\":\"task\",\"id\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"????????????\",\"left\":423,\"top\":213,\"type\":\"task\",\"id\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[]}}},{\"name\":\"??????\",\"left\":694,\"top\":273,\"type\":\"end round\",\"id\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}}],\"lines\":[{\"type\":\"tb\",\"M\":110,\"from\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"to\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"id\":\"b279111d-eb6a-4d8a-86b6-135de84a732a\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":225.5,\"from\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"to\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"id\":\"596c6d67-715e-4332-809b-7a4b8ba7fa50\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":256,\"from\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"to\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"id\":\"f3ddca8b-135b-43f6-b0bc-e42060a233af\",\"name\":\"\",\"dash\":false,\"alt\":true}],\"areas\":[],\"initNum\":8}', 1, '????????????', 0, 1, '1', 1558057581);
INSERT INTO `wf_workflow` VALUES ('2b1b17c4-69ca-474b-977a-e8b1f1382e89', '15601364386520', '9e9fc7e7-8792-40f2-97bc-8b42e583126d', 'fd4a4efc-7df2-49c4-9ffc-f84db346cac7', '????????????', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":265,\"top\":81,\"type\":\"start round mix\",\"id\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"???????????????\",\"left\":473,\"top\":84,\"type\":\"task\",\"id\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"wms\",\"left\":480,\"top\":247,\"type\":\"view\",\"id\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"CREATEUSER\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"\"}}},{\"name\":\"??????\",\"left\":837,\"top\":84,\"type\":\"end round\",\"id\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}}],\"lines\":[{\"type\":\"sl\",\"from\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"to\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"id\":\"18365384-6f16-41dc-aeb6-ce384cc11d94\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"id\":\"a543a2e5-9045-4742-b974-477acdd37ffe\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"id\":\"148f4d46-2ee7-405d-a2e3-270a5b6d2539\",\"name\":\"\",\"dash\":false}],\"areas\":[],\"initNum\":8}', 1, '????????????', 1, 0, '1', 1560136438);
INSERT INTO `wf_workflow` VALUES ('477e4199-aaf0-4e21-9eed-088922a83d58', '15563796431067', '9e9fc7e7-8792-40f2-97bc-8b42e583126d', '041f7de8-dd83-4aec-a253-e181b77cc40e', '????????????', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":67,\"top\":44,\"type\":\"start round mix\",\"id\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":438,\"top\":49,\"type\":\"task\",\"id\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"4\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":809,\"top\":238,\"type\":\"end round\",\"id\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":778,\"top\":52,\"type\":\"task\",\"id\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"???????????????\",\"left\":178,\"top\":49,\"type\":\"task\",\"id\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"c764f55f-125b-48e6-8f37-8f281788d960\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"to\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"id\":\"c587ca2a-c95f-491a-b55a-a27c67df3037\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"id\":\"5923dd84-6010-4003-bf4c-d4ee8605e945\",\"setInfo\":{\"CustomSQL\":\"oa_leaveMoreThenThreeDays\"},\"name\":\">3???\",\"dash\":false},{\"type\":\"sl\",\"from\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"to\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"id\":\"0ebead88-6942-4563-aa5f-8dbd4c453fe5\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":210.5,\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"ba6765a0-f21e-436a-a094-73a2b03183b1\",\"setInfo\":{\"CustomSQL\":\"oa_leaveLessThenThreeDays\"},\"name\":\"<=3???\",\"dash\":false}],\"areas\":[],\"initNum\":22}', 1, '????????????', 0, 1, '1', 1556379643);
INSERT INTO `wf_workflow` VALUES ('524d2280-033c-4bdd-aef8-6924950b5468', '15594687698457', '9e9fc7e7-8792-40f2-97bc-8b42e583126d', '4dfacbf1-40bd-4fe0-b4fa-249713f28659', '????????????-NEW', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":282,\"top\":116,\"type\":\"start round mix\",\"id\":\"5231704b-8c9f-4155-9e9d-7cdcdc9c57fe\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":955,\"top\":245,\"type\":\"end round\",\"id\":\"75e7fb37-1d3d-4be6-9e65-aa6ffc78bccf\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"???????????????\",\"left\":514,\"top\":169,\"type\":\"task\",\"id\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"5231704b-8c9f-4155-9e9d-7cdcdc9c57fe\",\"to\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"id\":\"95aa2ed5-aaf8-410d-a858-c864ca843dfa\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"to\":\"75e7fb37-1d3d-4be6-9e65-aa6ffc78bccf\",\"id\":\"bb1567d9-0d70-44e8-a093-a0352fccc700\",\"name\":\"\",\"dash\":false}],\"areas\":[],\"initNum\":6}', 2, '????????????', 1, 0, '1', 1585627236);
INSERT INTO `wf_workflow` VALUES ('9f9ece09-d9e8-4dba-8ab2-f245abb9ec8a', '15601364386520', '9e9fc7e7-8792-40f2-97bc-8b42e583126d', 'fd4a4efc-7df2-49c4-9ffc-f84db346cac7', '????????????-NEW', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":265,\"top\":81,\"type\":\"start round mix\",\"id\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"???????????????\",\"left\":473,\"top\":84,\"type\":\"task\",\"id\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"wms\",\"left\":480,\"top\":247,\"type\":\"view\",\"id\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"CREATEUSER\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"\"}}},{\"name\":\"??????\",\"left\":837,\"top\":84,\"type\":\"end round\",\"id\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}}],\"lines\":[{\"type\":\"sl\",\"from\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"to\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"id\":\"18365384-6f16-41dc-aeb6-ce384cc11d94\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"id\":\"a543a2e5-9045-4742-b974-477acdd37ffe\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"id\":\"148f4d46-2ee7-405d-a2e3-270a5b6d2539\",\"name\":\"\",\"dash\":false}],\"areas\":[],\"initNum\":8}', 2, '????????????', 0, 1, '1', 1585629901);
INSERT INTO `wf_workflow` VALUES ('a9dd987c-f25f-4297-94be-465c5044b076', '15594687698457', '9e9fc7e7-8792-40f2-97bc-8b42e583126d', '4dfacbf1-40bd-4fe0-b4fa-249713f28659', '????????????', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":282,\"top\":116,\"type\":\"start round mix\",\"id\":\"5231704b-8c9f-4155-9e9d-7cdcdc9c57fe\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":955,\"top\":245,\"type\":\"end round\",\"id\":\"75e7fb37-1d3d-4be6-9e65-aa6ffc78bccf\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"???????????????\",\"left\":514,\"top\":169,\"type\":\"task\",\"id\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"5231704b-8c9f-4155-9e9d-7cdcdc9c57fe\",\"to\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"id\":\"95aa2ed5-aaf8-410d-a858-c864ca843dfa\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"to\":\"75e7fb37-1d3d-4be6-9e65-aa6ffc78bccf\",\"id\":\"bb1567d9-0d70-44e8-a093-a0352fccc700\",\"name\":\"\",\"dash\":false}],\"areas\":[],\"initNum\":6}', 1, '????????????', 1, 0, '1', 1559468769);
INSERT INTO `wf_workflow` VALUES ('ce907471-26ce-4ae4-919c-6a6cbe1fa114', '15594687698457', '9e9fc7e7-8792-40f2-97bc-8b42e583126d', '4dfacbf1-40bd-4fe0-b4fa-249713f28659', '????????????-NEW-NEW', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":282,\"top\":116,\"type\":\"start round mix\",\"id\":\"5231704b-8c9f-4155-9e9d-7cdcdc9c57fe\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":955,\"top\":245,\"type\":\"end round\",\"id\":\"75e7fb37-1d3d-4be6-9e65-aa6ffc78bccf\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"???????????????\",\"left\":514,\"top\":169,\"type\":\"task\",\"id\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"5231704b-8c9f-4155-9e9d-7cdcdc9c57fe\",\"to\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"id\":\"95aa2ed5-aaf8-410d-a858-c864ca843dfa\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"d96914cd-d85e-47b4-acdf-1b1fbecd78fc\",\"to\":\"75e7fb37-1d3d-4be6-9e65-aa6ffc78bccf\",\"id\":\"bb1567d9-0d70-44e8-a093-a0352fccc700\",\"name\":\"\",\"dash\":false}],\"areas\":[],\"initNum\":6}', 3, '????????????', 0, 0, '1', 1585627516);

-- ----------------------------
-- Table structure for wf_workflow_assign
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_assign`;
CREATE TABLE `wf_workflow_assign`  (
  `Id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `FlowId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `InstanceId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `NodeId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????id',
  `NodeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????id',
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `AssignUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????id',
  `AssignUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `Content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `FlowId`(`FlowId`) USING BTREE,
  INDEX `InstanceId`(`InstanceId`) USING BTREE,
  CONSTRAINT `wf_workflow_assign_ibfk_1` FOREIGN KEY (`FlowId`) REFERENCES `wf_workflow` (`FlowId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wf_workflow_assign_ibfk_2` FOREIGN KEY (`InstanceId`) REFERENCES `wf_workflow_instance` (`InstanceId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_assign
-- ----------------------------
INSERT INTO `wf_workflow_assign` VALUES ('4b48b3b1-3af7-4f23-83bb-a3732566237a', '477e4199-aaf0-4e21-9eed-088922a83d58', '157bc333-2357-4a80-8180-c52f4c3cd57d', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', '??????', '4', '??????123', '6', '??????aa', '??????', 1576722476, '4');
INSERT INTO `wf_workflow_assign` VALUES ('be0a45e7-5464-41a5-adbd-a6997320ffae', '477e4199-aaf0-4e21-9eed-088922a83d58', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '4', '??????123', '5', '??????', '????????????', 1576138413, '4');
INSERT INTO `wf_workflow_assign` VALUES ('d74e688b-3f56-449f-a643-47e39f86b39f', '477e4199-aaf0-4e21-9eed-088922a83d58', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', 'wms', '4', '??????123', '????????????', 1576138337, '1');

-- ----------------------------
-- Table structure for wf_workflow_category
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_category`;
CREATE TABLE `wf_workflow_category`  (
  `Id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `ParentId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `Memo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `Status` int(11) NULL DEFAULT 1 COMMENT '??????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_category
-- ----------------------------
INSERT INTO `wf_workflow_category` VALUES ('0b286d49-162a-451b-a1d4-4ab5f2eeddb8', '????????????', '00000000-0000-0000-0000-000000000000', '?????????', 0, 1559180780, '1');
INSERT INTO `wf_workflow_category` VALUES ('0e9deb2e-941e-423a-85f0-4092b0c46204', '????????????', '00000000-0000-0000-0000-000000000000', '????????????', 0, 1559180844, '1');
INSERT INTO `wf_workflow_category` VALUES ('9e9fc7e7-8792-40f2-97bc-8b42e583126d', '????????????', '00000000-0000-0000-0000-000000000000', '????????????', 1, 1556072828, '1');

-- ----------------------------
-- Table structure for wf_workflow_form
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_form`;
CREATE TABLE `wf_workflow_form`  (
  `FormId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????ID',
  `FormName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `FormType` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `Content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????',
  `OriginalContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????????????????',
  `FormUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  PRIMARY KEY (`FormId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_form
-- ----------------------------
INSERT INTO `wf_workflow_form` VALUES ('041f7de8-dd83-4aec-a253-e181b77cc40e', '??????', 1, NULL, NULL, '/OA/Leave/Show', 1556075724, '1');
INSERT INTO `wf_workflow_form` VALUES ('3b1ceb38-e1ee-4f15-a709-d6dd3a399c77', '????????????', 0, '\n                                    \n                                    \n                                    \n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">?????????</label>\n		<div class=\"col-sm-9\">\n			<input name=\"FlowParam_1\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			  <input name=\"FlowParam_2\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			<textarea name=\"FlowParam_4\" class=\"form-control required\"></textarea>\n		</div>\n	</div>\n\n                                \n                                \n                                ', '\n                                    \n                                    \n                                    \n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">?????????</label>\n		<div class=\"col-sm-9\">\n			<input type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			  <input type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			<textarea class=\"form-control required\"></textarea>\n		</div>\n	</div>\n\n                                \n                                \n                                ', NULL, 1558057039, '1');
INSERT INTO `wf_workflow_form` VALUES ('4dfacbf1-40bd-4fe0-b4fa-249713f28659', '????????????', 0, '????????????\n                                    \n                                ', '????????????\n                                    \n                                ', NULL, 1559466362, '1');
INSERT INTO `wf_workflow_form` VALUES ('fd4a4efc-7df2-49c4-9ffc-f84db346cac7', '????????????', 0, '????????????\n                                    \n                                ', '????????????\n                                    \n                                ', NULL, 1560136422, '1');

-- ----------------------------
-- Table structure for wf_workflow_instance
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_instance`;
CREATE TABLE `wf_workflow_instance`  (
  `InstanceId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????ID',
  `FlowId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `ActivityId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????ID',
  `ActivityType` int(11) NULL DEFAULT NULL COMMENT '??????????????????',
  `ActivityName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `PreviousId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????ID',
  `MakerList` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `FlowContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '??????JSON??????',
  `FlowVersion` int(11) NOT NULL DEFAULT 1 COMMENT '????????????',
  `IsFinish` int(11) NULL DEFAULT NULL COMMENT '??????????????????',
  `Status` int(11) NOT NULL DEFAULT 0 COMMENT '??????????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `CreateUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `UpdateTime` bigint(20) NOT NULL COMMENT '?????????????????????',
  PRIMARY KEY (`InstanceId`) USING BTREE,
  INDEX `FlowId`(`FlowId`) USING BTREE,
  CONSTRAINT `wf_workflow_instance_ibfk_1` FOREIGN KEY (`FlowId`) REFERENCES `wf_workflow` (`FlowId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_instance
-- ----------------------------
INSERT INTO `wf_workflow_instance` VALUES ('157bc333-2357-4a80-8180-c52f4c3cd57d', '477e4199-aaf0-4e21-9eed-088922a83d58', '15766936197160', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', '634b9765-ac0e-4272-bfab-f5b260c7fde8', '1,', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":67,\"top\":44,\"type\":\"start round mix\",\"id\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":438,\"top\":49,\"type\":\"task\",\"id\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"4\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":809,\"top\":238,\"type\":\"end round\",\"id\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":778,\"top\":52,\"type\":\"task\",\"id\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"???????????????\",\"left\":178,\"top\":49,\"type\":\"task\",\"id\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"c764f55f-125b-48e6-8f37-8f281788d960\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"to\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"id\":\"c587ca2a-c95f-491a-b55a-a27c67df3037\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"id\":\"5923dd84-6010-4003-bf4c-d4ee8605e945\",\"setInfo\":{\"CustomSQL\":\"oa_leaveMoreThenThreeDays\"},\"name\":\">3???\",\"dash\":false},{\"type\":\"sl\",\"from\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"to\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"id\":\"0ebead88-6942-4563-aa5f-8dbd4c453fe5\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":210.5,\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"ba6765a0-f21e-436a-a094-73a2b03183b1\",\"setInfo\":{\"CustomSQL\":\"oa_leaveLessThenThreeDays\"},\"name\":\"<=3???\",\"dash\":false}],\"areas\":[],\"initNum\":22}', 1, 0, 3, 1576722419, '7', '123', 1576693789);
INSERT INTO `wf_workflow_instance` VALUES ('26f0dfd4-758f-45fd-beab-5abc9ae887db', '477e4199-aaf0-4e21-9eed-088922a83d58', '15761094984150', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', '77825e68-4a61-43b8-9081-504088b332e6', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":67,\"top\":44,\"type\":\"start round mix\",\"id\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":438,\"top\":49,\"type\":\"task\",\"id\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"4\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":809,\"top\":238,\"type\":\"end round\",\"id\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":778,\"top\":52,\"type\":\"task\",\"id\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"???????????????\",\"left\":178,\"top\":49,\"type\":\"task\",\"id\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"c764f55f-125b-48e6-8f37-8f281788d960\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"to\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"id\":\"c587ca2a-c95f-491a-b55a-a27c67df3037\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"id\":\"5923dd84-6010-4003-bf4c-d4ee8605e945\",\"setInfo\":{\"CustomSQL\":\"oa_leaveMoreThenThreeDays\"},\"name\":\">3???\",\"dash\":false},{\"type\":\"sl\",\"from\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"to\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"id\":\"0ebead88-6942-4563-aa5f-8dbd4c453fe5\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":210.5,\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"ba6765a0-f21e-436a-a094-73a2b03183b1\",\"setInfo\":{\"CustomSQL\":\"oa_leaveLessThenThreeDays\"},\"name\":\"<=3???\",\"dash\":false}],\"areas\":[],\"initNum\":22}', 1, 1, 1, 1576138298, '1', 'wms', 1576110643);
INSERT INTO `wf_workflow_instance` VALUES ('27527752-308f-4eff-8841-4fac9ea31351', '477e4199-aaf0-4e21-9eed-088922a83d58', '15749778967522', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', '77825e68-4a61-43b8-9081-504088b332e6', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":67,\"top\":44,\"type\":\"start round mix\",\"id\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":438,\"top\":49,\"type\":\"task\",\"id\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"4\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":809,\"top\":238,\"type\":\"end round\",\"id\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":778,\"top\":52,\"type\":\"task\",\"id\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"???????????????\",\"left\":178,\"top\":49,\"type\":\"task\",\"id\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"c764f55f-125b-48e6-8f37-8f281788d960\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"to\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"id\":\"c587ca2a-c95f-491a-b55a-a27c67df3037\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"id\":\"5923dd84-6010-4003-bf4c-d4ee8605e945\",\"setInfo\":{\"CustomSQL\":\"oa_leaveMoreThenThreeDays\"},\"name\":\">3???\",\"dash\":false},{\"type\":\"sl\",\"from\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"to\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"id\":\"0ebead88-6942-4563-aa5f-8dbd4c453fe5\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":210.5,\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"ba6765a0-f21e-436a-a094-73a2b03183b1\",\"setInfo\":{\"CustomSQL\":\"oa_leaveLessThenThreeDays\"},\"name\":\"<=3???\",\"dash\":false}],\"areas\":[],\"initNum\":22}', 1, 1, 1, 1575006696, '1', 'wms', 1575243820);
INSERT INTO `wf_workflow_instance` VALUES ('351114eb-3fa1-44a4-be56-3715e510ad91', '011980a7-0ba3-4752-964e-12d88ca5c54c', '15747442398814', '38ebf6f4-5a82-4fb6-9342-94c0f95f6820', 4, '??????', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":238,\"top\":29,\"type\":\"start round mix\",\"id\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"????????????\",\"left\":390,\"top\":93,\"type\":\"task\",\"id\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"????????????\",\"left\":423,\"top\":213,\"type\":\"task\",\"id\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[]}}},{\"name\":\"??????\",\"left\":694,\"top\":273,\"type\":\"end round\",\"id\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}}],\"lines\":[{\"type\":\"tb\",\"M\":110,\"from\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"to\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"id\":\"b279111d-eb6a-4d8a-86b6-135de84a732a\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":225.5,\"from\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"to\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"id\":\"596c6d67-715e-4332-809b-7a4b8ba7fa50\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":256,\"from\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"to\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"id\":\"f3ddca8b-135b-43f6-b0bc-e42060a233af\",\"name\":\"\",\"dash\":false,\"alt\":true}],\"areas\":[],\"initNum\":8}', 1, 1, 1, 1574744239, '1', 'wms', 1574969738);
INSERT INTO `wf_workflow_instance` VALUES ('4fe14942-5afe-4b40-8b7e-d1c24c816836', '9f9ece09-d9e8-4dba-8ab2-f245abb9ec8a', '15856315555831', '06941d43-5d7a-4a4f-a096-1235d493a24c', 4, '??????', 'e0080e39-b227-45c1-81d1-ca18213d80d6', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":265,\"top\":81,\"type\":\"start round mix\",\"id\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"???????????????\",\"left\":473,\"top\":84,\"type\":\"task\",\"id\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"wms\",\"left\":480,\"top\":247,\"type\":\"view\",\"id\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"CREATEUSER\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"\"}}},{\"name\":\"??????\",\"left\":837,\"top\":84,\"type\":\"end round\",\"id\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}}],\"lines\":[{\"type\":\"sl\",\"from\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"to\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"id\":\"18365384-6f16-41dc-aeb6-ce384cc11d94\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"id\":\"a543a2e5-9045-4742-b974-477acdd37ffe\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"id\":\"148f4d46-2ee7-405d-a2e3-270a5b6d2539\",\"name\":\"\",\"dash\":false}],\"areas\":[],\"initNum\":8}', 1, 1, 1, 1585660355, '1', 'wms', 1585631596);
INSERT INTO `wf_workflow_instance` VALUES ('59e8c3f0-db02-4b11-978a-64bd54ddb6c8', '2b1b17c4-69ca-474b-977a-e8b1f1382e89', '15602457896721', '06941d43-5d7a-4a4f-a096-1235d493a24c', 4, 'node_4', 'e0080e39-b227-45c1-81d1-ca18213d80d6', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"node_1\",\"left\":264,\"top\":83,\"type\":\"start round mix\",\"id\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"width\":26,\"height\":26,\"alt\":true},{\"name\":\"???????????????\",\"left\":473,\"top\":84,\"type\":\"task\",\"id\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"wms\",\"left\":480,\"top\":247,\"type\":\"view\",\"id\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"CREATEUSER\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"\"}}},{\"name\":\"node_4\",\"left\":837,\"top\":84,\"type\":\"end round\",\"id\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"width\":26,\"height\":26,\"alt\":true}],\"lines\":[{\"type\":\"sl\",\"from\":\"1474e4c4-d512-49aa-8681-8720b4168554\",\"to\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"id\":\"18365384-6f16-41dc-aeb6-ce384cc11d94\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"1f702b3c-b514-47f3-a761-9190e4a8e965\",\"id\":\"a543a2e5-9045-4742-b974-477acdd37ffe\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"e0080e39-b227-45c1-81d1-ca18213d80d6\",\"to\":\"06941d43-5d7a-4a4f-a096-1235d493a24c\",\"id\":\"148f4d46-2ee7-405d-a2e3-270a5b6d2539\",\"name\":\"\",\"dash\":false}],\"areas\":[],\"initNum\":8}', 1, 1, 1, 1560245789, '1', 'wms', 1560246314);
INSERT INTO `wf_workflow_instance` VALUES ('9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', '011980a7-0ba3-4752-964e-12d88ca5c54c', '15604151753683', '38ebf6f4-5a82-4fb6-9342-94c0f95f6820', 4, '??????', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":238,\"top\":29,\"type\":\"start round mix\",\"id\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"????????????\",\"left\":390,\"top\":93,\"type\":\"task\",\"id\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"????????????\",\"left\":423,\"top\":213,\"type\":\"task\",\"id\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[]}}},{\"name\":\"??????\",\"left\":694,\"top\":273,\"type\":\"end round\",\"id\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}}],\"lines\":[{\"type\":\"tb\",\"M\":110,\"from\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"to\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"id\":\"b279111d-eb6a-4d8a-86b6-135de84a732a\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":225.5,\"from\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"to\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"id\":\"596c6d67-715e-4332-809b-7a4b8ba7fa50\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":256,\"from\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"to\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"id\":\"f3ddca8b-135b-43f6-b0bc-e42060a233af\",\"name\":\"\",\"dash\":false,\"alt\":true}],\"areas\":[],\"initNum\":8}', 1, 1, 1, 1560415175, '1', 'wms', 1560415232);
INSERT INTO `wf_workflow_instance` VALUES ('a32a6150-e4ae-4264-aeb8-93a89638679c', '477e4199-aaf0-4e21-9eed-088922a83d58', '15604170867061', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', '634b9765-ac0e-4272-bfab-f5b260c7fde8', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":67,\"top\":44,\"type\":\"start round mix\",\"id\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":438,\"top\":49,\"type\":\"task\",\"id\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"4\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":809,\"top\":238,\"type\":\"end round\",\"id\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":778,\"top\":52,\"type\":\"task\",\"id\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"???????????????\",\"left\":178,\"top\":49,\"type\":\"task\",\"id\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"c764f55f-125b-48e6-8f37-8f281788d960\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"to\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"id\":\"c587ca2a-c95f-491a-b55a-a27c67df3037\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"id\":\"5923dd84-6010-4003-bf4c-d4ee8605e945\",\"setInfo\":{\"CustomSQL\":\"oa_leaveMoreThenThreeDays\"},\"name\":\">3???\",\"dash\":false},{\"type\":\"sl\",\"from\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"to\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"id\":\"0ebead88-6942-4563-aa5f-8dbd4c453fe5\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":210.5,\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"ba6765a0-f21e-436a-a094-73a2b03183b1\",\"setInfo\":{\"CustomSQL\":\"oa_leaveLessThenThreeDays\"},\"name\":\"<=3???\",\"dash\":false}],\"areas\":[],\"initNum\":22}', 1, 1, 1, 1560417086, '1', 'wms', 1560417476);
INSERT INTO `wf_workflow_instance` VALUES ('baa04978-dfcc-405f-97c4-15ebb1a0c9c3', '011980a7-0ba3-4752-964e-12d88ca5c54c', '15761945566812', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', NULL, '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":238,\"top\":29,\"type\":\"start round mix\",\"id\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"????????????\",\"left\":390,\"top\":93,\"type\":\"task\",\"id\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}},{\"name\":\"????????????\",\"left\":423,\"top\":213,\"type\":\"task\",\"id\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[]}}},{\"name\":\"??????\",\"left\":694,\"top\":273,\"type\":\"end round\",\"id\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}}],\"lines\":[{\"type\":\"tb\",\"M\":110,\"from\":\"f9104625-252a-49c8-91d4-9401509fceb5\",\"to\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"id\":\"b279111d-eb6a-4d8a-86b6-135de84a732a\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":225.5,\"from\":\"f5cef31d-cb13-4195-86f3-7e2c96f345ee\",\"to\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"id\":\"596c6d67-715e-4332-809b-7a4b8ba7fa50\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":256,\"from\":\"d8842622-f5e8-4336-b9cd-4383e5bcec3d\",\"to\":\"38ebf6f4-5a82-4fb6-9342-94c0f95f6820\",\"id\":\"f3ddca8b-135b-43f6-b0bc-e42060a233af\",\"name\":\"\",\"dash\":false,\"alt\":true}],\"areas\":[],\"initNum\":8}', 1, NULL, -1, 1576223356, '1', 'wms', 1576692571);
INSERT INTO `wf_workflow_instance` VALUES ('d8420a67-c3f4-4f93-a5da-a5598094f447', '477e4199-aaf0-4e21-9eed-088922a83d58', '15604180620754', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', '77825e68-4a61-43b8-9081-504088b332e6', '', '{\"title\":\"????????????\",\"nodes\":[{\"name\":\"??????\",\"left\":67,\"top\":44,\"type\":\"start round mix\",\"id\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{}},{\"name\":\"??????\",\"left\":438,\"top\":49,\"type\":\"task\",\"id\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"4\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":809,\"top\":238,\"type\":\"end round\",\"id\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"width\":26,\"height\":26,\"alt\":true,\"setInfo\":{},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"??????\",\"left\":778,\"top\":52,\"type\":\"task\",\"id\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SPECIAL_USER\",\"Nodedesignatedata\":{\"users\":[\"5\"],\"roles\":[],\"orgs\":[],\"sql\":\"\"}},\"areaId\":\"77046665-290a-4ae1-a5cf-a69e11d41f7f\"},{\"name\":\"???????????????\",\"left\":178,\"top\":49,\"type\":\"task\",\"id\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"width\":104,\"height\":26,\"alt\":true,\"setInfo\":{\"NodeDesignate\":\"SQL\",\"Nodedesignatedata\":{\"users\":[],\"roles\":[],\"orgs\":[],\"sql\":\"sys_getdeptleader\"}}}],\"lines\":[{\"type\":\"sl\",\"from\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"c764f55f-125b-48e6-8f37-8f281788d960\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"77825e68-4a61-43b8-9081-504088b332e6\",\"to\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"id\":\"c587ca2a-c95f-491a-b55a-a27c67df3037\",\"name\":\"\",\"dash\":false},{\"type\":\"sl\",\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"id\":\"5923dd84-6010-4003-bf4c-d4ee8605e945\",\"setInfo\":{\"CustomSQL\":\"oa_leaveMoreThenThreeDays\"},\"name\":\">3???\",\"dash\":false},{\"type\":\"sl\",\"from\":\"5fb04da8-7113-4f80-9c91-be19db2c1a9c\",\"to\":\"634b9765-ac0e-4272-bfab-f5b260c7fde8\",\"id\":\"0ebead88-6942-4563-aa5f-8dbd4c453fe5\",\"name\":\"\",\"dash\":false},{\"type\":\"tb\",\"M\":210.5,\"from\":\"33e53484-5b48-4210-a62c-949dd7d6dbaa\",\"to\":\"6dae3d55-04fc-4112-824f-e87542a03779\",\"id\":\"ba6765a0-f21e-436a-a094-73a2b03183b1\",\"setInfo\":{\"CustomSQL\":\"oa_leaveLessThenThreeDays\"},\"name\":\"<=3???\",\"dash\":false}],\"areas\":[],\"initNum\":22}', 1, 1, 1, 1560418062, '1', 'wms', 1560419404);

-- ----------------------------
-- Table structure for wf_workflow_instance_form
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_instance_form`;
CREATE TABLE `wf_workflow_instance_form`  (
  `Id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `InstanceId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????ID',
  `FormId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `FormContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????/????????????ID',
  `FormType` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `FormUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `FormData` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '????????????JSON',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `InstanceId`(`InstanceId`) USING BTREE,
  INDEX `FormId`(`FormId`) USING BTREE,
  CONSTRAINT `wf_workflow_instance_form_ibfk_1` FOREIGN KEY (`InstanceId`) REFERENCES `wf_workflow_instance` (`InstanceId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wf_workflow_instance_form_ibfk_2` FOREIGN KEY (`FormId`) REFERENCES `wf_workflow_form` (`FormId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_instance_form
-- ----------------------------
INSERT INTO `wf_workflow_instance_form` VALUES ('1d7e8f71-88da-45d9-bb00-7ad0e0b87e91', 'baa04978-dfcc-405f-97c4-15ebb1a0c9c3', '3b1ceb38-e1ee-4f15-a709-d6dd3a399c77', '\n                                    \n                                    \n                                    \n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">?????????</label>\n		<div class=\"col-sm-9\">\n			<input name=\"FlowParam_1\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			  <input name=\"FlowParam_2\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			<textarea name=\"FlowParam_4\" class=\"form-control required\"></textarea>\n		</div>\n	</div>\n\n                                \n                                \n                                ', 0, NULL, '{\"FlowParam_1\":\"??????\",\"FlowParam_2\":\"1000\",\"FlowParam_4\":\"??????\"}', '1', 1576194556);
INSERT INTO `wf_workflow_instance_form` VALUES ('4f0bbe3f-5e45-4ca0-b05f-ba87be648cab', '4fe14942-5afe-4b40-8b7e-d1c24c816836', 'fd4a4efc-7df2-49c4-9ffc-f84db346cac7', '????????????\n                                    \n                                ', 0, NULL, '{}', '1', 1585631556);
INSERT INTO `wf_workflow_instance_form` VALUES ('6432959b-620f-4fbe-9f69-9b851574810f', '9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', '3b1ceb38-e1ee-4f15-a709-d6dd3a399c77', '\n                                    \n                                    \n                                    \n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">?????????</label>\n		<div class=\"col-sm-9\">\n			<input name=\"FlowParam_1\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			  <input name=\"FlowParam_2\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			<textarea name=\"FlowParam_4\" class=\"form-control required\"></textarea>\n		</div>\n	</div>\n\n                                \n                                \n                                ', 0, NULL, '{\"FlowParam_1\":\"??????\",\"FlowParam_2\":\"100\",\"FlowParam_4\":\"??????\"}', '1', 1560415175);
INSERT INTO `wf_workflow_instance_form` VALUES ('69ad72e6-99cc-4a00-8bc4-88025e141cff', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '041f7de8-dd83-4aec-a253-e181b77cc40e', '1', 1, '/OA/Leave/Show', '1', '1', 1560417087);
INSERT INTO `wf_workflow_instance_form` VALUES ('7a44b405-4b38-446c-b331-62ed30ff4978', '27527752-308f-4eff-8841-4fac9ea31351', '041f7de8-dd83-4aec-a253-e181b77cc40e', '3', 1, '/OA/Leave/Show', '3', '1', 1575006697);
INSERT INTO `wf_workflow_instance_form` VALUES ('adbf39dc-d101-4818-9ad6-39e4bf969d20', '157bc333-2357-4a80-8180-c52f4c3cd57d', '041f7de8-dd83-4aec-a253-e181b77cc40e', '5', 1, '/OA/Leave/Show', '5', '7', 1576722419);
INSERT INTO `wf_workflow_instance_form` VALUES ('b744d9b4-70b3-4151-b67b-fd2efc952369', 'd8420a67-c3f4-4f93-a5da-a5598094f447', '041f7de8-dd83-4aec-a253-e181b77cc40e', '2', 1, '/OA/Leave/Show', '2', '1', 1560418062);
INSERT INTO `wf_workflow_instance_form` VALUES ('f78b22f5-c72a-444e-9cbe-7a2aaf3af81d', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '041f7de8-dd83-4aec-a253-e181b77cc40e', '4', 1, '/OA/Leave/Show', '4', '1', 1576138299);
INSERT INTO `wf_workflow_instance_form` VALUES ('f938467a-b223-417a-b593-853d5b6ee0e4', '59e8c3f0-db02-4b11-978a-64bd54ddb6c8', 'fd4a4efc-7df2-49c4-9ffc-f84db346cac7', '????????????\n                                    \n                                ', 0, NULL, '{}', '1', 1560245789);
INSERT INTO `wf_workflow_instance_form` VALUES ('ffaf7437-73be-4d4b-90d4-5203f62c6339', '351114eb-3fa1-44a4-be56-3715e510ad91', '3b1ceb38-e1ee-4f15-a709-d6dd3a399c77', '\n                                    \n                                    \n                                    \n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">?????????</label>\n		<div class=\"col-sm-9\">\n			<input name=\"FlowParam_1\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			  <input name=\"FlowParam_2\" type=\"text\" class=\"form-control required\">\n		</div>\n	</div>\n	<div class=\"form-group\">\n		<label class=\"col-sm-3 control-label\">???????????????</label>\n		<div class=\"col-sm-9\">\n			<textarea name=\"FlowParam_4\" class=\"form-control required\"></textarea>\n		</div>\n	</div>\n\n                                \n                                \n                                ', 0, NULL, '{\"FlowParam_1\":\"??????\",\"FlowParam_2\":\"1000\",\"FlowParam_4\":\"??????\"}', '1', 1574744239);

-- ----------------------------
-- Table structure for wf_workflow_notice
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_notice`;
CREATE TABLE `wf_workflow_notice`  (
  `Id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `InstanceId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????ID',
  `NodeId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????ID',
  `NodeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `Maker` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `IsTransition` tinyint(4) NOT NULL DEFAULT 0 COMMENT '?????????????????????',
  `Status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '????????????????????????',
  `IsRead` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `InstanceId`(`InstanceId`) USING BTREE,
  CONSTRAINT `wf_workflow_notice_ibfk_1` FOREIGN KEY (`InstanceId`) REFERENCES `wf_workflow_instance` (`InstanceId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_notice
-- ----------------------------
INSERT INTO `wf_workflow_notice` VALUES ('17c772b0-6139-4d3e-9f9b-841784281a24', '4fe14942-5afe-4b40-8b7e-d1c24c816836', '1f702b3c-b514-47f3-a761-9190e4a8e965', 'wms', '1', 1, 1, 1);
INSERT INTO `wf_workflow_notice` VALUES ('1d6af7db-3117-46b9-a5dd-8ba0cb9514b6', '59e8c3f0-db02-4b11-978a-64bd54ddb6c8', '1f702b3c-b514-47f3-a761-9190e4a8e965', 'wms', '1', 1, 1, 1);

-- ----------------------------
-- Table structure for wf_workflow_operation_history
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_operation_history`;
CREATE TABLE `wf_workflow_operation_history`  (
  `OperationId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `InstanceId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????ID',
  `NodeId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????ID',
  `NodeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `TransitionType` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `Content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `CreateUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  PRIMARY KEY (`OperationId`) USING BTREE,
  INDEX `InstanceId`(`InstanceId`) USING BTREE,
  CONSTRAINT `wf_workflow_operation_history_ibfk_1` FOREIGN KEY (`InstanceId`) REFERENCES `wf_workflow_instance` (`InstanceId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_operation_history
-- ----------------------------
INSERT INTO `wf_workflow_operation_history` VALUES ('0c5cb50c-400b-4460-b963-cd25fecf949c', '157bc333-2357-4a80-8180-c52f4c3cd57d', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', '??????', 6, '???????????????123??????????????????????????????aa???<br/>???????????????????????????', 1576722476, '4', '??????123');
INSERT INTO `wf_workflow_operation_history` VALUES ('21d8c76f-d6bf-479c-9fa4-68e67a8bf57d', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', 2, '?????????', 1560417353, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('25577ea9-d393-48a0-a2b3-4374c78016bc', '351114eb-3fa1-44a4-be56-3715e510ad91', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', '????????????', 2, '?????????', 1574998538, '5', '??????');
INSERT INTO `wf_workflow_operation_history` VALUES ('28e938aa-6d37-41a5-a282-5a8d44eac04b', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', '??????', 2, '?????????', 1560417448, '4', '??????123');
INSERT INTO `wf_workflow_operation_history` VALUES ('3530b628-0493-4562-bdd8-105039cdbac8', '59e8c3f0-db02-4b11-978a-64bd54ddb6c8', '1474e4c4-d512-49aa-8681-8720b4168554', 'node_1', 1, '????????????', 1560245806, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('4606236e-e153-4132-85c7-cd0957fbac23', '59e8c3f0-db02-4b11-978a-64bd54ddb6c8', '1f702b3c-b514-47f3-a761-9190e4a8e965', 'wms', 9, '????????????', 1560301605, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('5129a9ca-fe95-49d5-b370-799e159c52f8', '157bc333-2357-4a80-8180-c52f4c3cd57d', '77825e68-4a61-43b8-9081-504088b332e6', '??????', 1, '????????????', 1576722419, '7', '123');
INSERT INTO `wf_workflow_operation_history` VALUES ('54a984de-eacd-498c-b1ba-80585e8841d6', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', 2, '?????????', 1576139444, '5', '??????');
INSERT INTO `wf_workflow_operation_history` VALUES ('57299985-ea54-49dc-8afb-020dfa5bcb5b', '27527752-308f-4eff-8841-4fac9ea31351', '77825e68-4a61-43b8-9081-504088b332e6', '??????', 1, '????????????', 1575006697, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('62afeaee-c171-4c57-887a-397f23924804', '157bc333-2357-4a80-8180-c52f4c3cd57d', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', 2, '?????????', 1576722433, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('672584ec-6f97-4613-b286-863f0fae05de', '59e8c3f0-db02-4b11-978a-64bd54ddb6c8', 'e0080e39-b227-45c1-81d1-ca18213d80d6', '???????????????', 2, '?????????', 1560246314, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('68ad122c-ccf6-4e66-aa0f-888db2f0e58d', '9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', 'f9104625-252a-49c8-91d4-9401509fceb5', '??????', 1, '????????????', 1560415177, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('80802512-c290-4218-9f2b-d84c084a38ec', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', '????????????', 2, '?????????', 1574964222, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('8521c79a-861e-4433-8fce-eed3e0190234', '157bc333-2357-4a80-8180-c52f4c3cd57d', '634b9765-ac0e-4272-bfab-f5b260c7fde8', '??????', 7, '????????????', 1576722589, '5', '??????');
INSERT INTO `wf_workflow_operation_history` VALUES ('88436ecc-e3e2-4bbc-8a86-c55614935e18', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', 2, '?????????', 1575272621, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('8dd90390-d64a-4595-8e9c-a1375245b44a', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '77825e68-4a61-43b8-9081-504088b332e6', '??????', 1, '????????????', 1576138299, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('8e5b642c-780c-4c15-bfa8-1962446cbb6b', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '77825e68-4a61-43b8-9081-504088b332e6', '??????', 1, '????????????', 1560417087, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('93a307a9-91b3-43ae-97a1-3dbee1d68a74', '351114eb-3fa1-44a4-be56-3715e510ad91', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', '????????????', 7, '000', 1574995394, '5', '??????');
INSERT INTO `wf_workflow_operation_history` VALUES ('9577ae59-a9ea-4d33-912d-4fec823134bb', '157bc333-2357-4a80-8180-c52f4c3cd57d', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', '??????', 2, '?????????', 1576722519, '6', '??????aa');
INSERT INTO `wf_workflow_operation_history` VALUES ('9c10e1d0-64b2-4860-bc3f-3e3576ed3d96', '4fe14942-5afe-4b40-8b7e-d1c24c816836', '1f702b3c-b514-47f3-a761-9190e4a8e965', 'wms', 9, '????????????', 1585660409, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('9ce5e7d3-4729-4906-a166-65e55a1372bd', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '634b9765-ac0e-4272-bfab-f5b260c7fde8', '??????', 2, '?????????', 1560417476, '5', '??????');
INSERT INTO `wf_workflow_operation_history` VALUES ('a45896aa-daa0-4d79-8da8-e21205dbbc0e', 'd8420a67-c3f4-4f93-a5da-a5598094f447', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', 2, '?????????', 1560419404, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('ae20aae9-1de6-472e-b54e-64e503d85b04', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', 6, '???????????????123?????????????????????????????????<br/>?????????????????????????????????', 1576138413, '4', '??????123');
INSERT INTO `wf_workflow_operation_history` VALUES ('cb997741-2c58-4494-9fa8-01915d4e693b', '351114eb-3fa1-44a4-be56-3715e510ad91', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', '????????????', 7, '?????????????????????', 1574964106, '5', '??????');
INSERT INTO `wf_workflow_operation_history` VALUES ('cc601b1c-6ca4-48c8-970f-f0336a6f5152', '9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', '????????????', 2, '?????????', 1560415190, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('d5bf126b-a0f9-4d70-bdc2-acf9875f8c5f', '4fe14942-5afe-4b40-8b7e-d1c24c816836', 'e0080e39-b227-45c1-81d1-ca18213d80d6', '???????????????', 2, '?????????', 1585660396, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('e7128e6c-0b51-4e90-a624-5aa46ba9406c', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', '????????????', 2, '?????????', 1574744837, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('ed21ccce-3a18-4f68-b57e-e4b1476def69', '4fe14942-5afe-4b40-8b7e-d1c24c816836', '1474e4c4-d512-49aa-8681-8720b4168554', '??????', 1, '????????????', 1585660360, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('f3c98fbd-4d5e-4028-ac71-5d8d4ea8bee4', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', '????????????', 2, '?????????', 1574996272, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('f89c182c-d52e-446f-822c-2d71fc5be4f1', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f9104625-252a-49c8-91d4-9401509fceb5', '??????', 1, '????????????', 1574744246, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('fac7ce0a-8c24-4db4-a645-2ed72ca376f5', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', 6, '?????????wms??????????????????????????????123???<br/>?????????????????????????????????', 1576138337, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('fcf9bdd4-5f22-4ea3-afec-bb492e603961', 'd8420a67-c3f4-4f93-a5da-a5598094f447', '77825e68-4a61-43b8-9081-504088b332e6', '??????', 1, '????????????', 1560418062, '1', 'wms');
INSERT INTO `wf_workflow_operation_history` VALUES ('fe1adecd-1985-48b0-b888-55e3cff873d7', '9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', '????????????', 2, '?????????', 1560415232, '5', '??????');

-- ----------------------------
-- Table structure for wf_workflow_transition_history
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_transition_history`;
CREATE TABLE `wf_workflow_transition_history`  (
  `TransitionId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `InstanceId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????ID',
  `FromNodeId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????Id',
  `FromNodeType` int(11) NULL DEFAULT NULL COMMENT '??????????????????',
  `FromNodName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `ToNodeId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????Id',
  `ToNodeType` int(11) NULL DEFAULT NULL COMMENT '??????????????????',
  `ToNodeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `TransitionState` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `IsFinish` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `CreateUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  PRIMARY KEY (`TransitionId`) USING BTREE,
  INDEX `InstanceId`(`InstanceId`) USING BTREE,
  CONSTRAINT `wf_workflow_transition_history_ibfk_1` FOREIGN KEY (`InstanceId`) REFERENCES `wf_workflow_instance` (`InstanceId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '?????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_transition_history
-- ----------------------------
INSERT INTO `wf_workflow_transition_history` VALUES ('066307c9-640e-4bb0-911d-766a3cb024ab', 'd8420a67-c3f4-4f93-a5da-a5598094f447', '77825e68-4a61-43b8-9081-504088b332e6', 3, '??????', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', 0, 0, 1560418062, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('10f1968e-1f80-4c3d-8e93-5f13835c2618', '9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', 'f9104625-252a-49c8-91d4-9401509fceb5', 3, '??????', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 0, 0, 1560415177, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('161e79b2-47d8-4770-b2a6-067f1cdc1e02', '4fe14942-5afe-4b40-8b7e-d1c24c816836', '1474e4c4-d512-49aa-8681-8720b4168554', 3, '??????', 'e0080e39-b227-45c1-81d1-ca18213d80d6', 2, '???????????????', 0, 0, 1585660360, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('1e00920a-f94e-4e1e-818f-ed70e655e009', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', 0, 0, 1574964222, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('28480957-8b93-4d9f-948c-3862f42b18a8', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', 2, '??????', 0, 0, 1560417353, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('453d277a-1315-4e53-b673-b06efecb9da2', '157bc333-2357-4a80-8180-c52f4c3cd57d', '634b9765-ac0e-4272-bfab-f5b260c7fde8', 2, '??????', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', 1, 0, 1576722589, '5', '??????');
INSERT INTO `wf_workflow_transition_history` VALUES ('5b53f0de-b11b-4805-9183-1b0d61f35dbd', '157bc333-2357-4a80-8180-c52f4c3cd57d', '77825e68-4a61-43b8-9081-504088b332e6', 3, '??????', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', 0, 0, 1576722419, '7', '123');
INSERT INTO `wf_workflow_transition_history` VALUES ('5c0c3c95-31fe-4a1c-99a4-a045999339a2', '9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', 0, 0, 1560415190, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('5d1b1213-48c5-4d06-a7c1-009c18e13f82', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '77825e68-4a61-43b8-9081-504088b332e6', 3, '??????', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', 0, 0, 1576138299, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('653192e9-e944-434f-9f40-c6693d5df821', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', 2, '??????', '634b9765-ac0e-4272-bfab-f5b260c7fde8', 2, '??????', 0, 0, 1560417448, '4', '??????123');
INSERT INTO `wf_workflow_transition_history` VALUES ('65bf952f-9594-4392-882f-6f6580519f5b', '59e8c3f0-db02-4b11-978a-64bd54ddb6c8', 'e0080e39-b227-45c1-81d1-ca18213d80d6', 2, '???????????????', '06941d43-5d7a-4a4f-a096-1235d493a24c', 4, 'node_4', 0, 1, 1560246314, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('7693fdd1-b3ee-4b94-bbc5-08a18930f10c', '351114eb-3fa1-44a4-be56-3715e510ad91', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', '38ebf6f4-5a82-4fb6-9342-94c0f95f6820', 4, '??????', 0, 1, 1574998538, '5', '??????');
INSERT INTO `wf_workflow_transition_history` VALUES ('7841d196-06a0-4522-b2bd-51167dbccc0c', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', 0, 0, 1574744837, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('79077b84-8046-43c7-a4de-8e9b9941bc16', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', 0, 1, 1575272620, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('7acbf1c6-4d40-4abb-9040-952de915685b', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', 0, 0, 1574996272, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('891e1bc2-c9c0-4ef0-8bd6-be6f00cbaa0f', '4fe14942-5afe-4b40-8b7e-d1c24c816836', 'e0080e39-b227-45c1-81d1-ca18213d80d6', 2, '???????????????', '06941d43-5d7a-4a4f-a096-1235d493a24c', 4, '??????', 0, 1, 1585660396, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('8d793d14-3799-418e-93c9-67cae25edba5', '351114eb-3fa1-44a4-be56-3715e510ad91', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 1, 0, 1574964106, '5', '??????');
INSERT INTO `wf_workflow_transition_history` VALUES ('8da53ca8-a71f-4ee3-a7db-e7d673860e6c', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '634b9765-ac0e-4272-bfab-f5b260c7fde8', 2, '??????', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', 0, 1, 1560417476, '5', '??????');
INSERT INTO `wf_workflow_transition_history` VALUES ('90ab5bf6-76f8-46a7-af5e-3e1370c247ae', '157bc333-2357-4a80-8180-c52f4c3cd57d', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', 2, '??????', '634b9765-ac0e-4272-bfab-f5b260c7fde8', 2, '??????', 0, 0, 1576722519, '6', '??????aa');
INSERT INTO `wf_workflow_transition_history` VALUES ('9b45ec96-98bb-455b-b3c5-667d440034f3', '26f0dfd4-758f-45fd-beab-5abc9ae887db', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', 0, 1, 1576139443, '5', '??????');
INSERT INTO `wf_workflow_transition_history` VALUES ('b5125db1-a882-464e-9d5a-a4df3319d976', 'd8420a67-c3f4-4f93-a5da-a5598094f447', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', '6dae3d55-04fc-4112-824f-e87542a03779', 4, '??????', 0, 1, 1560419404, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('bef69e03-4170-478c-945a-323bca1a3da9', '351114eb-3fa1-44a4-be56-3715e510ad91', 'f9104625-252a-49c8-91d4-9401509fceb5', 3, '??????', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 0, 0, 1574744246, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('c03193be-6a26-4ef3-ae3c-0f840f03152e', '9be2c4e3-9dc5-43c3-acc0-eb3e388373f5', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', '38ebf6f4-5a82-4fb6-9342-94c0f95f6820', 4, '??????', 0, 1, 1560415232, '5', '??????');
INSERT INTO `wf_workflow_transition_history` VALUES ('c07e31a5-4f8d-465f-8586-4d87adf12be4', 'a32a6150-e4ae-4264-aeb8-93a89638679c', '77825e68-4a61-43b8-9081-504088b332e6', 3, '??????', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', 0, 0, 1560417087, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('ded4c000-a683-4b02-956e-3136394ebcf5', '157bc333-2357-4a80-8180-c52f4c3cd57d', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', '5fb04da8-7113-4f80-9c91-be19db2c1a9c', 2, '??????', 0, 0, 1576722433, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('e257614a-267e-4e62-8015-d4a01063909c', '27527752-308f-4eff-8841-4fac9ea31351', '77825e68-4a61-43b8-9081-504088b332e6', 3, '??????', '33e53484-5b48-4210-a62c-949dd7d6dbaa', 2, '???????????????', 0, 0, 1575006697, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('e2daf996-cf1a-4ed0-8b40-22f6095499b5', '59e8c3f0-db02-4b11-978a-64bd54ddb6c8', '1474e4c4-d512-49aa-8681-8720b4168554', 3, 'node_1', 'e0080e39-b227-45c1-81d1-ca18213d80d6', 2, '???????????????', 0, 0, 1560245806, '1', 'wms');
INSERT INTO `wf_workflow_transition_history` VALUES ('f61cb4e4-119f-45d7-a1fb-fb0e863a00a4', '351114eb-3fa1-44a4-be56-3715e510ad91', 'd8842622-f5e8-4336-b9cd-4383e5bcec3d', 2, '????????????', 'f5cef31d-cb13-4195-86f3-7e2c96f345ee', 2, '????????????', 1, 0, 1574966584, '5', '??????');

-- ----------------------------
-- Table structure for wf_workflow_urge
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflow_urge`;
CREATE TABLE `wf_workflow_urge`  (
  `Id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `InstanceId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????id',
  `NodeId` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????id',
  `NodeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `Sender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `UrgeType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `UrgeUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `UrgeContent` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `InstanceId`(`InstanceId`) USING BTREE,
  CONSTRAINT `wf_workflow_urge_ibfk_1` FOREIGN KEY (`InstanceId`) REFERENCES `wf_workflow_instance` (`InstanceId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflow_urge
-- ----------------------------
INSERT INTO `wf_workflow_urge` VALUES ('02a54790-19f3-49ad-b417-01cf3ad39214', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575268350, '1');
INSERT INTO `wf_workflow_urge` VALUES ('0abe78bd-b426-4dd0-86ca-021518b11ad1', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575268486, '1');
INSERT INTO `wf_workflow_urge` VALUES ('1e8db547-528b-4db3-8492-43986e5fedb5', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575268949, '1');
INSERT INTO `wf_workflow_urge` VALUES ('36881229-f6ee-4601-b07f-9ec2aeea6662', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575272594, '1');
INSERT INTO `wf_workflow_urge` VALUES ('39c8f676-6f3e-469e-9790-e561f216cef2', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575269834, '1');
INSERT INTO `wf_workflow_urge` VALUES ('4a75581b-404d-4972-ab7a-f7e36acecf93', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575267863, '1');
INSERT INTO `wf_workflow_urge` VALUES ('4f69bf8f-f9fd-4255-9b68-07f65d0872ff', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575272363, '1');
INSERT INTO `wf_workflow_urge` VALUES ('6d5bb833-f6df-47f6-81e1-35c7ab942248', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575266916, '1');
INSERT INTO `wf_workflow_urge` VALUES ('870d776a-91ff-413a-9b32-429f98ef5dc6', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575269115, '1');
INSERT INTO `wf_workflow_urge` VALUES ('9fe01348-3329-4377-8a5b-b823b91d38c8', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575269284, '1');
INSERT INTO `wf_workflow_urge` VALUES ('b12ea588-f795-4679-939a-d43e88bd5421', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575268593, '1');
INSERT INTO `wf_workflow_urge` VALUES ('fe8feda6-a9e0-4f1e-a434-f5acd2cea4eb', '27527752-308f-4eff-8841-4fac9ea31351', '33e53484-5b48-4210-a62c-949dd7d6dbaa', '???????????????', '1', '0,', '1,', '???????????????', 1575268525, '1');

-- ----------------------------
-- Table structure for wf_workflowsql
-- ----------------------------
DROP TABLE IF EXISTS `wf_workflowsql`;
CREATE TABLE `wf_workflowsql`  (
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????sql??????,????????????wf_???????????????????????????????????????????????????????????????',
  `FlowSQL` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????SQL????????????????????????????????????',
  `Param` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????? , ??????',
  `SQLType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '?????????0??????????????????????????????????????????ID???1???????????????????????????????????????????????????????????????????????????????????????????????????',
  `Status` int(11) NOT NULL DEFAULT 1 COMMENT '??????',
  `Remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `CreateUserId` bigint(20) NOT NULL COMMENT '?????????ID',
  PRIMARY KEY (`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_workflowsql
-- ----------------------------
INSERT INTO `wf_workflowsql` VALUES ('wf_agree', 'SELECT 1 ', NULL, 0, 1, '???????????????', 1, 1);
INSERT INTO `wf_workflowsql` VALUES ('wf_deprecate', 'SELECT 0 ', NULL, 0, 1, '?????????????????????', 1, 1);

-- ----------------------------
-- Table structure for wx_account
-- ----------------------------
DROP TABLE IF EXISTS `wx_account`;
CREATE TABLE `wx_account`  (
  `WeixinId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????Id',
  `AppId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????ID',
  `AppSecret` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???????????????',
  `WeixinName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???????????????',
  `WeixinQRCode` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `AccessToken` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'AccessToken',
  `AccessTokenCreateTime` datetime(0) NULL DEFAULT NULL COMMENT 'AccessToken????????????',
  `JsApiTicket` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JS API????????????',
  `JsApiTicketCreateTime` datetime(0) NULL DEFAULT NULL COMMENT 'JS API????????????????????????',
  `SubscribePageUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????????????????URL',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `Token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  `EncodingAESKey` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  PRIMARY KEY (`WeixinId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_account
-- ----------------------------
INSERT INTO `wx_account` VALUES ('gh_3f66fb647ff1', 'wxeb8c08a03de853d5', '485c8b1eeb798401c9af06798f91ec6c', '??????reading', NULL, '17_ESnucPG7Ccpi7_t7AfPIUMzUN2v9Wi2uDYlsJRyh4Ho7bivZh9AmoIkXjTXZYUKcTyP1IOo7WifJJiyjnRfAnRaDpyv0zYO4OFiSAUYLGF-pVAAV5vZcDREipUIole9JwQVmH07mOo7yKO6NUOViABALFM', '2019-01-12 10:29:53', NULL, NULL, NULL, 1546912897, 'wangmaosheng', 'w9jBowtJ9rqgzcHFFyJ0VakWDdNfknphEmFB7pocglk');

-- ----------------------------
-- Table structure for wx_account_miniprogram
-- ----------------------------
DROP TABLE IF EXISTS `wx_account_miniprogram`;
CREATE TABLE `wx_account_miniprogram`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `WeixinId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????Id',
  `AppId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'AppID(?????????ID)',
  `AppSecret` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'AppSecret(???????????????)',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `WeixinId`(`WeixinId`) USING BTREE,
  CONSTRAINT `wx_account_miniprogram_ibfk_1` FOREIGN KEY (`WeixinId`) REFERENCES `wx_account` (`WeixinId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_account_miniprogram
-- ----------------------------
INSERT INTO `wx_account_miniprogram` VALUES (1, 'gh_3f66fb647ff1', 'wx20a06c30c8b81e61', '6223a1e06f10ebc8ae9fe9eed65042bb');

-- ----------------------------
-- Table structure for wx_keyword
-- ----------------------------
DROP TABLE IF EXISTS `wx_keyword`;
CREATE TABLE `wx_keyword`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `RuleId` int(11) NOT NULL COMMENT '?????????ID',
  `Keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '?????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `RuleId`(`RuleId`) USING BTREE,
  CONSTRAINT `wx_keyword_ibfk_1` FOREIGN KEY (`RuleId`) REFERENCES `wx_rule` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_keyword
-- ----------------------------
INSERT INTO `wx_keyword` VALUES (1, 3, '??????', 1560356237);

-- ----------------------------
-- Table structure for wx_menu
-- ----------------------------
DROP TABLE IF EXISTS `wx_menu`;
CREATE TABLE `wx_menu`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `ParentId` int(11) NOT NULL DEFAULT 0 COMMENT '??????ID',
  `Name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????????????????16??????????????????????????????60?????????',
  `Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????????????????view?????????????????????click?????????????????????miniprogram?????????????????????',
  `Key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????KEY??????????????????????????????????????????128??????',
  `Url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????? ??????????????????????????????????????????????????????1024????????? type???miniprogram?????????????????????????????????????????????????????????url???',
  `AppId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????appid?????????????????????????????????',
  `PagePath` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `Sort` int(11) NOT NULL DEFAULT 0,
  `IsDel` int(11) NOT NULL DEFAULT 0,
  `CreateTime` bigint(20) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_miniprogram_user
-- ----------------------------
DROP TABLE IF EXISTS `wx_miniprogram_user`;
CREATE TABLE `wx_miniprogram_user`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `OpenId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '???????????????????????????OpenId',
  `UnionId` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????????????????????????????',
  `NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `Country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `Province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `Language` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `Gender` tinyint(4) NULL DEFAULT NULL COMMENT '??????',
  `AvatarUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`OpenId`, `Id`) USING BTREE,
  INDEX `Id`(`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_miniprogram_user
-- ----------------------------
INSERT INTO `wx_miniprogram_user` VALUES (1, 'ofovX1PhIU2fMvagdO1wtJj2U8Bc', NULL, '????????????', 'Lianyungang', 'China', 'Jiangsu', 'zh_CN', 1, 'https://wx.qlogo.cn/mmopen/vi_32/OmJum4poEd64ibQjFZ4DWqND7OtN2ia9akuYSn9fxWrwT4PaH71mqr7ls3jdYHDlj10Oq8vS9pjw27WjebgMYWWA/132', 1555578279);

-- ----------------------------
-- Table structure for wx_news_response
-- ----------------------------
DROP TABLE IF EXISTS `wx_news_response`;
CREATE TABLE `wx_news_response`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `RuleId` int(11) NOT NULL COMMENT '??????ID',
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `PicUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????JPG???PNG?????????????????????????????????360*200?????????200*200',
  `Url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '??????',
  `IsDel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '???????????????0??????1???',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `RuleId`(`RuleId`) USING BTREE,
  CONSTRAINT `wx_news_response_ibfk_1` FOREIGN KEY (`RuleId`) REFERENCES `wx_rule` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '??????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_rule
-- ----------------------------
DROP TABLE IF EXISTS `wx_rule`;
CREATE TABLE `wx_rule`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `RuleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `RuleType` tinyint(4) NOT NULL COMMENT '????????????0:?????????1:????????????????????????',
  `RequestMsgType` int(11) NOT NULL COMMENT '????????????',
  `ResponseMsgType` int(11) NOT NULL COMMENT '??????????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '??????????????????',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_rule
-- ----------------------------
INSERT INTO `wx_rule` VALUES (1, '????????????', 2, 1, 1, 1547103227);
INSERT INTO `wx_rule` VALUES (2, '????????????', 1, 8, 1, 1547112830);
INSERT INTO `wx_rule` VALUES (3, '?????????', 0, 1, 1, 1560356237);

-- ----------------------------
-- Table structure for wx_text_response
-- ----------------------------
DROP TABLE IF EXISTS `wx_text_response`;
CREATE TABLE `wx_text_response`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `RuleId` int(11) NOT NULL COMMENT '??????ID',
  `Content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `RuleId`(`RuleId`) USING BTREE,
  CONSTRAINT `wx_text_response_ibfk_1` FOREIGN KEY (`RuleId`) REFERENCES `wx_rule` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_text_response
-- ----------------------------
INSERT INTO `wx_text_response` VALUES (1, 1, '?????????????????????????????????', 1547103227);
INSERT INTO `wx_text_response` VALUES (2, 2, '??????????????????~~', 1547112831);
INSERT INTO `wx_text_response` VALUES (3, 3, '?????????', 1560356237);

-- ----------------------------
-- Table structure for wx_user
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user`  (
  `OpenId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????OpenId??????',
  `Subscribe` int(11) NULL DEFAULT NULL COMMENT '??????????????????????????????1???????????????0????????????',
  `UserName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `NickName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `Mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `Sex` int(11) NULL DEFAULT NULL COMMENT '????????????????????????1?????????????????????2?????????????????????0????????????',
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `Country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `Province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `Headimgurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `Birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????',
  `CreateTime` bigint(20) NOT NULL COMMENT '????????????',
  `IsSync` int(11) NOT NULL DEFAULT 0 COMMENT '?????????????????????????????????',
  PRIMARY KEY (`OpenId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
INSERT INTO `wx_user` VALUES ('ouUD4sr2rk1MT2UqTTqpGNFot-GI', 1, NULL, '????????????', NULL, 1, '?????????', '??????', '??????', 'http://thirdwx.qlogo.cn/mmopen/eDicfvb2fvAYRduibVLeexKc0ZdJ67jryCbibbwWwTaypS2G5rdajCzRzq4QKbYVazuoe2Z9VTNlTzB6O6xOSep0cB24cfgPOXQ/132', NULL, 1547123099, 1);

SET FOREIGN_KEY_CHECKS = 1;
