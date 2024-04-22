PGDMP         +                |           movies    15.4    15.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32768    movies    DATABASE     �   CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE movies;
                postgres    false            �            1259    32770    movies    TABLE       CREATE TABLE public.movies (
    id integer NOT NULL,
    name character varying(500) NOT NULL,
    year character varying(4),
    plot text,
    poster character varying(1000),
    director character varying(60),
    imdb_rating numeric,
    rotten_rating character varying(6)
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    32769    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    215            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    214            e           2604    32773 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    32770    movies 
   TABLE DATA           d   COPY public.movies (id, name, year, plot, poster, director, imdb_rating, rotten_rating) FROM stdin;
    public          postgres    false    215          �           0    0    movies_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.movies_id_seq', 4, true);
          public          postgres    false    214            g           2606    32777    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    215            �   <  x���Mo�8��ʯ��KWV�M{�S9��F2�*N,(h��(�C%)���P��ུà8��<�;���ALL�*^V.�F�m�T1w$S�2h��;~��f�7�4*r��*�VD[��s-ӭ`���Ԯ"��'��Y�R�:�#||��í���B��1�m����o���[ ;.��i��{W5�攅A�\k?L&2����/"�I��j9ᒔ�N�I���K��fI���(�ǵ��#�N=7�.�(~�I�L�����������Y�u[�2x	�Q���:��^M��S�M��9n���=�\�cX�Y`rg4������kT+g� }@�#"�q� 59���X��& �$*�ͯԘ���̻�r�FT
���s��2�:J�rH�[�>mx�5���|��5�4n��t����/�c7��f1 �tY���fXŋ�������%��)$��B0źn��㛍N<��C��MH���{a�2���?�/9�(;S�wUB�h5�b4�;���:B��
���]�K4�H���^#Z^X�jc��!�щ?:�o����}������ �4�l��˅��c�)�V�~��S^?��|��O�\y��/�1��Y9KO�K�	q�0����[��m0�
�����>�z�Ù*p�C����C�vt���ƥ��˷Da�!�D��^�F9J�>C�zJ�!��zH�e�˔c��*�أ�-7^��I���4P����)�7�M�zv�^��^�/����+>����%H�fX-7u�%��SΣ(=݋�LT���[��!A���D�W���~�V��K	����$N��� 9��[/÷����'��ߠ     