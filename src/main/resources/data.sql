
CREATE TABLE tb_parking_spot (
   id UUID NOT NULL,
   parking_spot_number VARCHAR(10) NOT NULL,
   license_plate_car VARCHAR(7) NOT NULL,
   brand_car VARCHAR(70) NOT NULL,
   model_car VARCHAR(70) NOT NULL,
   color_car VARCHAR(70) NOT NULL,
   registration_date TIMESTAMP NOT NULL,
   responsible_name VARCHAR(130) NOT NULL,
   apartment VARCHAR(30) NOT NULL,
   block VARCHAR(30) NOT NULL,
   CONSTRAINT pk_tb_parking_spot PRIMARY KEY (id)
);

ALTER TABLE tb_parking_spot ADD CONSTRAINT uc_tb_parking_spot_licenseplatecar UNIQUE (license_plate_car);

ALTER TABLE tb_parking_spot ADD CONSTRAINT uc_tb_parking_spot_parkingspotnumber UNIQUE (parking_spot_number);