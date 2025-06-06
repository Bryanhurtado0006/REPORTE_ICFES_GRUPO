PGDMP  0    4                }            IC    17.4    17.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    65537    IC    DATABASE     j   CREATE DATABASE "IC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';
    DROP DATABASE "IC";
                     postgres    false            �            1259    65831    administrador    TABLE       CREATE TABLE public.administrador (
    id_administrador integer NOT NULL,
    nombre_completo character varying(150) NOT NULL,
    gmail character varying(100) NOT NULL,
    telefono character varying(20),
    contrasena character varying(255) NOT NULL
);
 !   DROP TABLE public.administrador;
       public         heap r       postgres    false            �            1259    65830 "   administrador_id_administrador_seq    SEQUENCE     �   CREATE SEQUENCE public.administrador_id_administrador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.administrador_id_administrador_seq;
       public               postgres    false    254            �           0    0 "   administrador_id_administrador_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.administrador_id_administrador_seq OWNED BY public.administrador.id_administrador;
          public               postgres    false    253            �            1259    65564    casos_practicos    TABLE     �   CREATE TABLE public.casos_practicos (
    id_casos_practicos integer NOT NULL,
    nombre_caso character varying(100),
    descripcion text,
    tipo character varying(50),
    fecha_inicio date,
    fecha_fin date
);
 #   DROP TABLE public.casos_practicos;
       public         heap r       postgres    false            �            1259    65563 &   casos_practicos_id_casos_practicos_seq    SEQUENCE     �   CREATE SEQUENCE public.casos_practicos_id_casos_practicos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.casos_practicos_id_casos_practicos_seq;
       public               postgres    false    224            �           0    0 &   casos_practicos_id_casos_practicos_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.casos_practicos_id_casos_practicos_seq OWNED BY public.casos_practicos.id_casos_practicos;
          public               postgres    false    223            �            1259    65584    colegios    TABLE     �   CREATE TABLE public.colegios (
    id_colegio integer NOT NULL,
    nombre_colegio character varying(150),
    direccion character varying(255),
    telefono character varying(20)
);
    DROP TABLE public.colegios;
       public         heap r       postgres    false            �            1259    65583    colegios_id_colegio_seq    SEQUENCE     �   CREATE SEQUENCE public.colegios_id_colegio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.colegios_id_colegio_seq;
       public               postgres    false    228            �           0    0    colegios_id_colegio_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.colegios_id_colegio_seq OWNED BY public.colegios.id_colegio;
          public               postgres    false    227            �            1259    65605    credenciales_estudiantes    TABLE     �   CREATE TABLE public.credenciales_estudiantes (
    id_credenciales_estudiantes integer NOT NULL,
    "contraseña" character varying(255)
);
 ,   DROP TABLE public.credenciales_estudiantes;
       public         heap r       postgres    false            �            1259    65604 8   credenciales_estudiantes_id_credenciales_estudiantes_seq    SEQUENCE     �   CREATE SEQUENCE public.credenciales_estudiantes_id_credenciales_estudiantes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE public.credenciales_estudiantes_id_credenciales_estudiantes_seq;
       public               postgres    false    230            �           0    0 8   credenciales_estudiantes_id_credenciales_estudiantes_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.credenciales_estudiantes_id_credenciales_estudiantes_seq OWNED BY public.credenciales_estudiantes.id_credenciales_estudiantes;
          public               postgres    false    229            �            1259    65703    diagnostico_aprendizaje    TABLE     �   CREATE TABLE public.diagnostico_aprendizaje (
    id_diagnostico integer NOT NULL,
    id_estudiante integer,
    fecha_realizacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    resultado character varying(255),
    recomendacion text
);
 +   DROP TABLE public.diagnostico_aprendizaje;
       public         heap r       postgres    false            �            1259    65702 *   diagnostico_aprendizaje_id_diagnostico_seq    SEQUENCE     �   CREATE SEQUENCE public.diagnostico_aprendizaje_id_diagnostico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.diagnostico_aprendizaje_id_diagnostico_seq;
       public               postgres    false    248            �           0    0 *   diagnostico_aprendizaje_id_diagnostico_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.diagnostico_aprendizaje_id_diagnostico_seq OWNED BY public.diagnostico_aprendizaje.id_diagnostico;
          public               postgres    false    247            �            1259    65665    estadisticas    TABLE     *  CREATE TABLE public.estadisticas (
    id_estadistica integer NOT NULL,
    total_usuarios integer,
    usuarios_aprobados integer,
    usuarios_reprobados integer,
    puntaje_promedio numeric(5,2),
    fecha_estadisticas timestamp without time zone,
    numero_documento character varying(50)
);
     DROP TABLE public.estadisticas;
       public         heap r       postgres    false            �            1259    65573    estudiantes    TABLE     p  CREATE TABLE public.estudiantes (
    id_numero_documento integer NOT NULL,
    nombre_completo character varying(150),
    fecha_nacimiento date,
    tipo_documento character varying(50),
    numero_documento character varying(50),
    gmail character varying(100),
    telefono character varying(20),
    contrasena character varying(255),
    id_colegio integer
);
    DROP TABLE public.estudiantes;
       public         heap r       postgres    false            �            1259    65572 #   estudiantes_id_numero_documento_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiantes_id_numero_documento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.estudiantes_id_numero_documento_seq;
       public               postgres    false    226            �           0    0 #   estudiantes_id_numero_documento_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.estudiantes_id_numero_documento_seq OWNED BY public.estudiantes.id_numero_documento;
          public               postgres    false    225            �            1259    65621 
   evaluacion    TABLE     �   CREATE TABLE public.evaluacion (
    id_evaluacion integer NOT NULL,
    titulo character varying(150),
    descripcion text,
    fecha_inicio date,
    fecha_fin date
);
    DROP TABLE public.evaluacion;
       public         heap r       postgres    false            �            1259    65620    evaluacion_id_evaluacion_seq    SEQUENCE     �   CREATE SEQUENCE public.evaluacion_id_evaluacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.evaluacion_id_evaluacion_seq;
       public               postgres    false    234            �           0    0    evaluacion_id_evaluacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.evaluacion_id_evaluacion_seq OWNED BY public.evaluacion.id_evaluacion;
          public               postgres    false    233                        1259    65842    inicio_sesion_administrador    TABLE     �   CREATE TABLE public.inicio_sesion_administrador (
    id_inicio_sesion integer NOT NULL,
    id_administrador integer NOT NULL,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    direccion_ip character varying(45)
);
 /   DROP TABLE public.inicio_sesion_administrador;
       public         heap r       postgres    false            �            1259    65841 0   inicio_sesion_administrador_id_inicio_sesion_seq    SEQUENCE     �   CREATE SEQUENCE public.inicio_sesion_administrador_id_inicio_sesion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.inicio_sesion_administrador_id_inicio_sesion_seq;
       public               postgres    false    256            �           0    0 0   inicio_sesion_administrador_id_inicio_sesion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.inicio_sesion_administrador_id_inicio_sesion_seq OWNED BY public.inicio_sesion_administrador.id_inicio_sesion;
          public               postgres    false    255            �            1259    65547    inicio_sesion_usuario    TABLE     �   CREATE TABLE public.inicio_sesion_usuario (
    id_inicio_sesion_usuario integer NOT NULL,
    contrasena character varying(255),
    id_estudiante integer
);
 )   DROP TABLE public.inicio_sesion_usuario;
       public         heap r       postgres    false            �            1259    65546 2   inicio_sesion_usuario_id_inicio_sesion_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.inicio_sesion_usuario_id_inicio_sesion_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.inicio_sesion_usuario_id_inicio_sesion_usuario_seq;
       public               postgres    false    220            �           0    0 2   inicio_sesion_usuario_id_inicio_sesion_usuario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.inicio_sesion_usuario_id_inicio_sesion_usuario_seq OWNED BY public.inicio_sesion_usuario.id_inicio_sesion_usuario;
          public               postgres    false    219            �            1259    65554    insignias_recompensas    TABLE     E  CREATE TABLE public.insignias_recompensas (
    id_insignias_recompensas integer NOT NULL,
    nombre_usuario character varying(100),
    descripcion text,
    tipo character varying(50),
    puntos_otorgados integer,
    fecha_otorgamiento timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_estudiante integer
);
 )   DROP TABLE public.insignias_recompensas;
       public         heap r       postgres    false            �            1259    65553 2   insignias_recompensas_id_insignias_recompensas_seq    SEQUENCE     �   CREATE SEQUENCE public.insignias_recompensas_id_insignias_recompensas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.insignias_recompensas_id_insignias_recompensas_seq;
       public               postgres    false    222            �           0    0 2   insignias_recompensas_id_insignias_recompensas_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.insignias_recompensas_id_insignias_recompensas_seq OWNED BY public.insignias_recompensas.id_insignias_recompensas;
          public               postgres    false    221            �            1259    65639    material_estudio    TABLE     U  CREATE TABLE public.material_estudio (
    id_materia integer NOT NULL,
    titulo_materia character varying(255),
    metodologia text,
    nivel_dificultad character varying(50),
    descripcion text,
    tipo_archivo character varying(50),
    fecha_subida date,
    hora_subida time without time zone,
    id_modo_aprendizaje integer
);
 $   DROP TABLE public.material_estudio;
       public         heap r       postgres    false            �            1259    65658    modos_aprendizaje    TABLE     �   CREATE TABLE public.modos_aprendizaje (
    id_modo_aprendizaje integer NOT NULL,
    nombre_modo character varying(255),
    descripcion text
);
 %   DROP TABLE public.modos_aprendizaje;
       public         heap r       postgres    false            �            1259    65539    participantes    TABLE     �   CREATE TABLE public.participantes (
    id_participantes integer NOT NULL,
    nombre character varying(100),
    correo character varying(100),
    fecha_registro timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.participantes;
       public         heap r       postgres    false            �            1259    65538 "   participantes_id_participantes_seq    SEQUENCE     �   CREATE SEQUENCE public.participantes_id_participantes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.participantes_id_participantes_seq;
       public               postgres    false    218            �           0    0 "   participantes_id_participantes_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.participantes_id_participantes_seq OWNED BY public.participantes.id_participantes;
          public               postgres    false    217            �            1259    65612 	   preguntas    TABLE     �   CREATE TABLE public.preguntas (
    id_preguntas integer NOT NULL,
    pregunta text,
    respuesta_a text,
    respuesta_b text,
    respuesta_c text,
    respuesta_d text,
    respuesta_correcta character(1)
);
    DROP TABLE public.preguntas;
       public         heap r       postgres    false            �            1259    65718    preguntas_diagnostico    TABLE     �   CREATE TABLE public.preguntas_diagnostico (
    id_pregunta integer NOT NULL,
    pregunta text,
    tipo_pregunta character varying(50)
);
 )   DROP TABLE public.preguntas_diagnostico;
       public         heap r       postgres    false            �            1259    65717 %   preguntas_diagnostico_id_pregunta_seq    SEQUENCE     �   CREATE SEQUENCE public.preguntas_diagnostico_id_pregunta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.preguntas_diagnostico_id_pregunta_seq;
       public               postgres    false    250            �           0    0 %   preguntas_diagnostico_id_pregunta_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.preguntas_diagnostico_id_pregunta_seq OWNED BY public.preguntas_diagnostico.id_pregunta;
          public               postgres    false    249            �            1259    65611    preguntas_id_preguntas_seq    SEQUENCE     �   CREATE SEQUENCE public.preguntas_id_preguntas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.preguntas_id_preguntas_seq;
       public               postgres    false    232            �           0    0    preguntas_id_preguntas_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.preguntas_id_preguntas_seq OWNED BY public.preguntas.id_preguntas;
          public               postgres    false    231            �            1259    65689    ranking    TABLE     �   CREATE TABLE public.ranking (
    id_ranking integer NOT NULL,
    nombre_usuario character varying(255),
    puntos_totales integer,
    posicion integer,
    fecha_actualizacion timestamp without time zone,
    id_estudiante integer
);
    DROP TABLE public.ranking;
       public         heap r       postgres    false            �            1259    65630 
   respuestas    TABLE     �   CREATE TABLE public.respuestas (
    id_respuestas integer NOT NULL,
    respuestas_usuario text,
    fecha_respuesta timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_pregunta integer,
    id_estudiante integer
);
    DROP TABLE public.respuestas;
       public         heap r       postgres    false            �            1259    65727    respuestas_diagnostico    TABLE     �   CREATE TABLE public.respuestas_diagnostico (
    id_respuesta integer NOT NULL,
    id_diagnostico integer,
    id_pregunta integer,
    respuesta text
);
 *   DROP TABLE public.respuestas_diagnostico;
       public         heap r       postgres    false            �            1259    65726 '   respuestas_diagnostico_id_respuesta_seq    SEQUENCE     �   CREATE SEQUENCE public.respuestas_diagnostico_id_respuesta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.respuestas_diagnostico_id_respuesta_seq;
       public               postgres    false    252            �           0    0 '   respuestas_diagnostico_id_respuesta_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.respuestas_diagnostico_id_respuesta_seq OWNED BY public.respuestas_diagnostico.id_respuesta;
          public               postgres    false    251            �            1259    65629    respuestas_id_respuestas_seq    SEQUENCE     �   CREATE SEQUENCE public.respuestas_id_respuestas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.respuestas_id_respuestas_seq;
       public               postgres    false    236            �           0    0    respuestas_id_respuestas_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.respuestas_id_respuestas_seq OWNED BY public.respuestas.id_respuestas;
          public               postgres    false    235            �            1259    65670 
   resultados    TABLE     �   CREATE TABLE public.resultados (
    id_resultado integer NOT NULL,
    puntaje_total integer,
    fecha_resultado timestamp without time zone,
    estado character varying(50),
    id_estudiante integer
);
    DROP TABLE public.resultados;
       public         heap r       postgres    false            �            1259    65682    retos    TABLE     �   CREATE TABLE public.retos (
    id_retos integer NOT NULL,
    nombre character varying(255),
    descripcion text,
    fecha_inicio date,
    fecha_fin date
);
    DROP TABLE public.retos;
       public         heap r       postgres    false            �            1259    65694    retos_juegos    TABLE       CREATE TABLE public.retos_juegos (
    id_reto_juegos integer NOT NULL,
    nombre_reto character varying(255),
    descripcion text,
    tipo character varying(100),
    fecha_inicio date,
    fecha_fin date,
    estado character varying(50),
    id_reto integer
);
     DROP TABLE public.retos_juegos;
       public         heap r       postgres    false            �            1259    65675    seguimiento    TABLE     �   CREATE TABLE public.seguimiento (
    id_seguimiento integer NOT NULL,
    simulacro text,
    nivel_dificultad character varying(50),
    ajuste_seguimiento text,
    recomendacion text,
    recordatorio text,
    id_estudiante integer
);
    DROP TABLE public.seguimiento;
       public         heap r       postgres    false            �            1259    65646    seleccion_aprendizaje    TABLE     �   CREATE TABLE public.seleccion_aprendizaje (
    id_seleccion_aprendizaje integer NOT NULL,
    fecha_seleccion timestamp without time zone,
    numero_documento character varying(50),
    id_modo_aprendizaje integer
);
 )   DROP TABLE public.seleccion_aprendizaje;
       public         heap r       postgres    false            �            1259    65651 	   simulacro    TABLE     �   CREATE TABLE public.simulacro (
    id_simulacro integer NOT NULL,
    tiempo_limite integer,
    simulacro text,
    pregunta text,
    observacion_respuesta text
);
    DROP TABLE public.simulacro;
       public         heap r       postgres    false            �           2604    65834    administrador id_administrador    DEFAULT     �   ALTER TABLE ONLY public.administrador ALTER COLUMN id_administrador SET DEFAULT nextval('public.administrador_id_administrador_seq'::regclass);
 M   ALTER TABLE public.administrador ALTER COLUMN id_administrador DROP DEFAULT;
       public               postgres    false    254    253    254            �           2604    65567 "   casos_practicos id_casos_practicos    DEFAULT     �   ALTER TABLE ONLY public.casos_practicos ALTER COLUMN id_casos_practicos SET DEFAULT nextval('public.casos_practicos_id_casos_practicos_seq'::regclass);
 Q   ALTER TABLE public.casos_practicos ALTER COLUMN id_casos_practicos DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    65587    colegios id_colegio    DEFAULT     z   ALTER TABLE ONLY public.colegios ALTER COLUMN id_colegio SET DEFAULT nextval('public.colegios_id_colegio_seq'::regclass);
 B   ALTER TABLE public.colegios ALTER COLUMN id_colegio DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    65608 4   credenciales_estudiantes id_credenciales_estudiantes    DEFAULT     �   ALTER TABLE ONLY public.credenciales_estudiantes ALTER COLUMN id_credenciales_estudiantes SET DEFAULT nextval('public.credenciales_estudiantes_id_credenciales_estudiantes_seq'::regclass);
 c   ALTER TABLE public.credenciales_estudiantes ALTER COLUMN id_credenciales_estudiantes DROP DEFAULT;
       public               postgres    false    230    229    230            �           2604    65706 &   diagnostico_aprendizaje id_diagnostico    DEFAULT     �   ALTER TABLE ONLY public.diagnostico_aprendizaje ALTER COLUMN id_diagnostico SET DEFAULT nextval('public.diagnostico_aprendizaje_id_diagnostico_seq'::regclass);
 U   ALTER TABLE public.diagnostico_aprendizaje ALTER COLUMN id_diagnostico DROP DEFAULT;
       public               postgres    false    248    247    248            �           2604    65576    estudiantes id_numero_documento    DEFAULT     �   ALTER TABLE ONLY public.estudiantes ALTER COLUMN id_numero_documento SET DEFAULT nextval('public.estudiantes_id_numero_documento_seq'::regclass);
 N   ALTER TABLE public.estudiantes ALTER COLUMN id_numero_documento DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    65624    evaluacion id_evaluacion    DEFAULT     �   ALTER TABLE ONLY public.evaluacion ALTER COLUMN id_evaluacion SET DEFAULT nextval('public.evaluacion_id_evaluacion_seq'::regclass);
 G   ALTER TABLE public.evaluacion ALTER COLUMN id_evaluacion DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    65845 ,   inicio_sesion_administrador id_inicio_sesion    DEFAULT     �   ALTER TABLE ONLY public.inicio_sesion_administrador ALTER COLUMN id_inicio_sesion SET DEFAULT nextval('public.inicio_sesion_administrador_id_inicio_sesion_seq'::regclass);
 [   ALTER TABLE public.inicio_sesion_administrador ALTER COLUMN id_inicio_sesion DROP DEFAULT;
       public               postgres    false    256    255    256            �           2604    65550 .   inicio_sesion_usuario id_inicio_sesion_usuario    DEFAULT     �   ALTER TABLE ONLY public.inicio_sesion_usuario ALTER COLUMN id_inicio_sesion_usuario SET DEFAULT nextval('public.inicio_sesion_usuario_id_inicio_sesion_usuario_seq'::regclass);
 ]   ALTER TABLE public.inicio_sesion_usuario ALTER COLUMN id_inicio_sesion_usuario DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    65557 .   insignias_recompensas id_insignias_recompensas    DEFAULT     �   ALTER TABLE ONLY public.insignias_recompensas ALTER COLUMN id_insignias_recompensas SET DEFAULT nextval('public.insignias_recompensas_id_insignias_recompensas_seq'::regclass);
 ]   ALTER TABLE public.insignias_recompensas ALTER COLUMN id_insignias_recompensas DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    65542    participantes id_participantes    DEFAULT     �   ALTER TABLE ONLY public.participantes ALTER COLUMN id_participantes SET DEFAULT nextval('public.participantes_id_participantes_seq'::regclass);
 M   ALTER TABLE public.participantes ALTER COLUMN id_participantes DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    65615    preguntas id_preguntas    DEFAULT     �   ALTER TABLE ONLY public.preguntas ALTER COLUMN id_preguntas SET DEFAULT nextval('public.preguntas_id_preguntas_seq'::regclass);
 E   ALTER TABLE public.preguntas ALTER COLUMN id_preguntas DROP DEFAULT;
       public               postgres    false    232    231    232            �           2604    65721 !   preguntas_diagnostico id_pregunta    DEFAULT     �   ALTER TABLE ONLY public.preguntas_diagnostico ALTER COLUMN id_pregunta SET DEFAULT nextval('public.preguntas_diagnostico_id_pregunta_seq'::regclass);
 P   ALTER TABLE public.preguntas_diagnostico ALTER COLUMN id_pregunta DROP DEFAULT;
       public               postgres    false    249    250    250            �           2604    65633    respuestas id_respuestas    DEFAULT     �   ALTER TABLE ONLY public.respuestas ALTER COLUMN id_respuestas SET DEFAULT nextval('public.respuestas_id_respuestas_seq'::regclass);
 G   ALTER TABLE public.respuestas ALTER COLUMN id_respuestas DROP DEFAULT;
       public               postgres    false    235    236    236            �           2604    65730 #   respuestas_diagnostico id_respuesta    DEFAULT     �   ALTER TABLE ONLY public.respuestas_diagnostico ALTER COLUMN id_respuesta SET DEFAULT nextval('public.respuestas_diagnostico_id_respuesta_seq'::regclass);
 R   ALTER TABLE public.respuestas_diagnostico ALTER COLUMN id_respuesta DROP DEFAULT;
       public               postgres    false    252    251    252            �          0    65831    administrador 
   TABLE DATA           g   COPY public.administrador (id_administrador, nombre_completo, gmail, telefono, contrasena) FROM stdin;
    public               postgres    false    254   �       �          0    65564    casos_practicos 
   TABLE DATA           v   COPY public.casos_practicos (id_casos_practicos, nombre_caso, descripcion, tipo, fecha_inicio, fecha_fin) FROM stdin;
    public               postgres    false    224   9�       �          0    65584    colegios 
   TABLE DATA           S   COPY public.colegios (id_colegio, nombre_colegio, direccion, telefono) FROM stdin;
    public               postgres    false    228   V�       �          0    65605    credenciales_estudiantes 
   TABLE DATA           ^   COPY public.credenciales_estudiantes (id_credenciales_estudiantes, "contraseña") FROM stdin;
    public               postgres    false    230   ��       �          0    65703    diagnostico_aprendizaje 
   TABLE DATA           }   COPY public.diagnostico_aprendizaje (id_diagnostico, id_estudiante, fecha_realizacion, resultado, recomendacion) FROM stdin;
    public               postgres    false    248   ��       �          0    65665    estadisticas 
   TABLE DATA           �   COPY public.estadisticas (id_estadistica, total_usuarios, usuarios_aprobados, usuarios_reprobados, puntaje_promedio, fecha_estadisticas, numero_documento) FROM stdin;
    public               postgres    false    241   ��       �          0    65573    estudiantes 
   TABLE DATA           �   COPY public.estudiantes (id_numero_documento, nombre_completo, fecha_nacimiento, tipo_documento, numero_documento, gmail, telefono, contrasena, id_colegio) FROM stdin;
    public               postgres    false    226   ��       �          0    65621 
   evaluacion 
   TABLE DATA           a   COPY public.evaluacion (id_evaluacion, titulo, descripcion, fecha_inicio, fecha_fin) FROM stdin;
    public               postgres    false    234   ��       �          0    65842    inicio_sesion_administrador 
   TABLE DATA           s   COPY public.inicio_sesion_administrador (id_inicio_sesion, id_administrador, fecha_hora, direccion_ip) FROM stdin;
    public               postgres    false    256   ��       �          0    65547    inicio_sesion_usuario 
   TABLE DATA           d   COPY public.inicio_sesion_usuario (id_inicio_sesion_usuario, contrasena, id_estudiante) FROM stdin;
    public               postgres    false    220   ��       �          0    65554    insignias_recompensas 
   TABLE DATA           �   COPY public.insignias_recompensas (id_insignias_recompensas, nombre_usuario, descripcion, tipo, puntos_otorgados, fecha_otorgamiento, id_estudiante) FROM stdin;
    public               postgres    false    222   !�       �          0    65639    material_estudio 
   TABLE DATA           �   COPY public.material_estudio (id_materia, titulo_materia, metodologia, nivel_dificultad, descripcion, tipo_archivo, fecha_subida, hora_subida, id_modo_aprendizaje) FROM stdin;
    public               postgres    false    237   >�       �          0    65658    modos_aprendizaje 
   TABLE DATA           Z   COPY public.modos_aprendizaje (id_modo_aprendizaje, nombre_modo, descripcion) FROM stdin;
    public               postgres    false    240   [�       �          0    65539    participantes 
   TABLE DATA           Y   COPY public.participantes (id_participantes, nombre, correo, fecha_registro) FROM stdin;
    public               postgres    false    218   ��       �          0    65612 	   preguntas 
   TABLE DATA           �   COPY public.preguntas (id_preguntas, pregunta, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta) FROM stdin;
    public               postgres    false    232   �       �          0    65718    preguntas_diagnostico 
   TABLE DATA           U   COPY public.preguntas_diagnostico (id_pregunta, pregunta, tipo_pregunta) FROM stdin;
    public               postgres    false    250   /�       �          0    65689    ranking 
   TABLE DATA           {   COPY public.ranking (id_ranking, nombre_usuario, puntos_totales, posicion, fecha_actualizacion, id_estudiante) FROM stdin;
    public               postgres    false    245   L�       �          0    65630 
   respuestas 
   TABLE DATA           t   COPY public.respuestas (id_respuestas, respuestas_usuario, fecha_respuesta, id_pregunta, id_estudiante) FROM stdin;
    public               postgres    false    236   i�       �          0    65727    respuestas_diagnostico 
   TABLE DATA           f   COPY public.respuestas_diagnostico (id_respuesta, id_diagnostico, id_pregunta, respuesta) FROM stdin;
    public               postgres    false    252   ��       �          0    65670 
   resultados 
   TABLE DATA           i   COPY public.resultados (id_resultado, puntaje_total, fecha_resultado, estado, id_estudiante) FROM stdin;
    public               postgres    false    242   ��       �          0    65682    retos 
   TABLE DATA           W   COPY public.retos (id_retos, nombre, descripcion, fecha_inicio, fecha_fin) FROM stdin;
    public               postgres    false    244   ��       �          0    65694    retos_juegos 
   TABLE DATA           �   COPY public.retos_juegos (id_reto_juegos, nombre_reto, descripcion, tipo, fecha_inicio, fecha_fin, estado, id_reto) FROM stdin;
    public               postgres    false    246   ��       �          0    65675    seguimiento 
   TABLE DATA           �   COPY public.seguimiento (id_seguimiento, simulacro, nivel_dificultad, ajuste_seguimiento, recomendacion, recordatorio, id_estudiante) FROM stdin;
    public               postgres    false    243   ��       �          0    65646    seleccion_aprendizaje 
   TABLE DATA           �   COPY public.seleccion_aprendizaje (id_seleccion_aprendizaje, fecha_seleccion, numero_documento, id_modo_aprendizaje) FROM stdin;
    public               postgres    false    238   �       �          0    65651 	   simulacro 
   TABLE DATA           l   COPY public.simulacro (id_simulacro, tiempo_limite, simulacro, pregunta, observacion_respuesta) FROM stdin;
    public               postgres    false    239   Q�       �           0    0 "   administrador_id_administrador_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.administrador_id_administrador_seq', 1, false);
          public               postgres    false    253            �           0    0 &   casos_practicos_id_casos_practicos_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.casos_practicos_id_casos_practicos_seq', 1, false);
          public               postgres    false    223            �           0    0    colegios_id_colegio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.colegios_id_colegio_seq', 31, true);
          public               postgres    false    227            �           0    0 8   credenciales_estudiantes_id_credenciales_estudiantes_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.credenciales_estudiantes_id_credenciales_estudiantes_seq', 1, false);
          public               postgres    false    229            �           0    0 *   diagnostico_aprendizaje_id_diagnostico_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.diagnostico_aprendizaje_id_diagnostico_seq', 1, false);
          public               postgres    false    247            �           0    0 #   estudiantes_id_numero_documento_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.estudiantes_id_numero_documento_seq', 2, true);
          public               postgres    false    225            �           0    0    evaluacion_id_evaluacion_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.evaluacion_id_evaluacion_seq', 1, false);
          public               postgres    false    233            �           0    0 0   inicio_sesion_administrador_id_inicio_sesion_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.inicio_sesion_administrador_id_inicio_sesion_seq', 1, false);
          public               postgres    false    255            �           0    0 2   inicio_sesion_usuario_id_inicio_sesion_usuario_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.inicio_sesion_usuario_id_inicio_sesion_usuario_seq', 1, false);
          public               postgres    false    219            �           0    0 2   insignias_recompensas_id_insignias_recompensas_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.insignias_recompensas_id_insignias_recompensas_seq', 1, false);
          public               postgres    false    221            �           0    0 "   participantes_id_participantes_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.participantes_id_participantes_seq', 1, false);
          public               postgres    false    217            �           0    0 %   preguntas_diagnostico_id_pregunta_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.preguntas_diagnostico_id_pregunta_seq', 1, false);
          public               postgres    false    249            �           0    0    preguntas_id_preguntas_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.preguntas_id_preguntas_seq', 1, false);
          public               postgres    false    231            �           0    0 '   respuestas_diagnostico_id_respuesta_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.respuestas_diagnostico_id_respuesta_seq', 1, false);
          public               postgres    false    251            �           0    0    respuestas_id_respuestas_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.respuestas_id_respuestas_seq', 1, false);
          public               postgres    false    235            �           2606    65840 %   administrador administrador_gmail_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_gmail_key UNIQUE (gmail);
 O   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_gmail_key;
       public                 postgres    false    254            �           2606    65838     administrador administrador_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_administrador);
 J   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_pkey;
       public                 postgres    false    254            �           2606    65571 $   casos_practicos casos_practicos_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.casos_practicos
    ADD CONSTRAINT casos_practicos_pkey PRIMARY KEY (id_casos_practicos);
 N   ALTER TABLE ONLY public.casos_practicos DROP CONSTRAINT casos_practicos_pkey;
       public                 postgres    false    224            �           2606    65589    colegios colegios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.colegios
    ADD CONSTRAINT colegios_pkey PRIMARY KEY (id_colegio);
 @   ALTER TABLE ONLY public.colegios DROP CONSTRAINT colegios_pkey;
       public                 postgres    false    228            �           2606    65610 6   credenciales_estudiantes credenciales_estudiantes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.credenciales_estudiantes
    ADD CONSTRAINT credenciales_estudiantes_pkey PRIMARY KEY (id_credenciales_estudiantes);
 `   ALTER TABLE ONLY public.credenciales_estudiantes DROP CONSTRAINT credenciales_estudiantes_pkey;
       public                 postgres    false    230            �           2606    65711 4   diagnostico_aprendizaje diagnostico_aprendizaje_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.diagnostico_aprendizaje
    ADD CONSTRAINT diagnostico_aprendizaje_pkey PRIMARY KEY (id_diagnostico);
 ^   ALTER TABLE ONLY public.diagnostico_aprendizaje DROP CONSTRAINT diagnostico_aprendizaje_pkey;
       public                 postgres    false    248            �           2606    65669    estadisticas estadisticas_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.estadisticas
    ADD CONSTRAINT estadisticas_pkey PRIMARY KEY (id_estadistica);
 H   ALTER TABLE ONLY public.estadisticas DROP CONSTRAINT estadisticas_pkey;
       public                 postgres    false    241            �           2606    65582 ,   estudiantes estudiantes_numero_documento_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_numero_documento_key UNIQUE (numero_documento);
 V   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_numero_documento_key;
       public                 postgres    false    226            �           2606    65580    estudiantes estudiantes_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id_numero_documento);
 F   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_pkey;
       public                 postgres    false    226            �           2606    65628    evaluacion evaluacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.evaluacion
    ADD CONSTRAINT evaluacion_pkey PRIMARY KEY (id_evaluacion);
 D   ALTER TABLE ONLY public.evaluacion DROP CONSTRAINT evaluacion_pkey;
       public                 postgres    false    234            �           2606    65848 <   inicio_sesion_administrador inicio_sesion_administrador_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inicio_sesion_administrador
    ADD CONSTRAINT inicio_sesion_administrador_pkey PRIMARY KEY (id_inicio_sesion);
 f   ALTER TABLE ONLY public.inicio_sesion_administrador DROP CONSTRAINT inicio_sesion_administrador_pkey;
       public                 postgres    false    256            �           2606    65552 0   inicio_sesion_usuario inicio_sesion_usuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.inicio_sesion_usuario
    ADD CONSTRAINT inicio_sesion_usuario_pkey PRIMARY KEY (id_inicio_sesion_usuario);
 Z   ALTER TABLE ONLY public.inicio_sesion_usuario DROP CONSTRAINT inicio_sesion_usuario_pkey;
       public                 postgres    false    220            �           2606    65562 0   insignias_recompensas insignias_recompensas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.insignias_recompensas
    ADD CONSTRAINT insignias_recompensas_pkey PRIMARY KEY (id_insignias_recompensas);
 Z   ALTER TABLE ONLY public.insignias_recompensas DROP CONSTRAINT insignias_recompensas_pkey;
       public                 postgres    false    222            �           2606    65645 &   material_estudio material_estudio_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.material_estudio
    ADD CONSTRAINT material_estudio_pkey PRIMARY KEY (id_materia);
 P   ALTER TABLE ONLY public.material_estudio DROP CONSTRAINT material_estudio_pkey;
       public                 postgres    false    237            �           2606    65664 (   modos_aprendizaje modos_aprendizaje_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.modos_aprendizaje
    ADD CONSTRAINT modos_aprendizaje_pkey PRIMARY KEY (id_modo_aprendizaje);
 R   ALTER TABLE ONLY public.modos_aprendizaje DROP CONSTRAINT modos_aprendizaje_pkey;
       public                 postgres    false    240            �           2606    65545     participantes participantes_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.participantes
    ADD CONSTRAINT participantes_pkey PRIMARY KEY (id_participantes);
 J   ALTER TABLE ONLY public.participantes DROP CONSTRAINT participantes_pkey;
       public                 postgres    false    218            �           2606    65725 0   preguntas_diagnostico preguntas_diagnostico_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.preguntas_diagnostico
    ADD CONSTRAINT preguntas_diagnostico_pkey PRIMARY KEY (id_pregunta);
 Z   ALTER TABLE ONLY public.preguntas_diagnostico DROP CONSTRAINT preguntas_diagnostico_pkey;
       public                 postgres    false    250            �           2606    65619    preguntas preguntas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_pkey PRIMARY KEY (id_preguntas);
 B   ALTER TABLE ONLY public.preguntas DROP CONSTRAINT preguntas_pkey;
       public                 postgres    false    232            �           2606    65693    ranking ranking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT ranking_pkey PRIMARY KEY (id_ranking);
 >   ALTER TABLE ONLY public.ranking DROP CONSTRAINT ranking_pkey;
       public                 postgres    false    245            �           2606    65734 2   respuestas_diagnostico respuestas_diagnostico_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.respuestas_diagnostico
    ADD CONSTRAINT respuestas_diagnostico_pkey PRIMARY KEY (id_respuesta);
 \   ALTER TABLE ONLY public.respuestas_diagnostico DROP CONSTRAINT respuestas_diagnostico_pkey;
       public                 postgres    false    252            �           2606    65638    respuestas respuestas_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pkey PRIMARY KEY (id_respuestas);
 D   ALTER TABLE ONLY public.respuestas DROP CONSTRAINT respuestas_pkey;
       public                 postgres    false    236            �           2606    65674    resultados resultados_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id_resultado);
 D   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_pkey;
       public                 postgres    false    242            �           2606    65700    retos_juegos retos_juegos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.retos_juegos
    ADD CONSTRAINT retos_juegos_pkey PRIMARY KEY (id_reto_juegos);
 H   ALTER TABLE ONLY public.retos_juegos DROP CONSTRAINT retos_juegos_pkey;
       public                 postgres    false    246            �           2606    65688    retos retos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.retos
    ADD CONSTRAINT retos_pkey PRIMARY KEY (id_retos);
 :   ALTER TABLE ONLY public.retos DROP CONSTRAINT retos_pkey;
       public                 postgres    false    244            �           2606    65681    seguimiento seguimiento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.seguimiento
    ADD CONSTRAINT seguimiento_pkey PRIMARY KEY (id_seguimiento);
 F   ALTER TABLE ONLY public.seguimiento DROP CONSTRAINT seguimiento_pkey;
       public                 postgres    false    243            �           2606    65650 0   seleccion_aprendizaje seleccion_aprendizaje_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_aprendizaje
    ADD CONSTRAINT seleccion_aprendizaje_pkey PRIMARY KEY (id_seleccion_aprendizaje);
 Z   ALTER TABLE ONLY public.seleccion_aprendizaje DROP CONSTRAINT seleccion_aprendizaje_pkey;
       public                 postgres    false    238            �           2606    65657    simulacro simulacro_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.simulacro
    ADD CONSTRAINT simulacro_pkey PRIMARY KEY (id_simulacro);
 B   ALTER TABLE ONLY public.simulacro DROP CONSTRAINT simulacro_pkey;
       public                 postgres    false    239            �           2606    65712 B   diagnostico_aprendizaje diagnostico_aprendizaje_id_estudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnostico_aprendizaje
    ADD CONSTRAINT diagnostico_aprendizaje_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.diagnostico_aprendizaje DROP CONSTRAINT diagnostico_aprendizaje_id_estudiante_fkey;
       public               postgres    false    248    4782    226            �           2606    65825 '   estudiantes estudiantes_id_colegio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_id_colegio_fkey FOREIGN KEY (id_colegio) REFERENCES public.colegios(id_colegio);
 Q   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_id_colegio_fkey;
       public               postgres    false    226    228    4784            �           2606    65854 4   credenciales_estudiantes fk_credenciales_estudiantes    FK CONSTRAINT     �   ALTER TABLE ONLY public.credenciales_estudiantes
    ADD CONSTRAINT fk_credenciales_estudiantes FOREIGN KEY (id_credenciales_estudiantes) REFERENCES public.estudiantes(id_numero_documento) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.credenciales_estudiantes DROP CONSTRAINT fk_credenciales_estudiantes;
       public               postgres    false    226    4782    230            �           2606    65859 1   diagnostico_aprendizaje fk_diagnostico_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnostico_aprendizaje
    ADD CONSTRAINT fk_diagnostico_estudiante FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.diagnostico_aprendizaje DROP CONSTRAINT fk_diagnostico_estudiante;
       public               postgres    false    248    4782    226            �           2606    65864 '   estadisticas fk_estadisticas_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas
    ADD CONSTRAINT fk_estadisticas_estudiante FOREIGN KEY (numero_documento) REFERENCES public.estudiantes(numero_documento) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.estadisticas DROP CONSTRAINT fk_estadisticas_estudiante;
       public               postgres    false    241    226    4780            �           2606    65785    estadisticas fk_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadisticas
    ADD CONSTRAINT fk_estudiante FOREIGN KEY (numero_documento) REFERENCES public.estudiantes(numero_documento);
 D   ALTER TABLE ONLY public.estadisticas DROP CONSTRAINT fk_estudiante;
       public               postgres    false    241    4780    226            �           2606    65869 #   estudiantes fk_estudiantes_colegios    FK CONSTRAINT     �   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT fk_estudiantes_colegios FOREIGN KEY (id_colegio) REFERENCES public.colegios(id_colegio) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT fk_estudiantes_colegios;
       public               postgres    false    4784    226    228            �           2606    65874 :   inicio_sesion_administrador fk_inicio_sesion_administrador    FK CONSTRAINT     �   ALTER TABLE ONLY public.inicio_sesion_administrador
    ADD CONSTRAINT fk_inicio_sesion_administrador FOREIGN KEY (id_administrador) REFERENCES public.administrador(id_administrador) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.inicio_sesion_administrador DROP CONSTRAINT fk_inicio_sesion_administrador;
       public               postgres    false    254    4822    256            �           2606    65904 .   inicio_sesion_usuario fk_inicio_sesion_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.inicio_sesion_usuario
    ADD CONSTRAINT fk_inicio_sesion_usuario FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.inicio_sesion_usuario DROP CONSTRAINT fk_inicio_sesion_usuario;
       public               postgres    false    226    220    4782            �           2606    65879 -   insignias_recompensas fk_insignias_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.insignias_recompensas
    ADD CONSTRAINT fk_insignias_estudiante FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.insignias_recompensas DROP CONSTRAINT fk_insignias_estudiante;
       public               postgres    false    222    226    4782            �           2606    65800 !   material_estudio fk_material_modo    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_estudio
    ADD CONSTRAINT fk_material_modo FOREIGN KEY (id_modo_aprendizaje) REFERENCES public.modos_aprendizaje(id_modo_aprendizaje);
 K   ALTER TABLE ONLY public.material_estudio DROP CONSTRAINT fk_material_modo;
       public               postgres    false    237    4800    240            �           2606    65884 -   material_estudio fk_material_modo_aprendizaje    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_estudio
    ADD CONSTRAINT fk_material_modo_aprendizaje FOREIGN KEY (id_modo_aprendizaje) REFERENCES public.modos_aprendizaje(id_modo_aprendizaje) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.material_estudio DROP CONSTRAINT fk_material_modo_aprendizaje;
       public               postgres    false    4800    240    237            �           2606    65889    ranking fk_ranking_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT fk_ranking_estudiante FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.ranking DROP CONSTRAINT fk_ranking_estudiante;
       public               postgres    false    245    4782    226            �           2606    65894 0   respuestas_diagnostico fk_respuestas_diagnostico    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuestas_diagnostico
    ADD CONSTRAINT fk_respuestas_diagnostico FOREIGN KEY (id_diagnostico) REFERENCES public.diagnostico_aprendizaje(id_diagnostico) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.respuestas_diagnostico DROP CONSTRAINT fk_respuestas_diagnostico;
       public               postgres    false    252    248    4814            �           2606    65914 #   respuestas fk_respuestas_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT fk_respuestas_estudiante FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.respuestas DROP CONSTRAINT fk_respuestas_estudiante;
       public               postgres    false    236    4782    226            �           2606    65909 !   respuestas fk_respuestas_pregunta    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT fk_respuestas_pregunta FOREIGN KEY (id_pregunta) REFERENCES public.preguntas(id_preguntas) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.respuestas DROP CONSTRAINT fk_respuestas_pregunta;
       public               postgres    false    232    4788    236            �           2606    65899 9   respuestas_diagnostico fk_respuestas_pregunta_diagnostico    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuestas_diagnostico
    ADD CONSTRAINT fk_respuestas_pregunta_diagnostico FOREIGN KEY (id_pregunta) REFERENCES public.preguntas_diagnostico(id_pregunta) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.respuestas_diagnostico DROP CONSTRAINT fk_respuestas_pregunta_diagnostico;
       public               postgres    false    4816    250    252            �           2606    65919    retos_juegos fk_retos_juegos    FK CONSTRAINT     �   ALTER TABLE ONLY public.retos_juegos
    ADD CONSTRAINT fk_retos_juegos FOREIGN KEY (id_reto) REFERENCES public.retos(id_retos) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.retos_juegos DROP CONSTRAINT fk_retos_juegos;
       public               postgres    false    4808    246    244            �           2606    65790 -   seleccion_aprendizaje fk_seleccion_estudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_aprendizaje
    ADD CONSTRAINT fk_seleccion_estudiante FOREIGN KEY (numero_documento) REFERENCES public.estudiantes(numero_documento);
 W   ALTER TABLE ONLY public.seleccion_aprendizaje DROP CONSTRAINT fk_seleccion_estudiante;
       public               postgres    false    238    226    4780            �           2606    65795 '   seleccion_aprendizaje fk_seleccion_modo    FK CONSTRAINT     �   ALTER TABLE ONLY public.seleccion_aprendizaje
    ADD CONSTRAINT fk_seleccion_modo FOREIGN KEY (id_modo_aprendizaje) REFERENCES public.modos_aprendizaje(id_modo_aprendizaje);
 Q   ALTER TABLE ONLY public.seleccion_aprendizaje DROP CONSTRAINT fk_seleccion_modo;
       public               postgres    false    238    240    4800            �           2606    65849 M   inicio_sesion_administrador inicio_sesion_administrador_id_administrador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inicio_sesion_administrador
    ADD CONSTRAINT inicio_sesion_administrador_id_administrador_fkey FOREIGN KEY (id_administrador) REFERENCES public.administrador(id_administrador) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.inicio_sesion_administrador DROP CONSTRAINT inicio_sesion_administrador_id_administrador_fkey;
       public               postgres    false    254    256    4822            �           2606    65820 >   insignias_recompensas insignias_recompensas_id_estudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insignias_recompensas
    ADD CONSTRAINT insignias_recompensas_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento);
 h   ALTER TABLE ONLY public.insignias_recompensas DROP CONSTRAINT insignias_recompensas_id_estudiante_fkey;
       public               postgres    false    4782    222    226            �           2606    65815 "   ranking ranking_id_estudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT ranking_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento);
 L   ALTER TABLE ONLY public.ranking DROP CONSTRAINT ranking_id_estudiante_fkey;
       public               postgres    false    4782    245    226            �           2606    65735 A   respuestas_diagnostico respuestas_diagnostico_id_diagnostico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuestas_diagnostico
    ADD CONSTRAINT respuestas_diagnostico_id_diagnostico_fkey FOREIGN KEY (id_diagnostico) REFERENCES public.diagnostico_aprendizaje(id_diagnostico) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.respuestas_diagnostico DROP CONSTRAINT respuestas_diagnostico_id_diagnostico_fkey;
       public               postgres    false    252    248    4814            �           2606    65740 >   respuestas_diagnostico respuestas_diagnostico_id_pregunta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.respuestas_diagnostico
    ADD CONSTRAINT respuestas_diagnostico_id_pregunta_fkey FOREIGN KEY (id_pregunta) REFERENCES public.preguntas_diagnostico(id_pregunta) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.respuestas_diagnostico DROP CONSTRAINT respuestas_diagnostico_id_pregunta_fkey;
       public               postgres    false    250    252    4816            �           2606    65805 (   resultados resultados_id_estudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento);
 R   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_id_estudiante_fkey;
       public               postgres    false    242    4782    226            �           2606    65810 *   seguimiento seguimiento_id_estudiante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimiento
    ADD CONSTRAINT seguimiento_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_numero_documento);
 T   ALTER TABLE ONLY public.seguimiento DROP CONSTRAINT seguimiento_id_estudiante_fkey;
       public               postgres    false    4782    226    243            �      x������ � �      �      x������ � �      �   9  x���M�� ���)��6������	fӖ��� H�Jn�3�bil������=������QʒW�50f/0��0.ȩ�h�do�9��x�]��(�u��t@���8�2�	~��+P]Vu���[�G�	�^z�
e��^��ڼ�2���b�Ձ�PߥQ=�	h�T���TQ�8�F缊N��^�^��%VҒSC�j/_�E^g^je�����:�sQ��X�m
�c5��*V�7[?�'���YK�D��x�nc׶��X�~�,l]��%���ϙ2~V��Kd��Y}b�gT{����ϻ��&����Δ'�Y]˜����E��Ա�+,�{�թ���hpЇ�;���Շ��cS���&itu�sƣͻ���m��i!x=�=xĕ�:�q�@�rBiP7��j�S�Sp���.�]��/��D��P��j�pT�ւ��`���pN��E��UϦ~����1Z&�F�Y}�������c��b�N���r���i��#�90����0�a�3�m�2���g��O̰لc*1��.���)�d�a���^��=F�y������ґ�tNӑG�9ˤ�9޵<pp���J(�	���6����*:@zw�t�����s��i��S�0i9>.���~�91us^>qT~�nB��--y	"�9��Yyջǰ��AI�q�G�?^�XN"��7/"�������
�|x8��5g��+^��&\�M��$I""���d�O����0�0K��bx+#|����HN�G�۫�Z��Ze��"�*��#�b���	��a
������y��I�      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�uV�R�X]��
~ ��屛����v,��l��ZMpk����o\�p1�'�c�y��FCN&�'O�$`W�i�u����X����37��bx)� �b�������������Y	��,�٦��� �B����E;�n≒'��AvJ�?!�0A`�EpI�i��7%h�t�؏4���Ҏ��i�Y�Uaml�8o/�yV�:):f׀Ղs9��:-w����&/��-�����ڑ�Nl-�ߘ˂��ұEs����/��v'zp
�|/Dӗ�H��8f��`Ԍr����HG��,\%����k��O]?p�S��q!݀dc}ٜUO�+���x	�0��)[�G"�����x↧�I��Y�笓�HMuyN:���%�`�*c�K����𶷤�9�>f�c�);+�Ur��p�k��H�ʑ�������7�!_f�
K�$A�)��U،�QT�(��>�e�|m3<7�����I�z���
��#b����H����lf�
v�#���o��@6]'Ϳﳣ{�5a���*-��ljpU_:�Z4�|3T��Wq��8ol��j7{�؏y82��� p�<�M/tG8 ��� �0�q&�.�����}�f�����RT�Z�Ҍçe�p����(�èY'Z`حA�N�8�����{h�`LG6d��FC�������b�jE�����αDm9?�=��L�J�"�IM�i*=P�ȹs�a��%/UrF��-f�;��	i!�w��LB�й���+�HY�nK�K�R6O�s5����p��i�=��n�<�^�άP�[�9A�>C��zgZ��KI��
^�� Я��	Wh~�������zF�����)�kK�--K��Cm� :�7��Ԃ�F2]R�u����%�:��>⿮��t~?t����C�)���=���kԥ!F]hhʗ�s#��`�,O�Bt�(Nm���\���� ���V���a��X쪃��ً��Q.��u�̂��PF?d�����2�ܙ%'�����p..�gi�(��"��˦�9ډ��-�Bޯ�WA����gbߦ@Vc)�����Z�}�gӱ�3,	��ך�*נQ_��3羬*�����"U�����@�
�tFc%��o��N>"b����-�.���x�Iaf��a%ѩ�Че��/#߀���[<Q�Y�a��+aɲ���/o�Z�/��      �      x������ � �      �      x������ � �      �      x�3�L�I,K542������� 1�A      �      x������ � �      �      x������ � �      �   �  x��V���6=�_�/Xd�M���rkoci�rAr�2��M�9�P�-�M?�7�,�vRX�%���{oft������^6���Co?��=%\2��ă$s4��g����l"w�G��H���'��ÿ��:;?���n������s����$��1띊eC�H]���I�O�c��S�r�sL�s�}yq�O�ͯG��Cgk�tQ��d��Wb ��(�������#�3�$ټ��d-&6�$ �'2�4����f�a��Z����ᔧ���m_m@b��CC;��ߚ�$[���D_�a;r�:ٯ7	�3;��́b��IU��H�,0��l�@�'2I%�!�Dd�@��p�̺%u��7�BQ�s-UA)��б'��M�g�.`��H��Kahc�?w�և�u�,n@;q���j�KP0Pp%i�==��=��DN��c��w�	޸ф�r��Dto��4\2~~�-^�@׊�F�~�Jn�>x��dqċV$u�R�F�������ʂ�As����f5ZA,��նɖ�(��ZTF��`6��,7��m��Mf��W*�`t@�Q;I�r�Q���/��B��`;9X/ G��~D���pb��:��<��C=*��U	��W���{;�����������g�g���د�Q�#Lq�9��:M��g��G��B��Kʯo`�~��
N��2f�u��+S��;�����m�ҔE�@_��hf��K�&MZ�g�Oǋ\gTDys�{�1a�x8	��R6{+���m/�i�4Z�!X�]���hQ<��qӍׯ���ܵ]VU@��H���@P���*{����]�Ǟ3-�5�� ��ȯ�O��r�����K���������U���C1�!49�˜*�.�$�I�Σ
�ݵM��R�� ~�y�2��l�,�S	O�ve��@��^(#�m����j������Ǩ^D�W7�(�v힨��07C��F�p'�H�������(�Ptk����+]��vp�)��c�_�[����U�>�b~�]�]�|��ꨒq۽'��l��nHr�A��<�u��W�X_�z��-�k�Y[j:7�~-��v]RD�~�u�F��>]m��/n`Y._
��	�7�~�^��Z6A^�/h��j�g��t���vZ8�ğw���_~�I�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   *   x�3�4202�50�50T00�#NC#cS3sNC�=... �ro      �      x������ � �     