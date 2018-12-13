/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : open-platform

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-12-13 22:40:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
                                    `token_id` varchar(256) DEFAULT NULL,
                                    `token` blob,
                                    `authentication_id` varchar(128) NOT NULL,
                                    `user_name` varchar(256) DEFAULT NULL,
                                    `client_id` varchar(256) DEFAULT NULL,
                                    `authentication` blob,
                                    `refresh_token` varchar(256) DEFAULT NULL,
                                    PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
                                 `userId` varchar(256) DEFAULT NULL,
                                 `clientId` varchar(256) DEFAULT NULL,
                                 `scope` varchar(256) DEFAULT NULL,
                                 `status` varchar(10) DEFAULT NULL,
                                 `expiresAt` datetime DEFAULT NULL,
                                 `lastModifiedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_approvals
-- ----------------------------
INSERT INTO `oauth_approvals` VALUES ('admin', 'gateway', 'openid', 'APPROVED', '2019-01-12 01:34:32', '2018-12-12 01:34:32');
INSERT INTO `oauth_approvals` VALUES ('admin', 'admin', 'openid', 'APPROVED', '2019-01-12 01:35:08', '2018-12-12 01:35:08');

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
                                      `client_id` varchar(128) NOT NULL,
                                      `client_secret` varchar(256) DEFAULT NULL,
                                      `resource_ids` varchar(256) DEFAULT NULL,
                                      `scope` varchar(256) DEFAULT NULL,
                                      `authorized_grant_types` varchar(256) DEFAULT NULL,
                                      `web_server_redirect_uri` varchar(256) DEFAULT NULL,
                                      `authorities` varchar(256) DEFAULT NULL,
                                      `access_token_validity` int(11) DEFAULT NULL,
                                      `refresh_token_validity` int(11) DEFAULT NULL,
                                      `additional_information` varchar(4096) DEFAULT NULL,
                                      `autoapprove` varchar(256) DEFAULT NULL,
                                      PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('gateway', '$2a$10$jIgCsWeTRrWXw7Cf6p26Yu5lP9WLnXbwTEPAmy4vPMuByx3tJGjsK', null, 'openid', 'refresh_token,implicit,authorization_code,client_credentials,password', 'http://localhost:8888/login,http://localhost:8888/webjars/springfox-swagger-ui/o2c.html', '', '43200', '604800', '{\"clientId\":\"gateway\",\"createTime\":1542016125000,\"appName\":\"API网关\",\"appType\":\"pc\",\"appId\":2,\"description\":\"API网关\",\"appNameEn\":\"ApiGateway\",\"clientSecret\":\"123456\",\"updateTime\":1542365191957}', '');

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
                                    `token_id` varchar(256) DEFAULT NULL,
                                    `token` blob,
                                    `authentication_id` varchar(128) NOT NULL,
                                    `user_name` varchar(256) DEFAULT NULL,
                                    `client_id` varchar(256) DEFAULT NULL,
                                    PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
                            `code` varchar(256) DEFAULT NULL,
                            `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
                                     `token_id` varchar(256) DEFAULT NULL,
                                     `token` blob,
                                     `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
