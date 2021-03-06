PGDMP     3    )                u           richwood-scentific    9.6.2    9.6.2     r	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            s	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            t	           1262    16393    richwood-scentific    DATABASE     r   CREATE DATABASE "richwood-scentific" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 $   DROP DATABASE "richwood-scentific";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            u	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            v	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16871    cart    TABLE     �   CREATE TABLE cart (
    id text,
    date_created timestamp with time zone,
    id_customer text,
    id_product text,
    quantity integer,
    date_updated timestamp with time zone
);
    DROP TABLE public.cart;
       public         postgres    false    3            w	           0    0    cart    ACL     $   GRANT ALL ON TABLE cart TO appuser;
            public       postgres    false    189            �            1259    16394 	   customers    TABLE     A  CREATE TABLE customers (
    id text,
    first_name text,
    last_name text,
    email text,
    password text,
    shipping_address text,
    shipping_city text,
    shipping_state text,
    shipping_zipcode text,
    phone text,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
    DROP TABLE public.customers;
       public         postgres    false    3            x	           0    0 	   customers    ACL     )   GRANT ALL ON TABLE customers TO appuser;
            public       postgres    false    185            �            1259    16400    product_types    TABLE     �   CREATE TABLE product_types (
    id text NOT NULL,
    label text,
    description text,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
 !   DROP TABLE public.product_types;
       public         postgres    false    3            y	           0    0    product_types    ACL     -   GRANT ALL ON TABLE product_types TO appuser;
            public       postgres    false    186            �            1259    16406    products    TABLE     v  CREATE TABLE products (
    id text NOT NULL,
    id_type text,
    product_name text,
    qty_on_hand integer,
    size text,
    unit_price money,
    cost money,
    id_scent_type text,
    in_store boolean DEFAULT false,
    product_pic text,
    best_seller boolean DEFAULT false,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
    DROP TABLE public.products;
       public         postgres    false    3            z	           0    0    products    ACL     (   GRANT ALL ON TABLE products TO appuser;
            public       postgres    false    187            �            1259    16412    scent_types    TABLE     �   CREATE TABLE scent_types (
    id text NOT NULL,
    label text,
    description text,
    ingredient_label text,
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
    DROP TABLE public.scent_types;
       public         postgres    false    3            {	           0    0    scent_types    ACL     +   GRANT ALL ON TABLE scent_types TO appuser;
            public       postgres    false    188            o	          0    16871    cart 
   TABLE DATA               Z   COPY cart (id, date_created, id_customer, id_product, quantity, date_updated) FROM stdin;
    public       postgres    false    189   �       k	          0    16394 	   customers 
   TABLE DATA               �   COPY customers (id, first_name, last_name, email, password, shipping_address, shipping_city, shipping_state, shipping_zipcode, phone, date_created, date_updated) FROM stdin;
    public       postgres    false    185   �       l	          0    16400    product_types 
   TABLE DATA               T   COPY product_types (id, label, description, date_created, date_updated) FROM stdin;
    public       postgres    false    186   �       m	          0    16406    products 
   TABLE DATA               �   COPY products (id, id_type, product_name, qty_on_hand, size, unit_price, cost, id_scent_type, in_store, product_pic, best_seller, date_created, date_updated) FROM stdin;
    public       postgres    false    187   �       n	          0    16412    scent_types 
   TABLE DATA               d   COPY scent_types (id, label, description, ingredient_label, date_created, date_updated) FROM stdin;
    public       postgres    false    188   '       �           2606    16432     product_types product_types_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY product_types
    ADD CONSTRAINT product_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_types DROP CONSTRAINT product_types_pkey;
       public         postgres    false    186    186            �           2606    16419    products products_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         postgres    false    187    187            �           2606    16430    scent_types scent_types_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY scent_types
    ADD CONSTRAINT scent_types_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.scent_types DROP CONSTRAINT scent_types_pkey;
       public         postgres    false    188    188            o	   ;  x����q1E��*� ;�'��
�}�/��3�^���7�fDa������`ĦM8JE9��A��zk�U/.����&S=�����L!���1${_��6b�� 7v���f����w���h�.�V���sڐ<|��6��=�2ZI앆	���9mֺ��ߵޑ4o0���YK��ӈ/DNs��|af.�ФlP�fk�X_i�I�v�i�M��H�Io�`֕Ùy{�[����&���~��������Q4�*�-�k���OK	��+S�T��#�A�>�O����E�E&�3��u��7#�`      k	      x������ � �      l	   �   x�u�=n�0��Y>�.��")K3t���H"� u�@v�� ����x��*_E�(�D�J��p"�֒�[ϫ������"�u[�vΛ�]�>���>�2&BfE(y�P�p�c�h�s�y-^�u���c# u|��D�>�����+�vOv��[���]�
�D�4ALMAilX������p�WY.�����0�3 `�      m	   H  x���Ok�0���O��^�H#��쵔BB �P�E�FI�w�ػ�~��wK��K/��F��y*Ƴ)^C"��\��k��!gƖ��FU��f��qRd���SLdW���~���~�
N\����t⹻�{�âH�2���m�Q[�k���I-�[/<�����"�r���Jp�� �$!����쳍Ք�ʘ\^�!$�d�!{)��e��EDu?���;����}��y^���L��ImC�Qm�GRFǘ��LT*��	�k�ycR3X�t?/���k�?��M �@��؝�;�}$#[۲oI7ILu�hȥjSk�T�`���(�PA�h���'���V7�	dH�N�ۇ�/�8���������*�<����,§֑���>�����Oc8^n_e��c��� � ��&C&,�8���Zp�0bTk� v������X<�!�[ǩ��xHZ�a~�>÷�$漞~��rQ��Vv�N'%�5�(�0���k��� �A-��
8�R\�]|�-���7\+/����v\>X����W�E9R�G�Z�Ş��r�JY�18�!�3�� J����o�`.�������;�;-�%���~���a�      n	   �   x�M��
1D��W��&�m�"�u/1mQY��{�a�aoL"�UA�7`M�AO��@jaZ���w�0�W�ұ�T�~U�6@���T�@$�0}^�}�����x�n�[6g/
2���L���o�o�|�1� ��2�     