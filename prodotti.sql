-- Database: fs08test

-- DROP DATABASE IF EXISTS fs08test;

CREATE DATABASE fs08test
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Italian_Italy.1252'
    LC_CTYPE = 'Italian_Italy.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
CREATE TABLE Clienti (
	NumeroCliente serial PRIMARY KEY,
	Nome character varying NOT NULL,
	Cognome character varying NOT NULL,
	DataNascita character varying NOT NULL,
	RegioneResidenza character varying NOT NULL
);


CREATE TABLE Fatture (
	NumeroFattura serial PRIMARY KEY,
	Tipologia character varying NOT NULL,
	Importo FLOAT NOT NULL,
	Iva INT8 NOT NULL,
	IdCliente INT8 NOT NULL UNIQUE,
	DataFattura INT8 NOT NULL,
	NumeroFornitore INT8 NOT NULL
);


CREATE TABLE Prodotti (
	IdProdotto serial NOT NULL PRIMARY KEY,
	Descrizione character varying NOT NULL,
	InProduzione BIT NOT NULL,
	InCommercio BIT  NOT NULL,
	DataAttivazione INT8 NOT NULL,
	DataDisattivazzione INT8 NOT NULL
);

CREATE TABLE Fornitori (
	NumeroFornitore serial NOT NULL PRIMARY KEY,
	Denominazione character varying NOT NULL,
	RagioneResidenza character varying  NOT NULL
);

SELECT * from Prodotti;

ALTER TABLE Prodotti ALTER COLUMN InProduzione TYPE BIT;


INSERT INTO Prodotti (
	Descrizione,
	InProduzione,
	InCommercio,
	DataAttivazione,
	DataDisattivazzione	
)VALUES(
	'best product',
	1,
	0,
	2020,
	2023
);


