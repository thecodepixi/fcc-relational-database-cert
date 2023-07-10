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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (35, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (36, 'Web Programming');
INSERT INTO public.courses VALUES (37, 'Database Systems');
INSERT INTO public.courses VALUES (38, 'Computer Networks');
INSERT INTO public.courses VALUES (39, 'SQL');
INSERT INTO public.courses VALUES (40, 'Machine Learning');
INSERT INTO public.courses VALUES (41, 'Computer Systems');
INSERT INTO public.courses VALUES (42, 'Web Applications');
INSERT INTO public.courses VALUES (43, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (44, 'Python');
INSERT INTO public.courses VALUES (45, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (46, 'Calculus');
INSERT INTO public.courses VALUES (47, 'Game Architecture');
INSERT INTO public.courses VALUES (48, 'Algorithms');
INSERT INTO public.courses VALUES (49, 'UNIX');
INSERT INTO public.courses VALUES (50, 'Server Administration');
INSERT INTO public.courses VALUES (51, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (62, 'Database Administration');
INSERT INTO public.majors VALUES (63, 'Web Development');
INSERT INTO public.majors VALUES (64, 'Data Science');
INSERT INTO public.majors VALUES (65, 'Network Engineering');
INSERT INTO public.majors VALUES (66, 'Computer Programming');
INSERT INTO public.majors VALUES (67, 'Game Design');
INSERT INTO public.majors VALUES (68, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (62, 35);
INSERT INTO public.majors_courses VALUES (63, 36);
INSERT INTO public.majors_courses VALUES (62, 37);
INSERT INTO public.majors_courses VALUES (64, 35);
INSERT INTO public.majors_courses VALUES (65, 38);
INSERT INTO public.majors_courses VALUES (62, 39);
INSERT INTO public.majors_courses VALUES (64, 40);
INSERT INTO public.majors_courses VALUES (65, 41);
INSERT INTO public.majors_courses VALUES (66, 38);
INSERT INTO public.majors_courses VALUES (62, 42);
INSERT INTO public.majors_courses VALUES (67, 43);
INSERT INTO public.majors_courses VALUES (64, 44);
INSERT INTO public.majors_courses VALUES (66, 45);
INSERT INTO public.majors_courses VALUES (68, 41);
INSERT INTO public.majors_courses VALUES (67, 46);
INSERT INTO public.majors_courses VALUES (63, 35);
INSERT INTO public.majors_courses VALUES (64, 46);
INSERT INTO public.majors_courses VALUES (63, 45);
INSERT INTO public.majors_courses VALUES (67, 47);
INSERT INTO public.majors_courses VALUES (68, 38);
INSERT INTO public.majors_courses VALUES (67, 48);
INSERT INTO public.majors_courses VALUES (68, 49);
INSERT INTO public.majors_courses VALUES (68, 50);
INSERT INTO public.majors_courses VALUES (66, 41);
INSERT INTO public.majors_courses VALUES (66, 44);
INSERT INTO public.majors_courses VALUES (65, 51);
INSERT INTO public.majors_courses VALUES (63, 42);
INSERT INTO public.majors_courses VALUES (65, 48);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (5, 'Rhea', 'Kellems', 62, 2.5);
INSERT INTO public.students VALUES (6, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (7, 'Kimberly', 'Whitley', 63, 3.8);
INSERT INTO public.students VALUES (8, 'Jimmy', 'Felipe', 62, 3.7);
INSERT INTO public.students VALUES (9, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (10, 'Casares', 'Hijo', 67, 4.0);
INSERT INTO public.students VALUES (11, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (12, 'Sterling', 'Boss', 67, 3.9);
INSERT INTO public.students VALUES (13, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (14, 'Kaija', 'Uronen', 67, 3.7);
INSERT INTO public.students VALUES (15, 'Faye', 'Conn', 67, 2.1);
INSERT INTO public.students VALUES (16, 'Efren', 'Reilly', 63, 3.9);
INSERT INTO public.students VALUES (17, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (18, 'Maxine', 'Hagenes', 62, 2.9);
INSERT INTO public.students VALUES (19, 'Larry', 'Saunders', 64, 2.2);
INSERT INTO public.students VALUES (20, 'Karl', 'Kuhar', 63, NULL);
INSERT INTO public.students VALUES (21, 'Lieke', 'Hazenveld', 67, 3.5);
INSERT INTO public.students VALUES (22, 'Obie', 'Hilpert', 63, NULL);
INSERT INTO public.students VALUES (23, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (24, 'Nathan', 'Turner', 62, 3.3);
INSERT INTO public.students VALUES (25, 'Gerald', 'Osiki', 64, 2.2);
INSERT INTO public.students VALUES (26, 'Vanya', 'Hassanah', 67, 4.0);
INSERT INTO public.students VALUES (27, 'Roxelana', 'Florescu', 62, 3.2);
INSERT INTO public.students VALUES (28, 'Helene', 'Parker', 64, 3.4);
INSERT INTO public.students VALUES (29, 'Mariana', 'Russel', 63, 1.8);
INSERT INTO public.students VALUES (30, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (31, 'Mehdi', 'Vandenberghe', 62, 1.9);
INSERT INTO public.students VALUES (32, 'Dejon', 'Howell', 63, 4.0);
INSERT INTO public.students VALUES (33, 'Aliya', 'Gulgowski', 68, 2.6);
INSERT INTO public.students VALUES (34, 'Ana', 'Tupajic', 64, 3.1);
INSERT INTO public.students VALUES (35, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 51, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 68, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 35, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

