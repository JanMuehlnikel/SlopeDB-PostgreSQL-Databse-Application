PGDMP                         {           SlopeDB    15.1    15.1 /    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            K           1262    16491    SlopeDB    DATABASE     �   CREATE DATABASE "SlopeDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "SlopeDB";
                postgres    false            �            1259    17353    ACCOMODATION    TABLE     :  CREATE TABLE public."ACCOMODATION" (
    "Accomodation_id" character varying NOT NULL,
    "Name" character varying,
    "Type" character varying,
    "Street" character varying,
    "House_num" character varying,
    "City" character varying,
    "Country" character varying,
    "Post_code" character varying
);
 "   DROP TABLE public."ACCOMODATION";
       public         heap    postgres    false            �            1259    17393    AREA    TABLE     C  CREATE TABLE public."AREA" (
    "Area_id" character varying NOT NULL,
    "Country" character varying,
    "City" character varying,
    "Name" character varying,
    "Difficulty_Level" character varying,
    "Openting_time" time without time zone,
    "Closing_time" time without time zone,
    "Magic_carpet" boolean
);
    DROP TABLE public."AREA";
       public         heap    postgres    false            �            1259    17381    COURSE    TABLE     �   CREATE TABLE public."COURSE" (
    "Course_id" character varying NOT NULL,
    "Course_level" character varying,
    "Start_date" date,
    "End_date" date,
    "Area" character varying
);
    DROP TABLE public."COURSE";
       public         heap    postgres    false            �            1259    17388    COURSE_STUDENT    TABLE        CREATE TABLE public."COURSE_STUDENT" (
    "COURSE_Course_id" character varying,
    "STUDENT_Student_id" character varying
);
 $   DROP TABLE public."COURSE_STUDENT";
       public         heap    postgres    false            �            1259    17326    EMPLOYEE    TABLE       CREATE TABLE public."EMPLOYEE" (
    "Employee_id" character varying NOT NULL,
    "First_Name" character varying,
    "Last_Name" character varying,
    "Job_title" character varying,
    "Salary_group" character varying,
    "Instructor_level" character varying,
    "Street" character varying,
    "House_num" character varying,
    "City" character varying,
    "Country" character varying,
    "Post_code" bigint,
    "Birthdate" date,
    "Age" bigint,
    "Sex" character varying,
    "Phonenumber" character varying
);
    DROP TABLE public."EMPLOYEE";
       public         heap    postgres    false            �            1259    17367    HELMETS    TABLE     �   CREATE TABLE public."HELMETS" (
    "Helemets_id" character varying NOT NULL,
    "Brand" character varying,
    "Size" character varying
);
    DROP TABLE public."HELMETS";
       public         heap    postgres    false            �            1259    17374    POLES    TABLE     �   CREATE TABLE public."POLES" (
    "Poles_id" character varying NOT NULL,
    "Brand" character varying,
    "Length" character varying
);
    DROP TABLE public."POLES";
       public         heap    postgres    false            �            1259    17333    SALARY    TABLE     e   CREATE TABLE public."SALARY" (
    "Salary_group" character varying NOT NULL,
    "Salary" bigint
);
    DROP TABLE public."SALARY";
       public         heap    postgres    false            �            1259    17400    SHUTTLE    TABLE     �   CREATE TABLE public."SHUTTLE" (
    "Shuttle_name" character varying,
    "Type" character varying,
    "Start_location" character varying,
    "End_location" character varying,
    "Capacity" bigint,
    "Area_id" character varying
);
    DROP TABLE public."SHUTTLE";
       public         heap    postgres    false            �            1259    17360    SKI    TABLE     �   CREATE TABLE public."SKI" (
    "Ski_id" character varying NOT NULL,
    "Modell" character varying,
    "Brand" character varying,
    "Length" character varying
);
    DROP TABLE public."SKI";
       public         heap    postgres    false            �            1259    17340    STUDENT    TABLE     �  CREATE TABLE public."STUDENT" (
    "Student_id" character varying NOT NULL,
    "First_Name" character varying,
    "Last_Name" character varying,
    "Birthdate" date,
    "Adult" boolean,
    "Course_type" character varying,
    "Experience_level" character varying,
    "Phonenumber" character varying,
    "Sex" character varying,
    "Street" character varying,
    "House_num" character varying,
    "City" character varying,
    "Country" character varying,
    "Post-code" bigint,
    "Accomodation" character varying,
    "Ski_id" character varying,
    "Helmet_id" character varying,
    "Pole_id" character varying,
    "Arrival_date" date,
    "Departure_date" date
);
    DROP TABLE public."STUDENT";
       public         heap    postgres    false            >          0    17353    ACCOMODATION 
   TABLE DATA           �   COPY public."ACCOMODATION" ("Accomodation_id", "Name", "Type", "Street", "House_num", "City", "Country", "Post_code") FROM stdin;
    public          postgres    false    217   ?       D          0    17393    AREA 
   TABLE DATA           �   COPY public."AREA" ("Area_id", "Country", "City", "Name", "Difficulty_Level", "Openting_time", "Closing_time", "Magic_carpet") FROM stdin;
    public          postgres    false    223   "?       B          0    17381    COURSE 
   TABLE DATA           a   COPY public."COURSE" ("Course_id", "Course_level", "Start_date", "End_date", "Area") FROM stdin;
    public          postgres    false    221   ??       C          0    17388    COURSE_STUDENT 
   TABLE DATA           T   COPY public."COURSE_STUDENT" ("COURSE_Course_id", "STUDENT_Student_id") FROM stdin;
    public          postgres    false    222   \?       ;          0    17326    EMPLOYEE 
   TABLE DATA           �   COPY public."EMPLOYEE" ("Employee_id", "First_Name", "Last_Name", "Job_title", "Salary_group", "Instructor_level", "Street", "House_num", "City", "Country", "Post_code", "Birthdate", "Age", "Sex", "Phonenumber") FROM stdin;
    public          postgres    false    214   y?       @          0    17367    HELMETS 
   TABLE DATA           C   COPY public."HELMETS" ("Helemets_id", "Brand", "Size") FROM stdin;
    public          postgres    false    219   �?       A          0    17374    POLES 
   TABLE DATA           @   COPY public."POLES" ("Poles_id", "Brand", "Length") FROM stdin;
    public          postgres    false    220   �?       <          0    17333    SALARY 
   TABLE DATA           <   COPY public."SALARY" ("Salary_group", "Salary") FROM stdin;
    public          postgres    false    215   �?       E          0    17400    SHUTTLE 
   TABLE DATA           t   COPY public."SHUTTLE" ("Shuttle_name", "Type", "Start_location", "End_location", "Capacity", "Area_id") FROM stdin;
    public          postgres    false    224   �?       ?          0    17360    SKI 
   TABLE DATA           F   COPY public."SKI" ("Ski_id", "Modell", "Brand", "Length") FROM stdin;
    public          postgres    false    218   
@       =          0    17340    STUDENT 
   TABLE DATA           &  COPY public."STUDENT" ("Student_id", "First_Name", "Last_Name", "Birthdate", "Adult", "Course_type", "Experience_level", "Phonenumber", "Sex", "Street", "House_num", "City", "Country", "Post-code", "Accomodation", "Ski_id", "Helmet_id", "Pole_id", "Arrival_date", "Departure_date") FROM stdin;
    public          postgres    false    216   '@       �           2606    17359    ACCOMODATION ACCOMODATION_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."ACCOMODATION"
    ADD CONSTRAINT "ACCOMODATION_pkey" PRIMARY KEY ("Accomodation_id");
 L   ALTER TABLE ONLY public."ACCOMODATION" DROP CONSTRAINT "ACCOMODATION_pkey";
       public            postgres    false    217            �           2606    17399    AREA AREA_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."AREA"
    ADD CONSTRAINT "AREA_pkey" PRIMARY KEY ("Area_id");
 <   ALTER TABLE ONLY public."AREA" DROP CONSTRAINT "AREA_pkey";
       public            postgres    false    223            �           2606    17387    COURSE COURSE_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."COURSE"
    ADD CONSTRAINT "COURSE_pkey" PRIMARY KEY ("Course_id");
 @   ALTER TABLE ONLY public."COURSE" DROP CONSTRAINT "COURSE_pkey";
       public            postgres    false    221            �           2606    17332    EMPLOYEE EMPLOYEE_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."EMPLOYEE"
    ADD CONSTRAINT "EMPLOYEE_pkey" PRIMARY KEY ("Employee_id");
 D   ALTER TABLE ONLY public."EMPLOYEE" DROP CONSTRAINT "EMPLOYEE_pkey";
       public            postgres    false    214            �           2606    17373    HELMETS HELMETS_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."HELMETS"
    ADD CONSTRAINT "HELMETS_pkey" PRIMARY KEY ("Helemets_id");
 B   ALTER TABLE ONLY public."HELMETS" DROP CONSTRAINT "HELMETS_pkey";
       public            postgres    false    219            �           2606    17380    POLES POLES_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."POLES"
    ADD CONSTRAINT "POLES_pkey" PRIMARY KEY ("Poles_id");
 >   ALTER TABLE ONLY public."POLES" DROP CONSTRAINT "POLES_pkey";
       public            postgres    false    220            �           2606    17339    SALARY SALARY_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."SALARY"
    ADD CONSTRAINT "SALARY_pkey" PRIMARY KEY ("Salary_group");
 @   ALTER TABLE ONLY public."SALARY" DROP CONSTRAINT "SALARY_pkey";
       public            postgres    false    215            �           2606    17366    SKI SKI_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."SKI"
    ADD CONSTRAINT "SKI_pkey" PRIMARY KEY ("Ski_id");
 :   ALTER TABLE ONLY public."SKI" DROP CONSTRAINT "SKI_pkey";
       public            postgres    false    218            �           2606    17350    STUDENT STUDENT_Helmet_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_Helmet_id_key" UNIQUE ("Helmet_id");
 K   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_Helmet_id_key";
       public            postgres    false    216            �           2606    17352    STUDENT STUDENT_Pole_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_Pole_id_key" UNIQUE ("Pole_id");
 I   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_Pole_id_key";
       public            postgres    false    216            �           2606    17348    STUDENT STUDENT_Ski_id_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_Ski_id_key" UNIQUE ("Ski_id");
 H   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_Ski_id_key";
       public            postgres    false    216            �           2606    17346    STUDENT STUDENT_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_pkey" PRIMARY KEY ("Student_id");
 B   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_pkey";
       public            postgres    false    216            �           2606    17430    COURSE COURSE_Area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."COURSE"
    ADD CONSTRAINT "COURSE_Area_fkey" FOREIGN KEY ("Area") REFERENCES public."AREA"("Area_id") NOT VALID;
 E   ALTER TABLE ONLY public."COURSE" DROP CONSTRAINT "COURSE_Area_fkey";
       public          postgres    false    221    3235    223            �           2606    17435 3   COURSE_STUDENT COURSE_STUDENT_COURSE_Course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."COURSE_STUDENT"
    ADD CONSTRAINT "COURSE_STUDENT_COURSE_Course_id_fkey" FOREIGN KEY ("COURSE_Course_id") REFERENCES public."COURSE"("Course_id") NOT VALID;
 a   ALTER TABLE ONLY public."COURSE_STUDENT" DROP CONSTRAINT "COURSE_STUDENT_COURSE_Course_id_fkey";
       public          postgres    false    222    3233    221            �           2606    17440 5   COURSE_STUDENT COURSE_STUDENT_STUDENT_Student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."COURSE_STUDENT"
    ADD CONSTRAINT "COURSE_STUDENT_STUDENT_Student_id_fkey" FOREIGN KEY ("STUDENT_Student_id") REFERENCES public."STUDENT"("Student_id") NOT VALID;
 c   ALTER TABLE ONLY public."COURSE_STUDENT" DROP CONSTRAINT "COURSE_STUDENT_STUDENT_Student_id_fkey";
       public          postgres    false    3223    216    222            �           2606    17405 #   EMPLOYEE EMPLOYEE_Salary_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EMPLOYEE"
    ADD CONSTRAINT "EMPLOYEE_Salary_group_fkey" FOREIGN KEY ("Salary_group") REFERENCES public."SALARY"("Salary_group") NOT VALID;
 Q   ALTER TABLE ONLY public."EMPLOYEE" DROP CONSTRAINT "EMPLOYEE_Salary_group_fkey";
       public          postgres    false    3215    215    214            �           2606    17445    SHUTTLE SHUTTLE_Area_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SHUTTLE"
    ADD CONSTRAINT "SHUTTLE_Area_id_fkey" FOREIGN KEY ("Area_id") REFERENCES public."AREA"("Area_id") NOT VALID;
 J   ALTER TABLE ONLY public."SHUTTLE" DROP CONSTRAINT "SHUTTLE_Area_id_fkey";
       public          postgres    false    223    3235    224            �           2606    17410 !   STUDENT STUDENT_Accomodation_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_Accomodation_fkey" FOREIGN KEY ("Accomodation") REFERENCES public."ACCOMODATION"("Accomodation_id") NOT VALID;
 O   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_Accomodation_fkey";
       public          postgres    false    216    217    3225            �           2606    17420    STUDENT STUDENT_Helmet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_Helmet_id_fkey" FOREIGN KEY ("Helmet_id") REFERENCES public."HELMETS"("Helemets_id") NOT VALID;
 L   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_Helmet_id_fkey";
       public          postgres    false    216    3229    219            �           2606    17425    STUDENT STUDENT_Pole_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_Pole_id_fkey" FOREIGN KEY ("Pole_id") REFERENCES public."POLES"("Poles_id") NOT VALID;
 J   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_Pole_id_fkey";
       public          postgres    false    216    3231    220            �           2606    17415    STUDENT STUDENT_Ski_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."STUDENT"
    ADD CONSTRAINT "STUDENT_Ski_id_fkey" FOREIGN KEY ("Ski_id") REFERENCES public."SKI"("Ski_id") NOT VALID;
 I   ALTER TABLE ONLY public."STUDENT" DROP CONSTRAINT "STUDENT_Ski_id_fkey";
       public          postgres    false    218    3227    216            >      x������ � �      D      x������ � �      B      x������ � �      C      x������ � �      ;      x������ � �      @      x������ � �      A      x������ � �      <      x������ � �      E      x������ � �      ?      x������ � �      =      x������ � �     