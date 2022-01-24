-- liquibase formatted sql changeLogId:801204f4-7e7d-4f93-9c83-83f7a1d02e06

-- changeset SteveZ:1588216
CREATE TABLE department 
(
  id INT NOT NULL, 
  name VARCHAR(50) NOT NULL, 
  active BIT(1) DEFAULT 1 NULL, 
  CONSTRAINT PK_DEPARTMENT PRIMARY KEY (id))
  ;
--rollback drop table department;

--changeset SteveZ:15834216
ALTER TABLE department
ADD Email varchar(255);
--rollback ALTER TABLE department DROP COLUMN Email;

--changeset SteveZ:158fep92
CREATE INDEX idx_department
ON department (id, active);
--rollback DROP INDEX idx_department ON department;

--changeset SteveZ:1588221
CREATE TABLE `book` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `tags` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
--rollback drop table book;


--changeset SteveZ:158821221
INSERT INTO `book` (`title`, `tags`)
VALUES (
  'ECMAScript 2015: A SitePoint Anthology',
  '["JavaScript", "ES2015", "JSON"]'
);
--rollback DELETE FROM book WHERE title='ECMAScript 2015: A SitePoint Anthology';

--changeset SteveZ:21221543
CREATE TABLE shop (
    article INT UNSIGNED  DEFAULT '0000' NOT NULL,
    dealer  CHAR(20)      DEFAULT ''     NOT NULL,
    price   DECIMAL(16,2) DEFAULT '0.00' NOT NULL,
    PRIMARY KEY(article, dealer))
    ;
--rollback drop table shop;
    

