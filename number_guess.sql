--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 408, 407);
INSERT INTO public.games VALUES (2, 2, 786, 785);
INSERT INTO public.games VALUES (3, 3, 601, 600);
INSERT INTO public.games VALUES (4, 3, 126, 125);
INSERT INTO public.games VALUES (5, 2, 60, 57);
INSERT INTO public.games VALUES (6, 2, 818, 817);
INSERT INTO public.games VALUES (7, 2, 284, 283);
INSERT INTO public.games VALUES (8, 4, 800, 799);
INSERT INTO public.games VALUES (9, 4, 950, 949);
INSERT INTO public.games VALUES (10, 5, 470, 469);
INSERT INTO public.games VALUES (11, 5, 977, 976);
INSERT INTO public.games VALUES (12, 4, 52, 49);
INSERT INTO public.games VALUES (13, 4, 884, 883);
INSERT INTO public.games VALUES (14, 4, 459, 458);
INSERT INTO public.games VALUES (15, 6, 328, 327);
INSERT INTO public.games VALUES (16, 6, 943, 942);
INSERT INTO public.games VALUES (17, 7, 2, 1);
INSERT INTO public.games VALUES (18, 7, 681, 680);
INSERT INTO public.games VALUES (19, 6, 439, 436);
INSERT INTO public.games VALUES (20, 6, 61, 60);
INSERT INTO public.games VALUES (21, 6, 268, 267);
INSERT INTO public.games VALUES (22, 8, 997, 996);
INSERT INTO public.games VALUES (23, 8, 778, 777);
INSERT INTO public.games VALUES (24, 9, 621, 620);
INSERT INTO public.games VALUES (25, 9, 451, 450);
INSERT INTO public.games VALUES (26, 8, 37, 34);
INSERT INTO public.games VALUES (27, 8, 972, 971);
INSERT INTO public.games VALUES (28, 8, 393, 392);
INSERT INTO public.games VALUES (29, 10, 659, 658);
INSERT INTO public.games VALUES (30, 10, 810, 809);
INSERT INTO public.games VALUES (31, 11, 150, 149);
INSERT INTO public.games VALUES (32, 11, 71, 70);
INSERT INTO public.games VALUES (33, 10, 915, 912);
INSERT INTO public.games VALUES (34, 10, 347, 346);
INSERT INTO public.games VALUES (35, 10, 107, 106);
INSERT INTO public.games VALUES (36, 12, 401, 400);
INSERT INTO public.games VALUES (37, 12, 922, 921);
INSERT INTO public.games VALUES (38, 13, 988, 987);
INSERT INTO public.games VALUES (39, 13, 934, 933);
INSERT INTO public.games VALUES (40, 12, 798, 795);
INSERT INTO public.games VALUES (41, 12, 299, 298);
INSERT INTO public.games VALUES (42, 12, 678, 677);
INSERT INTO public.games VALUES (43, 14, 198, 197);
INSERT INTO public.games VALUES (44, 14, 312, 311);
INSERT INTO public.games VALUES (45, 15, 698, 697);
INSERT INTO public.games VALUES (46, 15, 715, 714);
INSERT INTO public.games VALUES (47, 14, 489, 486);
INSERT INTO public.games VALUES (48, 14, 789, 788);
INSERT INTO public.games VALUES (49, 14, 82, 81);
INSERT INTO public.games VALUES (50, 16, 86, 85);
INSERT INTO public.games VALUES (51, 16, 363, 362);
INSERT INTO public.games VALUES (52, 17, 768, 767);
INSERT INTO public.games VALUES (53, 17, 758, 757);
INSERT INTO public.games VALUES (54, 16, 923, 920);
INSERT INTO public.games VALUES (55, 16, 85, 84);
INSERT INTO public.games VALUES (56, 16, 511, 510);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'testuser');
INSERT INTO public.users VALUES (2, 'user_1770970953795');
INSERT INTO public.users VALUES (3, 'user_1770970953794');
INSERT INTO public.users VALUES (4, 'user_1770970963126');
INSERT INTO public.users VALUES (5, 'user_1770970963125');
INSERT INTO public.users VALUES (6, 'user_1770970973730');
INSERT INTO public.users VALUES (7, 'user_1770970973729');
INSERT INTO public.users VALUES (8, 'user_1770971002430');
INSERT INTO public.users VALUES (9, 'user_1770971002429');
INSERT INTO public.users VALUES (10, 'user_1770971054517');
INSERT INTO public.users VALUES (11, 'user_1770971054516');
INSERT INTO public.users VALUES (12, 'user_1770971068482');
INSERT INTO public.users VALUES (13, 'user_1770971068481');
INSERT INTO public.users VALUES (14, 'user_1770971087157');
INSERT INTO public.users VALUES (15, 'user_1770971087156');
INSERT INTO public.users VALUES (16, 'user_1770971098815');
INSERT INTO public.users VALUES (17, 'user_1770971098814');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

