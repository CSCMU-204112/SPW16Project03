SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;



CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;



COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';



SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;



CREATE TABLE dataUser (
	id text NOT NULL,
	pass text NOT NULL,
    fname text NOT NULL,
    lname text NOT NULL,
    phone text NOT NULL,
    email text NOT NULL,
    address text NOT NULL
);



ALTER TABLE dataUser OWNER TO postgres;



COPY dataUser (id, pass, fname, lname, phone, email, address) FROM stdin;
theradesh	a1234	Rarunrak	Sukhumvinai	0906946714	theredesh_n@hotmail.com	asdasdasd
\.



ALTER TABLE ONLY dataUser
    ADD CONSTRAINT pkey PRIMARY KEY (id);



ALTER TABLE ONLY dataUser
    ADD CONSTRAINT pkey PRIMARY KEY (email);



REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;