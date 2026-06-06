--
-- PostgreSQL database dump
--

\restrict L3KJ8FtPjCcPzyffl14e9db0J0GPs24RMRYHcHtMqbAuLhAFiSKqfOflDYHhLbx

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.models (
    id integer NOT NULL,
    brand character varying(20) NOT NULL,
    model character varying(20) NOT NULL,
    released date,
    record_created timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.models OWNER TO postgres;

--
-- Name: models_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.models_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.models_id_seq OWNER TO postgres;

--
-- Name: models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.models_id_seq OWNED BY public.models.id;


--
-- Name: models id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models ALTER COLUMN id SET DEFAULT nextval('public.models_id_seq'::regclass);


--
-- Data for Name: models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.models (id, brand, model, released, record_created) FROM stdin;
13	Fender	Stratocaster	1954-01-01	2026-02-27 09:17:57.760481
14	Gibson	Les Paul	1952-01-01	2026-02-27 09:17:57.760481
15	Fender	Telecaster	1951-01-01	2026-02-27 09:17:57.760481
16	Gibson	SG	1961-01-01	2026-02-27 09:17:57.760481
17	Rickenbacker	360/12	1964-01-01	2026-02-27 09:17:57.760481
18	Ibanez	RG550	1987-01-01	2026-02-27 09:17:57.760481
19	PRS	Custom 24	1985-01-01	2026-02-27 09:17:57.760481
20	Gretsch	White Falcon	1955-01-01	2026-02-27 09:17:57.760481
21	Gibson	Flying V	1958-01-01	2026-02-27 09:17:57.760481
22	Fender	Jazzmaster	1958-01-01	2026-02-27 09:17:57.760481
23	Squier	Strat-Mex	1993-01-01	2026-02-27 10:58:56.824504
\.


--
-- Name: models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.models_id_seq', 23, true);


--
-- Name: models models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict L3KJ8FtPjCcPzyffl14e9db0J0GPs24RMRYHcHtMqbAuLhAFiSKqfOflDYHhLbx

