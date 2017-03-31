--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: movie; Type: DATABASE; Schema: -; Owner: rickiecashwell
--

CREATE DATABASE movie WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE movie OWNER TO rickiecashwell;

\connect movie

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: rickiecashwell
--

CREATE TABLE genre (
    genre_id integer NOT NULL,
    type character varying(20) NOT NULL
);


ALTER TABLE genre OWNER TO rickiecashwell;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: rickiecashwell
--

CREATE SEQUENCE genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_genre_id_seq OWNER TO rickiecashwell;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rickiecashwell
--

ALTER SEQUENCE genre_genre_id_seq OWNED BY genre.genre_id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: rickiecashwell
--

CREATE TABLE movie (
    moviename character varying(30) NOT NULL,
    moviegenre character varying(20),
    movie_id integer NOT NULL
);


ALTER TABLE movie OWNER TO rickiecashwell;

--
-- Name: movie_genre; Type: TABLE; Schema: public; Owner: rickiecashwell
--

CREATE TABLE movie_genre (
    movie_genre_id integer NOT NULL,
    genreid integer,
    movieid integer NOT NULL
);


ALTER TABLE movie_genre OWNER TO rickiecashwell;

--
-- Name: movie_genre_movie_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: rickiecashwell
--

CREATE SEQUENCE movie_genre_movie_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_genre_movie_genre_id_seq OWNER TO rickiecashwell;

--
-- Name: movie_genre_movie_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rickiecashwell
--

ALTER SEQUENCE movie_genre_movie_genre_id_seq OWNED BY movie_genre.movie_genre_id;


--
-- Name: movie_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: rickiecashwell
--

CREATE SEQUENCE movie_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_movie_id_seq OWNER TO rickiecashwell;

--
-- Name: movie_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rickiecashwell
--

ALTER SEQUENCE movie_movie_id_seq OWNED BY movie.movie_id;


--
-- Name: movie_person; Type: TABLE; Schema: public; Owner: rickiecashwell
--

CREATE TABLE movie_person (
    movie_personid integer NOT NULL,
    movieid integer NOT NULL,
    personid integer NOT NULL
);


ALTER TABLE movie_person OWNER TO rickiecashwell;

--
-- Name: movie_person_movie_personid_seq; Type: SEQUENCE; Schema: public; Owner: rickiecashwell
--

CREATE SEQUENCE movie_person_movie_personid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_person_movie_personid_seq OWNER TO rickiecashwell;

--
-- Name: movie_person_movie_personid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rickiecashwell
--

ALTER SEQUENCE movie_person_movie_personid_seq OWNED BY movie_person.movie_personid;


--
-- Name: person; Type: TABLE; Schema: public; Owner: rickiecashwell
--

CREATE TABLE person (
    person_id integer NOT NULL,
    firstname character varying(20) NOT NULL,
    lastname character varying(20) NOT NULL
);


ALTER TABLE person OWNER TO rickiecashwell;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: rickiecashwell
--

CREATE SEQUENCE person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_person_id_seq OWNER TO rickiecashwell;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rickiecashwell
--

ALTER SEQUENCE person_person_id_seq OWNED BY person.person_id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: rickiecashwell
--

CREATE TABLE reviews (
    reviews_id integer NOT NULL,
    movierating integer
);


ALTER TABLE reviews OWNER TO rickiecashwell;

--
-- Name: reviews_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: rickiecashwell
--

CREATE SEQUENCE reviews_reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reviews_reviews_id_seq OWNER TO rickiecashwell;

--
-- Name: reviews_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rickiecashwell
--

ALTER SEQUENCE reviews_reviews_id_seq OWNED BY reviews.reviews_id;


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY genre ALTER COLUMN genre_id SET DEFAULT nextval('genre_genre_id_seq'::regclass);


--
-- Name: movie movie_id; Type: DEFAULT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie ALTER COLUMN movie_id SET DEFAULT nextval('movie_movie_id_seq'::regclass);


--
-- Name: movie_genre movie_genre_id; Type: DEFAULT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_genre ALTER COLUMN movie_genre_id SET DEFAULT nextval('movie_genre_movie_genre_id_seq'::regclass);


--
-- Name: movie_person movie_personid; Type: DEFAULT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_person ALTER COLUMN movie_personid SET DEFAULT nextval('movie_person_movie_personid_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY person ALTER COLUMN person_id SET DEFAULT nextval('person_person_id_seq'::regclass);


--
-- Name: reviews reviews_id; Type: DEFAULT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY reviews ALTER COLUMN reviews_id SET DEFAULT nextval('reviews_reviews_id_seq'::regclass);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: rickiecashwell
--

COPY genre (genre_id, type) FROM stdin;
1	Romance
2	Mystery
3	Crime
4	Drama
5	Action
6	Horror
\.


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rickiecashwell
--

SELECT pg_catalog.setval('genre_genre_id_seq', 6, true);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: rickiecashwell
--

COPY movie (moviename, moviegenre, movie_id) FROM stdin;
John Wick	Action	1
Shutter Island	Mystery	2
Pulp Fiction	Crime	3
The Conjuring	Horror	4
The Green Mile	Drama	5
\.


--
-- Data for Name: movie_genre; Type: TABLE DATA; Schema: public; Owner: rickiecashwell
--

COPY movie_genre (movie_genre_id, genreid, movieid) FROM stdin;
9	3	3
11	5	1
10	6	4
3	2	2
\.


--
-- Name: movie_genre_movie_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rickiecashwell
--

SELECT pg_catalog.setval('movie_genre_movie_genre_id_seq', 11, true);


--
-- Name: movie_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rickiecashwell
--

SELECT pg_catalog.setval('movie_movie_id_seq', 4, true);


--
-- Data for Name: movie_person; Type: TABLE DATA; Schema: public; Owner: rickiecashwell
--

COPY movie_person (movie_personid, movieid, personid) FROM stdin;
1	1	3
2	2	2
4	3	4
5	4	5
6	5	1
\.


--
-- Name: movie_person_movie_personid_seq; Type: SEQUENCE SET; Schema: public; Owner: rickiecashwell
--

SELECT pg_catalog.setval('movie_person_movie_personid_seq', 6, true);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: rickiecashwell
--

COPY person (person_id, firstname, lastname) FROM stdin;
1	Tom	Hanks
2	Leonardo	Da Vinci
3	Keanu	Reeves
4	Samuel	Jackson
5	Patrick	Wilson
\.


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rickiecashwell
--

SELECT pg_catalog.setval('person_person_id_seq', 5, true);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: rickiecashwell
--

COPY reviews (reviews_id, movierating) FROM stdin;
1	9
\.


--
-- Name: reviews_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rickiecashwell
--

SELECT pg_catalog.setval('reviews_reviews_id_seq', 2, true);


--
-- Name: genre genre_genre_id_pk; Type: CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_genre_id_pk PRIMARY KEY (genre_id);


--
-- Name: movie_genre movie_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_pkey PRIMARY KEY (movie_genre_id);


--
-- Name: movie movie_movie_id_pk; Type: CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_movie_id_pk PRIMARY KEY (movie_id);


--
-- Name: movie_person movie_person_pkey; Type: CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_person
    ADD CONSTRAINT movie_person_pkey PRIMARY KEY (movie_personid);


--
-- Name: person person_person_id_pk; Type: CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_person_id_pk PRIMARY KEY (person_id);


--
-- Name: reviews reviews_reviews_id_pk; Type: CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_reviews_id_pk PRIMARY KEY (reviews_id);


--
-- Name: movie_person_movie_personid_uindex; Type: INDEX; Schema: public; Owner: rickiecashwell
--

CREATE UNIQUE INDEX movie_person_movie_personid_uindex ON movie_person USING btree (movie_personid);


--
-- Name: movie_genre movie_genre_genre_genre_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_genre_genre_id_fk FOREIGN KEY (genreid) REFERENCES genre(genre_id);


--
-- Name: movie_genre movie_genre_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_movie_movie_id_fk FOREIGN KEY (movieid) REFERENCES movie(movie_id);


--
-- Name: movie_person movie_person_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_person
    ADD CONSTRAINT movie_person_movie_movie_id_fk FOREIGN KEY (movieid) REFERENCES movie(movie_id);


--
-- Name: movie_person movie_person_person_person_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY movie_person
    ADD CONSTRAINT movie_person_person_person_id_fk FOREIGN KEY (personid) REFERENCES person(person_id);


--
-- Name: reviews reviews_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: rickiecashwell
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_movie_movie_id_fk FOREIGN KEY (reviews_id) REFERENCES movie(movie_id);


--
-- PostgreSQL database dump complete
--

