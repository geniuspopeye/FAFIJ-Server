PGDMP         6            
    y            fafij    13.3    13.3 F               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    16394    fafij    DATABASE     b   CREATE DATABASE fafij WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE fafij;
                postgres    false            �            1259    16520    category    TABLE     c   CREATE TABLE public.category (
    id integer NOT NULL,
    name text DEFAULT ''::text NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16518    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    205            
           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    204            �            1259    16557    journal    TABLE     i   CREATE TABLE public.journal (
    id integer NOT NULL,
    name text DEFAULT 'journal'::text NOT NULL
);
    DROP TABLE public.journal;
       public         heap    postgres    false            �            1259    16551    journal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.journal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.journal_id_seq;
       public          postgres    false    210                       0    0    journal_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.journal_id_seq OWNED BY public.journal.id;
          public          postgres    false    209            �            1259    16535    note    TABLE     �   CREATE TABLE public.note (
    id integer NOT NULL,
    ctgr integer NOT NULL,
    comment text,
    id_jrnl integer NOT NULL,
    sum integer DEFAULT 0 NOT NULL,
    date text
);
    DROP TABLE public.note;
       public         heap    postgres    false            �            1259    16533    note_ctgr_seq    SEQUENCE     �   CREATE SEQUENCE public.note_ctgr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.note_ctgr_seq;
       public          postgres    false    208                       0    0    note_ctgr_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.note_ctgr_seq OWNED BY public.note.ctgr;
          public          postgres    false    207            �            1259    16601    note_id_jrnl_seq    SEQUENCE     �   CREATE SEQUENCE public.note_id_jrnl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.note_id_jrnl_seq;
       public          postgres    false    208                       0    0    note_id_jrnl_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.note_id_jrnl_seq OWNED BY public.note.id_jrnl;
          public          postgres    false    211            �            1259    16531    note_id_seq    SEQUENCE     �   CREATE SEQUENCE public.note_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.note_id_seq;
       public          postgres    false    208                       0    0    note_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.note_id_seq OWNED BY public.note.id;
          public          postgres    false    206            �            1259    16501 
   user_roles    TABLE     }   CREATE TABLE public.user_roles (
    id_user integer NOT NULL,
    id_jrnl integer NOT NULL,
    id_role integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16616    role_id_jrnl_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_jrnl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_id_jrnl_seq;
       public          postgres    false    203                       0    0    role_id_jrnl_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.role_id_jrnl_seq OWNED BY public.user_roles.id_jrnl;
          public          postgres    false    212            �            1259    16641    role_id_role_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_id_role_seq;
       public          postgres    false    203                       0    0    role_id_role_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.role_id_role_seq OWNED BY public.user_roles.id_role;
          public          postgres    false    215            �            1259    16499    role_login_seq    SEQUENCE     �   CREATE SEQUENCE public.role_login_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.role_login_seq;
       public          postgres    false    203                       0    0    role_login_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.role_login_seq OWNED BY public.user_roles.id_user;
          public          postgres    false    202            �            1259    16633    roles    TABLE     e   CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(30) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16631    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    214                       0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    213            �            1259    16473    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    password text NOT NULL,
    login text DEFAULT 'user'::text NOT NULL,
    CONSTRAINT user_password_check CHECK ((length(password) >= 6))
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16471    user_login_seq    SEQUENCE     �   CREATE SEQUENCE public.user_login_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.user_login_seq;
       public          postgres    false    201                       0    0    user_login_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.user_login_seq OWNED BY public."user".id;
          public          postgres    false    200            R           2604    16523    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            X           2604    16560 
   journal id    DEFAULT     h   ALTER TABLE ONLY public.journal ALTER COLUMN id SET DEFAULT nextval('public.journal_id_seq'::regclass);
 9   ALTER TABLE public.journal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            T           2604    16538    note id    DEFAULT     b   ALTER TABLE ONLY public.note ALTER COLUMN id SET DEFAULT nextval('public.note_id_seq'::regclass);
 6   ALTER TABLE public.note ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    206    208            U           2604    16539 	   note ctgr    DEFAULT     f   ALTER TABLE ONLY public.note ALTER COLUMN ctgr SET DEFAULT nextval('public.note_ctgr_seq'::regclass);
 8   ALTER TABLE public.note ALTER COLUMN ctgr DROP DEFAULT;
       public          postgres    false    207    208    208            V           2604    16603    note id_jrnl    DEFAULT     l   ALTER TABLE ONLY public.note ALTER COLUMN id_jrnl SET DEFAULT nextval('public.note_id_jrnl_seq'::regclass);
 ;   ALTER TABLE public.note ALTER COLUMN id_jrnl DROP DEFAULT;
       public          postgres    false    211    208            Z           2604    16636    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            L           2604    16476    user id    DEFAULT     g   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_login_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            O           2604    16505    user_roles id_user    DEFAULT     p   ALTER TABLE ONLY public.user_roles ALTER COLUMN id_user SET DEFAULT nextval('public.role_login_seq'::regclass);
 A   ALTER TABLE public.user_roles ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    202    203    203            P           2604    16618    user_roles id_jrnl    DEFAULT     r   ALTER TABLE ONLY public.user_roles ALTER COLUMN id_jrnl SET DEFAULT nextval('public.role_id_jrnl_seq'::regclass);
 A   ALTER TABLE public.user_roles ALTER COLUMN id_jrnl DROP DEFAULT;
       public          postgres    false    212    203            Q           2604    16643    user_roles id_role    DEFAULT     r   ALTER TABLE ONLY public.user_roles ALTER COLUMN id_role SET DEFAULT nextval('public.role_id_role_seq'::regclass);
 A   ALTER TABLE public.user_roles ALTER COLUMN id_role DROP DEFAULT;
       public          postgres    false    215    203            �          0    16520    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public          postgres    false    205   IJ       �          0    16557    journal 
   TABLE DATA           +   COPY public.journal (id, name) FROM stdin;
    public          postgres    false    210   pJ       �          0    16535    note 
   TABLE DATA           E   COPY public.note (id, ctgr, comment, id_jrnl, sum, date) FROM stdin;
    public          postgres    false    208   �J                 0    16633    roles 
   TABLE DATA           .   COPY public.roles (id, role_name) FROM stdin;
    public          postgres    false    214   �J       �          0    16473    user 
   TABLE DATA           5   COPY public."user" (id, password, login) FROM stdin;
    public          postgres    false    201   �J       �          0    16501 
   user_roles 
   TABLE DATA           ?   COPY public.user_roles (id_user, id_jrnl, id_role) FROM stdin;
    public          postgres    false    203   bK                  0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 1, true);
          public          postgres    false    204                       0    0    journal_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.journal_id_seq', 8, true);
          public          postgres    false    209                       0    0    note_ctgr_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.note_ctgr_seq', 1, false);
          public          postgres    false    207                       0    0    note_id_jrnl_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.note_id_jrnl_seq', 1, false);
          public          postgres    false    211                       0    0    note_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.note_id_seq', 1, false);
          public          postgres    false    206                       0    0    role_id_jrnl_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.role_id_jrnl_seq', 1, true);
          public          postgres    false    212                       0    0    role_id_role_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.role_id_role_seq', 1, false);
          public          postgres    false    215                       0    0    role_login_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.role_login_seq', 1, false);
          public          postgres    false    202                       0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    213                       0    0    user_login_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.user_login_seq', 9, true);
          public          postgres    false    200            b           2606    16529    category category_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pk;
       public            postgres    false    205            f           2606    16666    journal journal_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.journal
    ADD CONSTRAINT journal_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.journal DROP CONSTRAINT journal_name_key;
       public            postgres    false    210            h           2606    16568    journal journal_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.journal
    ADD CONSTRAINT journal_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.journal DROP CONSTRAINT journal_pk;
       public            postgres    false    210            d           2606    16545    note note_pk 
   CONSTRAINT     J   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_pk PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.note DROP CONSTRAINT note_pk;
       public            postgres    false    208            j           2606    16638    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    214            l           2606    16640    roles roles_role_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_name_key UNIQUE (role_name);
 C   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_role_name_key;
       public            postgres    false    214            \           2606    16668    user user_login_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_login_key UNIQUE (login);
 ?   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_login_key;
       public            postgres    false    201            ^           2606    16482    user user_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pk;
       public            postgres    false    201            `           2606    16655    user_roles user_roles_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id_user, id_jrnl, id_role);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    203    203    203            q           2606    16546    note note_ctgr_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_ctgr_fkey FOREIGN KEY (ctgr) REFERENCES public.category(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 =   ALTER TABLE ONLY public.note DROP CONSTRAINT note_ctgr_fkey;
       public          postgres    false    2914    208    205            p           2606    16611    note note_id_jrnl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_id_jrnl_fkey FOREIGN KEY (id_jrnl) REFERENCES public.journal(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.note DROP CONSTRAINT note_id_jrnl_fkey;
       public          postgres    false    2920    210    208            m           2606    16626    user_roles role_id_jrnl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT role_id_jrnl_fkey FOREIGN KEY (id_jrnl) REFERENCES public.journal(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT role_id_jrnl_fkey;
       public          postgres    false    2920    210    203            n           2606    16648    user_roles role_id_role_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT role_id_role_fkey FOREIGN KEY (id_role) REFERENCES public.roles(id);
 F   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT role_id_role_fkey;
       public          postgres    false    2922    214    203            o           2606    16513    user_roles role_login_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT role_login_fkey FOREIGN KEY (id_user) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT role_login_fkey;
       public          postgres    false    2910    203    201            �      x�3�L/�ON-������ $
�      �   0   x�3���/-�K��2��2�2��2�2��2�2����� �Y\1z\\\ ��
      �      x������ � �         !   x�3�tt����2ҡ>!\Ɯޞ.\1z\\\ N^3      �   T   x�3�,,O-*��,-N-*�2�LJ,I��̃�\&0III\�@e ���8��ML�8Ӌ�S�*�,` ��L.K4S�=... 6W �      �      x������ � �     