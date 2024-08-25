DROP TABLE IF EXISTS "products";

CREATE TABLE IF NOT EXISTS "products"(
  "name" varchar(64) NOT NULL UNIQUE CHECK(name!=''),
  "price" numeric(7, 2) NOT NULL CHECK(price>=0 AND price<=10000),
  "dateProduction" date CHECK("dateProduction"<current_date),
  "amount" smallint NOT NULL CHECK(amount>=0 AND amount<=1000) DEFAULT 0,
  "currency" char(3) NOT NULL DEFAULT 'UAH' CHECK(name!='   '),
  "isAction" boolean NOT NULL DEFAULT false
);

INSERT INTO products
VALUES 
  ('Harley-Davidson Street 750', 7499, '2023-06-01', 10, 'USD', true),
  ('Yamaha MT-07', 7999.00, '2024-03-15', 5, 'USD', true);

INSERT INTO products("name", "price", "dateProduction", "amount")
VALUES('Yamaha YZF-R3', 5299, '2024-01-15', 8);

INSERT INTO products("name", "price", "dateProduction")
VALUES('Kawasaki Ninja ZX-10R', 6999, '2023-11-20');