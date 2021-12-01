PGDMP         &                y            fafij    13.3    13.3 =               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25332    fafij    DATABASE     b   CREATE DATABASE fafij WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE fafij;
                postgres    false            �            1259    25333    category    TABLE     �   CREATE TABLE public.category (
    id integer NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    id_jrnl bigint NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    25340    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    200                       0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    201            �            1259    25342    invitations    TABLE     �   CREATE TABLE public.invitations (
    id integer NOT NULL,
    id_user bigint NOT NULL,
    id_jrnl bigint NOT NULL,
    id_role bigint NOT NULL,
    accepted boolean DEFAULT false NOT NULL
);
    DROP TABLE public.invitations;
       public         heap    postgres    false            �            1259    25346    invitations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.invitations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.invitations_id_seq;
       public          postgres    false    202                       0    0    invitations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.invitations_id_seq OWNED BY public.invitations.id;
          public          postgres    false    203            �            1259    25348    journal    TABLE     i   CREATE TABLE public.journal (
    id integer NOT NULL,
    name text DEFAULT 'journal'::text NOT NULL
);
    DROP TABLE public.journal;
       public         heap    postgres    false            �            1259    25355    journal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.journal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.journal_id_seq;
       public          postgres    false    204                       0    0    journal_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.journal_id_seq OWNED BY public.journal.id;
          public          postgres    false    205            �            1259    25357    note    TABLE     �   CREATE TABLE public.note (
    id integer NOT NULL,
    ctgr bigint NOT NULL,
    comment text NOT NULL,
    id_jrnl bigint NOT NULL,
    sum integer DEFAULT 0 NOT NULL,
    date timestamp without time zone NOT NULL
);
    DROP TABLE public.note;
       public         heap    postgres    false            �            1259    25364    note_id_seq    SEQUENCE     �   CREATE SEQUENCE public.note_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.note_id_seq;
       public          postgres    false    206            	           0    0    note_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.note_id_seq OWNED BY public.note.id;
          public          postgres    false    207            �            1259    25366    roles    TABLE     e   CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(30) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    25369    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    208            
           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    209            �            1259    25371 
   user_roles    TABLE     z   CREATE TABLE public.user_roles (
    id_user bigint NOT NULL,
    id_jrnl bigint NOT NULL,
    id_role bigint NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    25374    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    password text NOT NULL,
    login text DEFAULT 'user'::text NOT NULL,
    CONSTRAINT user_password_check CHECK ((length(password) >= 6))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25382    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    211                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    212            I           2604    25384    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            K           2604    25385    invitations id    DEFAULT     p   ALTER TABLE ONLY public.invitations ALTER COLUMN id SET DEFAULT nextval('public.invitations_id_seq'::regclass);
 =   ALTER TABLE public.invitations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            M           2604    25386 
   journal id    DEFAULT     h   ALTER TABLE ONLY public.journal ALTER COLUMN id SET DEFAULT nextval('public.journal_id_seq'::regclass);
 9   ALTER TABLE public.journal ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            O           2604    25387    note id    DEFAULT     b   ALTER TABLE ONLY public.note ALTER COLUMN id SET DEFAULT nextval('public.note_id_seq'::regclass);
 6   ALTER TABLE public.note ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            P           2604    25388    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            R           2604    25389    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �          0    25333    category 
   TABLE DATA           5   COPY public.category (id, name, id_jrnl) FROM stdin;
    public          postgres    false    200   �C       �          0    25342    invitations 
   TABLE DATA           N   COPY public.invitations (id, id_user, id_jrnl, id_role, accepted) FROM stdin;
    public          postgres    false    202   �C       �          0    25348    journal 
   TABLE DATA           +   COPY public.journal (id, name) FROM stdin;
    public          postgres    false    204   �C       �          0    25357    note 
   TABLE DATA           E   COPY public.note (id, ctgr, comment, id_jrnl, sum, date) FROM stdin;
    public          postgres    false    206   �C       �          0    25366    roles 
   TABLE DATA           .   COPY public.roles (id, role_name) FROM stdin;
    public          postgres    false    208   D       �          0    25371 
   user_roles 
   TABLE DATA           ?   COPY public.user_roles (id_user, id_jrnl, id_role) FROM stdin;
    public          postgres    false    210   KD       �          0    25374    users 
   TABLE DATA           4   COPY public.users (id, password, login) FROM stdin;
    public          postgres    false    211   hD                  0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 11, true);
          public          postgres    false    201                       0    0    invitations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.invitations_id_seq', 1, true);
          public          postgres    false    203                       0    0    journal_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.journal_id_seq', 68, true);
          public          postgres    false    205                       0    0    note_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.note_id_seq', 18, true);
          public          postgres    false    207                       0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    209                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    212            U           2606    25391    category category_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pk;
       public            postgres    false    200            W           2606    25393    invitations invitations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.invitations DROP CONSTRAINT invitations_pkey;
       public            postgres    false    202            Y           2606    25395    journal journal_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.journal
    ADD CONSTRAINT journal_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.journal DROP CONSTRAINT journal_name_key;
       public            postgres    false    204            [           2606    25397    journal journal_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.journal
    ADD CONSTRAINT journal_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.journal DROP CONSTRAINT journal_pk;
       public            postgres    false    204            ]           2606    25399    note note_pk 
   CONSTRAINT     J   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_pk PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.note DROP CONSTRAINT note_pk;
       public            postgres    false    206            _           2606    25401    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    208            a           2606    25403    roles roles_role_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_name_key UNIQUE (role_name);
 C   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_role_name_key;
       public            postgres    false    208            e           2606    25405    users user_login_key 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_login_key UNIQUE (login);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT user_login_key;
       public            postgres    false    211            g           2606    25407    users user_pk 
   CONSTRAINT     K   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pk PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pk;
       public            postgres    false    211            c           2606    25409    user_roles user_roles_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id_user, id_jrnl, id_role);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    210    210    210            h           2606    25410    category category_id_jrnl_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_id_jrnl_fkey FOREIGN KEY (id_jrnl) REFERENCES public.journal(id);
 H   ALTER TABLE ONLY public.category DROP CONSTRAINT category_id_jrnl_fkey;
       public          postgres    false    2907    204    200            i           2606    25415 $   invitations invitations_id_jrnl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_id_jrnl_fkey FOREIGN KEY (id_jrnl) REFERENCES public.journal(id);
 N   ALTER TABLE ONLY public.invitations DROP CONSTRAINT invitations_id_jrnl_fkey;
       public          postgres    false    204    202    2907            j           2606    25420 $   invitations invitations_id_role_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_id_role_fkey FOREIGN KEY (id_role) REFERENCES public.roles(id);
 N   ALTER TABLE ONLY public.invitations DROP CONSTRAINT invitations_id_role_fkey;
       public          postgres    false    202    2911    208            k           2606    25425 $   invitations invitations_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.invitations DROP CONSTRAINT invitations_id_user_fkey;
       public          postgres    false    2919    211    202            l           2606    25430    note note_ctgr_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_ctgr_fkey FOREIGN KEY (ctgr) REFERENCES public.category(id) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.note DROP CONSTRAINT note_ctgr_fkey;
       public          postgres    false    206    2901    200            m           2606    25435    note note_id_jrnl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_id_jrnl_fkey FOREIGN KEY (id_jrnl) REFERENCES public.journal(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.note DROP CONSTRAINT note_id_jrnl_fkey;
       public          postgres    false    206    2907    204            n           2606    25440 "   user_roles user_roles_id_jrnl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_id_jrnl_fkey FOREIGN KEY (id_jrnl) REFERENCES public.journal(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_id_jrnl_fkey;
       public          postgres    false    2907    210    204            o           2606    25445 "   user_roles user_roles_id_role_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_id_role_fkey FOREIGN KEY (id_role) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_id_role_fkey;
       public          postgres    false    2911    210    208            p           2606    25450 "   user_roles user_roles_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_id_user_fkey;
       public          postgres    false    211    210    2919            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   !   x�3�tt����2ҡ>!\Ɯޞ.\1z\\\ N^3      �      x������ � �      �      x������ � �     