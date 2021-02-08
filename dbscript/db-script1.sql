CREATE DATABASE `monitoring_db` ;

CREATE TABLE `monitoring_db`.`data_publish_request` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45),
  `country` VARCHAR(45),
  `mno` VARCHAR(45),
  `payment_status` VARCHAR(45),
  `amount` VARCHAR(45),
  `order_id` VARCHAR(255),
  `currency` VARCHAR(45),
  `reference` VARCHAR(45),
  `date` VARCHAR(45),
  `state` VARCHAR(45),
  `internal_transaction_id` VARCHAR(100) ,
  `operator_transaction_id` VARCHAR(100),
  `channel` VARCHAR(45),
  `service_provider` VARCHAR(45),
  `publish_status` TINYINT(1) NOT NULL DEFAULT 0,
  `scheduled_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

CREATE TABLE `monitoring_db`.`revenue_publish_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revenue_publish_api_url` varchar(225) NOT NULL,
  `revenue_publish_api_bearer_token` varchar(225) NOT NULL,
  `batch_size` int(3) DEFAULT NULL,
  `delay_interval` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `monitoring_db`.`revenue_publish_settings`
(
`revenue_publish_api_url`,
`revenue_publish_api_bearer_token`,
`batch_size`,
`delay_interval`)
VALUES
(
'https://pre-gateway.bizao.com/revenue/publish/v1',
'2bf81167-aaee-3cd7-84b3-83d23bc0e224',
'500',
'5'
);