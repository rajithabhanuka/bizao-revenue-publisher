CREATE DATABASE `monitoring_db` ;

CREATE TABLE `monitoring_db`.`data_publish_request` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `mno` VARCHAR(45) NOT NULL,
  `payment_status` VARCHAR(45) NOT NULL,
  `amount` VARCHAR(45) NOT NULL,
  `order_id` VARCHAR(45) NOT NULL,
  `currency` VARCHAR(45) NOT NULL,
  `reference` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `internal_transaction_id` VARCHAR(100) NOT NULL,
  `operator_transaction_id` VARCHAR(100) NOT NULL,
  `channel` VARCHAR(45) NOT NULL,
  `service_provider` VARCHAR(45) NOT NULL,
  `publish_status` TINYINT(1) NOT NULL DEFAULT 0,
  `scheduled_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

CREATE TABLE `monitoring_db`.`global_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revenue_publish_api_url` varchar(225) NOT NULL,
  `revenue_publish_api_bearer_token` varchar(225) NOT NULL,
  `batch_size` int(3) DEFAULT NULL,
  `delay_interval` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `monitoring_db`.`global_settings`
(
`revenue_publish_api_url`,
`revenue_publish_api_bearer_token`,
`batch_size`,
`delay_interval`)
VALUES
(
'http://localhost:8281/revenue/publish',
'2dc6c79c-f970-371f-bf9f-642aa45c7e65',
'5',
'5'
);