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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(255) NOT NULL,
    year integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (269, 337, 338, 4, 2, 'Final', 2018);
INSERT INTO public.games VALUES (270, 339, 340, 2, 0, 'Third Place', 2018);
INSERT INTO public.games VALUES (271, 338, 340, 2, 1, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (272, 337, 339, 1, 0, 'Semi-Final', 2018);
INSERT INTO public.games VALUES (273, 338, 341, 3, 2, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (274, 340, 342, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (275, 339, 343, 2, 1, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (276, 337, 344, 2, 0, 'Quarter-Final', 2018);
INSERT INTO public.games VALUES (277, 340, 345, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (278, 342, 346, 1, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (279, 339, 347, 3, 2, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (280, 343, 348, 2, 0, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (281, 338, 349, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (282, 341, 350, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (283, 344, 351, 2, 1, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (284, 337, 352, 4, 3, 'Eighth-Final', 2018);
INSERT INTO public.games VALUES (285, 353, 352, 1, 0, 'Final', 2014);
INSERT INTO public.games VALUES (286, 354, 343, 3, 0, 'Third Place', 2014);
INSERT INTO public.games VALUES (287, 352, 354, 1, 0, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (288, 353, 343, 7, 1, 'Semi-Final', 2014);
INSERT INTO public.games VALUES (289, 354, 355, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (290, 352, 339, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (291, 343, 345, 2, 1, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (292, 353, 337, 1, 0, 'Quarter-Final', 2014);
INSERT INTO public.games VALUES (293, 343, 356, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (294, 345, 344, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (295, 337, 357, 2, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (296, 353, 358, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (297, 354, 348, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (298, 355, 359, 2, 1, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (299, 352, 346, 1, 0, 'Eighth-Final', 2014);
INSERT INTO public.games VALUES (300, 339, 360, 2, 1, 'Eighth-Final', 2014);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (337, 'France');
INSERT INTO public.teams VALUES (338, 'Croatia');
INSERT INTO public.teams VALUES (339, 'Belgium');
INSERT INTO public.teams VALUES (340, 'England');
INSERT INTO public.teams VALUES (341, 'Russia');
INSERT INTO public.teams VALUES (342, 'Sweden');
INSERT INTO public.teams VALUES (343, 'Brazil');
INSERT INTO public.teams VALUES (344, 'Uruguay');
INSERT INTO public.teams VALUES (345, 'Colombia');
INSERT INTO public.teams VALUES (346, 'Switzerland');
INSERT INTO public.teams VALUES (347, 'Japan');
INSERT INTO public.teams VALUES (348, 'Mexico');
INSERT INTO public.teams VALUES (349, 'Denmark');
INSERT INTO public.teams VALUES (350, 'Spain');
INSERT INTO public.teams VALUES (351, 'Portugal');
INSERT INTO public.teams VALUES (352, 'Argentina');
INSERT INTO public.teams VALUES (353, 'Germany');
INSERT INTO public.teams VALUES (354, 'Netherlands');
INSERT INTO public.teams VALUES (355, 'Costa Rica');
INSERT INTO public.teams VALUES (356, 'Chile');
INSERT INTO public.teams VALUES (357, 'Nigeria');
INSERT INTO public.teams VALUES (358, 'Algeria');
INSERT INTO public.teams VALUES (359, 'Greece');
INSERT INTO public.teams VALUES (360, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 300, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 360, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponents; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponents FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winners; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winners FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

