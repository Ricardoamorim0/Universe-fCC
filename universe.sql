--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    is_habitable boolean
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
-- Name: habitant; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habitant (
    habitant_id integer NOT NULL,
    planet_id integer,
    name character varying(60) NOT NULL
);


ALTER TABLE public.habitant OWNER TO freecodecamp;

--
-- Name: habitant_habitant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.habitant_habitant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.habitant_habitant_id_seq OWNER TO freecodecamp;

--
-- Name: habitant_habitant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.habitant_habitant_id_seq OWNED BY public.habitant.habitant_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    planet_id integer,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    star_id integer,
    has_life boolean,
    is_spherical boolean,
    planet_types numeric(2,0)
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    galaxy_id integer,
    age_in_millions_of_years integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: habitant habitant_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant ALTER COLUMN habitant_id SET DEFAULT nextval('public.habitant_habitant_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'first', 'First Galaxy', 900, false);
INSERT INTO public.galaxy VALUES (2, 'second', 'Second galaxy, yeeeh!', 400, false);
INSERT INTO public.galaxy VALUES (3, 'New', 'Just new like me', 1256, true);
INSERT INTO public.galaxy VALUES (4, 'Fresh', 'Maybe have mint', 750, false);
INSERT INTO public.galaxy VALUES (5, 'Life', 'First galaxy found with E.T. life', 3048, true);
INSERT INTO public.galaxy VALUES (6, 'Me', 'Looks like my face', 2490, false);


--
-- Data for Name: habitant; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habitant VALUES (1, 5, 'American');
INSERT INTO public.habitant VALUES (2, 3, 'Moscovo');
INSERT INTO public.habitant VALUES (3, 8, 'Berlim');
INSERT INTO public.habitant VALUES (4, 9, 'Portugal');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '34ER', 'm', 1, true);
INSERT INTO public.moon VALUES (2, '34EY', 'm', 1, true);
INSERT INTO public.moon VALUES (3, '67EY', 'm', 1, false);
INSERT INTO public.moon VALUES (4, '67IY', 'm', 2, true);
INSERT INTO public.moon VALUES (5, '47IY', 'm', 2, true);
INSERT INTO public.moon VALUES (6, '42IV', 'm', 3, true);
INSERT INTO public.moon VALUES (7, '40GV', 'm', 4, true);
INSERT INTO public.moon VALUES (8, '46GP', 'm', 4, false);
INSERT INTO public.moon VALUES (9, '89GP', 'm', 4, false);
INSERT INTO public.moon VALUES (10, '97GP', 'm', 4, false);
INSERT INTO public.moon VALUES (11, '57KL', 'm', 5, true);
INSERT INTO public.moon VALUES (12, '57KP', 'm', 6, true);
INSERT INTO public.moon VALUES (13, '52TP', 'm', 7, true);
INSERT INTO public.moon VALUES (14, '54MB', 'm', 8, true);
INSERT INTO public.moon VALUES (15, '58RS', 'm', 9, true);
INSERT INTO public.moon VALUES (16, '58RU', 'm', 10, true);
INSERT INTO public.moon VALUES (17, '09RU', 'm', 10, true);
INSERT INTO public.moon VALUES (18, '16FU', 'm', 10, true);
INSERT INTO public.moon VALUES (19, '16IO', 'm', 11, true);
INSERT INTO public.moon VALUES (20, '67OP', 'm', 12, true);
INSERT INTO public.moon VALUES (21, '69OU', 'm', 13, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'KR1', 'planet', 1, false, true, 1);
INSERT INTO public.planet VALUES (2, 'KZ2', 'planet', 2, false, false, 5);
INSERT INTO public.planet VALUES (3, 'GW3', 'planet', 3, true, true, 9);
INSERT INTO public.planet VALUES (4, 'GW34', 'planet', 3, false, false, 7);
INSERT INTO public.planet VALUES (5, 'GS23', 'planet', 3, true, true, 9);
INSERT INTO public.planet VALUES (6, 'RT3', 'planet', 4, false, true, 4);
INSERT INTO public.planet VALUES (7, 'WE4', 'planet', 4, false, true, 4);
INSERT INTO public.planet VALUES (8, 'HJ45', 'planet', 5, true, true, 9);
INSERT INTO public.planet VALUES (9, 'HJ56', 'planet', 5, true, true, 9);
INSERT INTO public.planet VALUES (10, 'YTO4', 'planet', 5, false, true, 7);
INSERT INTO public.planet VALUES (11, 'TRE4', 'p', 6, false, false, 2);
INSERT INTO public.planet VALUES (12, 'URO5', 'p', 6, false, false, 2);
INSERT INTO public.planet VALUES (13, 'POT9', 'p', 6, false, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun1', 'Just a star', 1, 524);
INSERT INTO public.star VALUES (2, 'sun2', 'Just another star', 2, 432);
INSERT INTO public.star VALUES (3, 'What', 'Crazy star', 3, 2345);
INSERT INTO public.star VALUES (4, 'Reddish', 'Looks like a tomato', 4, 2347);
INSERT INTO public.star VALUES (5, 'Sea', 'Water? Or fire?', 5, 6709);
INSERT INTO public.star VALUES (6, 'Impossible', 'Green, whattt?', 6, 13452);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: habitant_habitant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.habitant_habitant_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: habitant habitant_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant
    ADD CONSTRAINT habitant_name_key UNIQUE (name);


--
-- Name: habitant habitant_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant
    ADD CONSTRAINT habitant_pkey PRIMARY KEY (habitant_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: habitant habitant_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitant
    ADD CONSTRAINT habitant_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

