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
  `publish_status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `monitoring_db`.`global_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hub_specific_successful_status` varchar(20) DEFAULT NULL,
  `hub_specific_failed_status` varchar(20) DEFAULT NULL,
  `hub_specific_pending_status` varchar(20) DEFAULT NULL,
  `hub_specific_created_status` varchar(20) DEFAULT NULL,
  `hub_specific_refund_status` varchar(20) DEFAULT NULL,
  `payment_init_url` varchar(225) DEFAULT NULL,
  `payment_resource_location` varchar(225) DEFAULT NULL,
  `revenue_publish_api_url` varchar(225) NOT NULL,
  `revenue_publish_api_bearer_token` varchar(225) NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `monitoring_db`.`global_settings`
(
`hub_specific_successful_status`,
`hub_specific_failed_status`,
`hub_specific_pending_status`,
`hub_specific_created_status`,
`hub_specific_refund_status`,
`payment_init_url`,
`payment_resource_location`,
`revenue_publish_api_url`,
`revenue_publish_api_bearer_token`)
VALUES
(
'Successful',
'Failed',
'InProgress',
'Created',
'Refunded',
'http://localhost:9090/mm-payment/proceed',
'https://storage.googleapis.com/mm-payment/logos/',
'http://localhost:8281/revenue/publish',
'2dc6c79c-f970-371f-bf9f-642aa45c7e65'
);