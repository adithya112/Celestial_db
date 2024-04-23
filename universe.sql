--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: dummy_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy_table (
    dummy_table_id integer NOT NULL,
    name character varying(255) NOT NULL,
    dummy_column boolean
);


ALTER TABLE public.dummy_table OWNER TO freecodecamp;

--
-- Name: dummy_table_dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_table_dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_table_dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_table_dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_table_dummy_id_seq OWNED BY public.dummy_table.dummy_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    width_in_light_years integer,
    height_in_light_years integer,
    age_in_millions_of_years numeric(5,2),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    width integer,
    height integer,
    age_in_millions_of_years numeric(5,2),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    height integer,
    width integer,
    age_in_millions_of_years numeric(5,2),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    width integer,
    height integer,
    age_in_millions_of_years numeric(5,2),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dummy_table dummy_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table ALTER COLUMN dummy_table_id SET DEFAULT nextval('public.dummy_table_dummy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dummy_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy_table VALUES (1, 'dummy1', true);
INSERT INTO public.dummy_table VALUES (2, 'dummy2', false);
INSERT INTO public.dummy_table VALUES (3, 'dummy3', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 20, 30, 1.40, 'this is galaxy 1', true, false);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 21, 10, 1.80, 'this is galaxy 2', true, false);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 28, 38, 1.40, 'this is galaxy 3', true, false);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 22, 31, 1.80, 'this is galaxy 4', true, false);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 10, 40, 1.20, 'this is galaxy 5', true, false);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 30, 25, 2.40, 'this is galaxy 6', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 20, 30, 1.40, 'this is moon 1', true, false, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 21, 10, 1.80, 'this is moon 2', true, false, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 28, 38, 1.40, 'this is moon 3', true, false, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 22, 31, 1.80, 'this is moon 4', true, false, 7);
INSERT INTO public.moon VALUES (5, 'moon5', 10, 40, 1.20, 'this is moon 5', true, false, 4);
INSERT INTO public.moon VALUES (6, 'moon6', 30, 25, 2.40, 'this is moon 6', true, false, 5);
INSERT INTO public.moon VALUES (7, 'moon7', 31, 28, 2.40, 'this is moon 7', true, false, 6);
INSERT INTO public.moon VALUES (8, 'moon8', 20, 30, 1.40, 'this is moon 8', true, false, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 21, 10, 1.80, 'this is moon 9', true, false, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 28, 38, 1.40, 'this is moon 10', true, false, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 22, 31, 1.80, 'this is moon 11', true, false, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 10, 40, 1.20, 'this is moon 12', true, false, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 30, 25, 2.40, 'this is moon 13', true, false, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 31, 28, 2.40, 'this is moon 14', true, false, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 20, 30, 1.40, 'this is moon 15', true, false, 1);
INSERT INTO public.moon VALUES (16, 'moon16', 21, 10, 1.80, 'this is moon 16', true, false, 2);
INSERT INTO public.moon VALUES (17, 'moon17', 28, 38, 1.40, 'this is moon 17', true, false, 3);
INSERT INTO public.moon VALUES (18, 'moon18', 22, 31, 1.80, 'this is moon 18', true, false, 4);
INSERT INTO public.moon VALUES (19, 'moon19', 10, 40, 1.20, 'this is moon 19', true, false, 5);
INSERT INTO public.moon VALUES (20, 'moon20', 30, 25, 2.40, 'this is moon 20', true, false, 8);
INSERT INTO public.moon VALUES (21, 'moon21', 31, 28, 2.40, 'this is moon 21', true, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 20, 30, 1.40, 'this is planet 1', true, false, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 21, 10, 1.80, 'this is planet 2', true, false, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 28, 38, 1.40, 'this is planet 3', true, false, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 22, 31, 1.80, 'this is planet 4', true, false, 7);
INSERT INTO public.planet VALUES (5, 'planet5', 10, 40, 1.20, 'this is planet 5', true, false, 4);
INSERT INTO public.planet VALUES (6, 'planet6', 30, 25, 2.40, 'this is planet 6', true, false, 5);
INSERT INTO public.planet VALUES (7, 'planet7', 31, 28, 2.40, 'this is planet 7', true, false, 6);
INSERT INTO public.planet VALUES (8, 'planet8', 20, 30, 1.40, 'this is planet 8', true, false, 1);
INSERT INTO public.planet VALUES (9, 'planet9', 21, 10, 1.80, 'this is planet 9', true, false, 2);
INSERT INTO public.planet VALUES (10, 'planet10', 28, 38, 1.40, 'this is planet 10', true, false, 3);
INSERT INTO public.planet VALUES (11, 'planet11', 22, 31, 1.80, 'this is planet 11', true, false, 7);
INSERT INTO public.planet VALUES (12, 'planet12', 10, 40, 1.20, 'this is planet 12', true, false, 4);
INSERT INTO public.planet VALUES (13, 'planet13', 30, 25, 2.40, 'this is planet 13', true, false, 5);
INSERT INTO public.planet VALUES (14, 'planet14', 31, 28, 2.40, 'this is planet 14', true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 20, 30, 1.40, 'this is star 1', true, false, 1);
INSERT INTO public.star VALUES (2, 'star2', 21, 10, 1.80, 'this is star 2', true, false, 2);
INSERT INTO public.star VALUES (3, 'star3', 28, 38, 1.40, 'this is star 3', true, false, 3);
INSERT INTO public.star VALUES (4, 'star4', 22, 31, 1.80, 'this is star 4', true, false, 1);
INSERT INTO public.star VALUES (5, 'star5', 10, 40, 1.20, 'this is star 5', true, false, 4);
INSERT INTO public.star VALUES (6, 'star6', 30, 25, 2.40, 'this is star 6', true, false, 5);
INSERT INTO public.star VALUES (7, 'star7', 31, 28, 2.40, 'this is star 7', true, false, 6);


--
-- Name: dummy_table_dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_table_dummy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: dummy_table dummy_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_name_key UNIQUE (name);


--
-- Name: dummy_table dummy_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_pkey PRIMARY KEY (dummy_table_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_planet FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

