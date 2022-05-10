-- -----------------------------------------------------
-- Schema compras
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `compras`;

CREATE SCHEMA `compras`;
USE `compras` ;

-- -----------------------------------------------------
-- Table `compras`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `compras`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `compras`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `compras`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('MEDICAMENTOS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('AMOXICILINA-MED-1000', 'AMOXICILINA', 'AMOXICILINA, 250mg/5m','assproductets/images/products/placeholder.png',1,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ATORVASTATINA-MED-1001', 'ATORVASTATINA', 'ATORVASTATINA (como sal cálcia), 20 mg','assets/images/products/placeholder.png',1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('AZITROMICINA-MED-1002', 'AZITROMICINA', 'AZITROMICINA, 500mg','assets/images/products/placeholder.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('CAPTOPRIL-MED-1003', 'CAPTOPRIL', 'CAPTOPRIL, 25 mg','assets/images/products/placeholder.png',1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('CEFALEXINA-MED-1004', 'CEFALEXINA', 'CEFALEXINA, 250mg/5mL','assets/images/products/placeholder.png',1,100,24.99,1, NOW());

##Jackeline
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ASPIRINA-MED-1006', 'ASPIRINA', 'ASPIRINA, 500mg','assets/images/products/placeholder.png',1,100,26.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('OMEPRAZOL-MED-1007', 'OMEPPRAZOL', 'OMEPRAZOL, 40mg','assets/images/products/placeholder.png',1,100,10.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LEXOTIROXINA-MED-1008', 'LEXOTIROXINA', 'LEXOTIROXINA, 40mg','assets/images/products/placeholder.png',1,100,12.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('RAMIPRIL-MED-1009', 'RAMIPRIL', 'RAMIPRIL, 5mg','assets/images/products/placeholder.png',1,100,31.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('AMLODIPINA-MED-1010', 'AMLODIPINA', 'AMLODIPINA, 5mg','assets/images/products/placeholder.png',1,100,10.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('PARACEMOL-MED-1011', 'PARACEMOL', 'PARACEMOL, 20mg','assets/images/products/placeholder.png',1,100,12.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('NITROGLICERINA-MED-1012', 'NITROGLICERINA', 'NITROGLICERINA, 50mg','assets/images/products/placeholder.png',1,100,12.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('SALBUTAMOL-MED-1013', 'SALBUTAMOL', 'SALBUTAMOL, 17mg','assets/images/products/placeholder.png',1,100,15.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LANOPRAZOL-MED-1014', 'LANOPRAZOL', 'LANOPRAZOL, 30mg','assets/images/products/placeholder.png',1,100,21.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('CLEXANE-MED-1015', 'CLEXANE', 'CLEXANE, 40mg','assets/images/products/placeholder.png',1,100,12.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('CLEXANE-MED-1016', 'CLEXANE', 'CLEXANE, 40mg','assets/images/products/placeholder.png',1,100,13.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('DIGOXINA-MED-1017', 'DIGOXINA', 'DIGOXINA, 0.25mg','assets/images/products/placeholder.png',1,100,9.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('EPINEFRINA-MED-1018', 'EPINEFRINA', 'EPINEFRINA, 1mg','assets/images/products/placeholder.png',1,100,20.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('FUROSEMIDA-MED-1019', 'FUROSEMIDA', 'FUROSEMIDA, 20mg','assets/images/products/placeholder.png',1,100,14.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ESPIRONOLACTONA-MED-1020', 'ESPIRONOLACTONA', 'ESPIRONOLACTONA, 25mg','assets/images/products/placeholder.png',1,100,10.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('POLIDOCANOL-MED-1021', 'POLIDOCANOL', 'POLIDOCANOL, 40mg','assets/images/products/placeholder.png',1,100,10.99,1, NOW()); 

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('NIFEDIPINO-MED-1022', 'NIFEDIPINO', 'POLIDOCANOL, 30mg','assets/images/products/placeholder.png',1,100,12.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('PREDNISONA-MED-1023', 'PREDNISONA', 'PREDNISONA, 5mg','assets/images/products/placeholder.png',1,100,13.99,1, NOW()); 

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ANFENICOL-MED-1024', 'ANFENICOL', 'ANFENICOL, 40mg','assets/images/products/placeholder.png',1,100,15.99,1, NOW());
#Mathias
INSERT INTO product_category(category_name) VALUES ('SUPLEMENTOS');
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('PEDIASURE-SUP-2001', 'PEDIASURE', 'PEDIASURE, 400g','assets/images/products/pediasure.png',1,200,41.99,2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ENSURE-SUP-2002', 'ENSURE', 'ENSURE, 850g','assets/images/products/ensure.png',1,200,85.99,2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('PROVIDE-SUP-2003', 'PROVIDE GOLD', 'PROVIDE GOLD, 887 ml','assets/images/products/provide.png',1,200,90.00,2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('CALCIFOR-SUP-2004', 'CALCIFOR', 'CALCIFOR, 60 capsulas','assets/images/products/calcifor.png',1,200,51.99,2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('GERIAMEL-SUP-2005', 'GERIAMEL', 'GERIAMEL Vainilla, 1000 g','assets/images/products/geriamel.png',1,200,94.90,2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('WHEYPROTEIN-SUP-2006', 'WHEY PROTEIN', 'WHEY PROTEIN, SABOR CHOCOLATE','assets/images/products/whey.png',1,200,269.00,2, NOW());
INSERT INTO product_category(category_name) VALUES ('CUIDADO PERSONAL');
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('HOJASGILETTE-CUI-3001', 'HOJAS GILETTE PRESTOBARBA 3', 'HOJAS GILETTE PRESTOBARBA 3, 2 hojas ','assets/images/products/hojas.png',1,100,9.90,3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ESPUMALEA-CUI-3002', 'ESPUMA DE AFEITAR LEA', 'ESPUMA DE AFEITAR LEA, 250 ml ','assets/images/products/espumalea.png',1,200,16.00,3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('ESPUMAGILETTE-CUI-3003', 'ESPUMA DE AFEITAR GILETTE', 'ESPUMA DE AFEITAR GILETTE, 250 ml','assets/images/products/espumagilette.png',1,200,31.90,3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('GELAFEITAR-CUI-3004', 'GEL DE AFEITAR LEA', 'GEL DE AFEITAR LEA, 200 ml','assets/images/products/gellea.png',1,200,23.90,3, NOW());


