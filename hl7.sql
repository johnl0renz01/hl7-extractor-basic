PGDMP  4                     }            HL7    17.2    17.2 ;    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    17084    HL7    DATABASE     ~   CREATE DATABASE "HL7" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Philippines.1252';
    DROP DATABASE "HL7";
                     postgres    false            �            1259    17265    msh    TABLE     �  CREATE TABLE public.msh (
    id integer NOT NULL,
    unparsed_msg_id integer,
    field_separator character varying(1),
    encoding_characters character varying(5),
    sending_application character varying,
    sending_facility character varying,
    receiving_application character varying,
    receiving_facility character varying,
    date_time_of_message timestamp with time zone,
    security character varying,
    message_type character varying,
    message_control_id character varying(199),
    processing_id character varying,
    version_id character varying,
    sequence_number integer,
    continuation_pointer character varying,
    accept_acknowledgment_type character varying(2),
    application_acknowledgment_type character varying(2),
    country_code character varying(3),
    character_set character varying[],
    principal_language_of_message character varying,
    alternate_character_set_handling_scheme character varying(13),
    message_profile_identifier character varying[],
    sending_responsible_organization character varying,
    receiving_responsible_organization character varying,
    sending_network_address character varying,
    receiving_network_address character varying,
    date_created timestamp with time zone DEFAULT now()
);
    DROP TABLE public.msh;
       public         heap r       postgres    false            �            1259    17264 
   msh_id_seq    SEQUENCE     �   CREATE SEQUENCE public.msh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.msh_id_seq;
       public               postgres    false    220                       0    0 
   msh_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.msh_id_seq OWNED BY public.msh.id;
          public               postgres    false    219            �            1259    17323    obr    TABLE     d  CREATE TABLE public.obr (
    id integer NOT NULL,
    unparsed_msg_id integer,
    set_id_obr integer,
    placer_order_number text,
    filler_order_number text,
    universal_service_identifier text,
    priority character varying,
    requested_date_time character varying,
    observation_date_time timestamp without time zone,
    observation_end_date_time timestamp without time zone,
    collection_volume character varying,
    collector_identifier text[],
    specimen_action_code character varying,
    danger_code text,
    relevant_clinical_information text[],
    specimen_received_date_time character varying,
    specimen_source character varying,
    ordering_provider text[],
    order_callback_phone_number text[],
    placer_field_1 character varying,
    placer_field_2 character varying,
    filler_field_1 character varying,
    filler_field_2 character varying,
    results_rpt_status_chng_date_time timestamp without time zone,
    charge_to_practice text,
    diagnostic_serv_sect_id character varying,
    result_status character varying,
    parent_result text,
    quantity_timing text[],
    result_copies_to text[],
    parent text,
    transportation_mode character varying,
    reason_for_study text[],
    principal_result_interpreter text,
    assistant_result_interpreter text[],
    technician text[],
    transcriptionist text[],
    scheduled_date_time timestamp without time zone,
    number_of_sample_containers integer,
    transport_logistics_of_collected_sample text[],
    collector_comment text[],
    transport_arrangement_responsibility text,
    transport_arranged character varying,
    escort_required character varying,
    planned_patient_transport_comment text[],
    procedure_code text,
    procedure_code_modifier text[],
    placer_supplemental_service_information text[],
    filler_supplemental_service_information text[],
    medically_necessary_duplicate_procedure_reason text,
    result_handling text,
    parent_universal_service_identifier text,
    observation_group_id text,
    parent_observation_group_id text,
    alternate_placer_order_number text[],
    parent_order text
);
    DROP TABLE public.obr;
       public         heap r       postgres    false            �            1259    17322 
   obr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.obr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.obr_id_seq;
       public               postgres    false    226                       0    0 
   obr_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.obr_id_seq OWNED BY public.obr.id;
          public               postgres    false    225            �            1259    17337    obx    TABLE     �  CREATE TABLE public.obx (
    id integer NOT NULL,
    unparsed_msg_id integer,
    set_id_obx integer,
    value_type character varying,
    observation_identifier text,
    observation_sub_id character varying,
    observation_value text[],
    units text,
    reference_range character varying,
    interpretation_codes text[],
    probability double precision,
    nature_of_abnormal_test text[],
    observation_result_status character varying,
    effective_date_of_reference_range timestamp without time zone,
    user_defined_access_checks character varying,
    date_time_of_the_observation timestamp without time zone,
    producers_id text,
    responsible_observer text[],
    observation_method text[],
    equipment_instance_identifier text[],
    date_time_of_the_analysis timestamp without time zone,
    observation_site text[],
    observation_instance_identifier text,
    mood_code text,
    performing_organization_name text,
    performing_organization_address text,
    performing_organization_medical_director text,
    patient_results_release_category character varying,
    root_cause text,
    local_process_control text[]
);
    DROP TABLE public.obx;
       public         heap r       postgres    false            �            1259    17336 
   obx_id_seq    SEQUENCE     �   CREATE SEQUENCE public.obx_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.obx_id_seq;
       public               postgres    false    228                       0    0 
   obx_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.obx_id_seq OWNED BY public.obx.id;
          public               postgres    false    227            �            1259    17309    orc    TABLE     6  CREATE TABLE public.orc (
    id integer NOT NULL,
    unparsed_msg_id integer,
    order_control character varying,
    placer_order_number text,
    filler_order_number text,
    placer_group_number text,
    order_status character varying,
    response_flag character varying,
    quantity_timing text[],
    parent text,
    date_time_of_transaction timestamp without time zone,
    entered_by text[],
    verified_by text[],
    ordering_provider text[],
    enterers_location text,
    call_back_phone_number text[],
    order_effective_date_time timestamp without time zone,
    order_control_code_reason text,
    entering_organization text,
    entering_device text,
    action_by text[],
    advanced_beneficiary_notice_code text,
    ordering_facility_name text[],
    ordering_facility_address text[],
    ordering_facility_phone_number text[],
    ordering_provider_address text[],
    order_status_modifier text,
    advanced_beneficiary_notice_override_reason text,
    fillers_expected_availability_date_time timestamp without time zone,
    confidentiality_code text,
    order_type text,
    enterer_authorization_mode text,
    parent_universal_service_identifier text,
    advanced_beneficiary_notice_date timestamp without time zone,
    alternate_placer_order_number text[],
    order_workflow_profile text[]
);
    DROP TABLE public.orc;
       public         heap r       postgres    false            �            1259    17308 
   orc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.orc_id_seq;
       public               postgres    false    224                       0    0 
   orc_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.orc_id_seq OWNED BY public.orc.id;
          public               postgres    false    223            �            1259    17352    pid    TABLE     -  CREATE TABLE public.pid (
    id integer NOT NULL,
    unparsed_msg_id integer,
    set_id integer,
    patient_id character varying,
    patient_identifier_list character varying[],
    alternate_patient_id character varying,
    patient_name character varying[],
    mothers_maiden_name character varying[],
    date_time_of_birth timestamp without time zone,
    administrative_sex character varying,
    patient_alias character varying,
    race character varying[],
    patient_address character varying[],
    county_code character varying,
    phone_number_home character varying[],
    phone_number_business character varying[],
    primary_language character varying,
    marital_status character varying,
    religion character varying,
    patient_account_number character varying,
    ssn_number_patient character varying,
    drivers_license_number_patient character varying,
    mothers_identifier character varying[],
    ethnic_group character varying[],
    birth_place character varying,
    multiple_birth_indicator character varying,
    birth_order integer,
    citizenship character varying[],
    veterans_military_status character varying,
    nationality character varying,
    patient_death_date_and_time timestamp without time zone,
    patient_death_indicator character varying,
    identity_unknown_indicator character varying,
    identity_reliability_code character varying[],
    last_update_date_time timestamp without time zone,
    last_update_facility character varying,
    taxonomic_classification_code character varying,
    breed_code character varying,
    strain character varying,
    production_class_code character varying[],
    tribal_citizenship character varying[],
    patient_telecommunication_information character varying[],
    date_created timestamp with time zone DEFAULT now()
);
    DROP TABLE public.pid;
       public         heap r       postgres    false            �            1259    17351 
   pid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.pid_id_seq;
       public               postgres    false    230                       0    0 
   pid_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.pid_id_seq OWNED BY public.pid.id;
          public               postgres    false    229            �            1259    17295    pv1    TABLE     �  CREATE TABLE public.pv1 (
    id integer NOT NULL,
    unparsed_msg_id integer,
    set_id integer,
    patient_class character varying,
    assigned_patient_location text,
    admission_type character varying,
    preadmit_number character varying,
    prior_patient_location text,
    attending_doctor text[],
    referring_doctor text[],
    consulting_doctor text[],
    hospital_service character varying,
    temporary_location text,
    preadmit_test_indicator character varying,
    re_admission_indicator character varying,
    admit_source character varying,
    ambulatory_status text[],
    vip_indicator character varying,
    admitting_doctor text[],
    patient_type character varying,
    visit_number character varying,
    financial_class text[],
    charge_price_indicator character varying,
    courtesy_code character varying,
    credit_rating character varying,
    contract_code text[],
    contract_effective_date timestamp without time zone,
    contract_amount double precision,
    contract_period double precision,
    interest_code character varying,
    transfer_to_bad_debt_code character varying,
    transfer_to_bad_debt_date timestamp without time zone,
    bad_debt_agency_code character varying,
    bad_debt_transfer_amount double precision,
    bad_debt_recovery_amount double precision,
    delete_account_indicator character varying,
    delete_account_date timestamp without time zone,
    discharge_disposition character varying,
    discharged_to_location text,
    diet_type character varying,
    servicing_facility character varying,
    bed_status character varying,
    account_status character varying,
    pending_location text,
    prior_temporary_location text,
    admit_date_time timestamp without time zone,
    discharge_date_time timestamp without time zone,
    current_patient_balance double precision,
    total_charges double precision,
    total_adjustments double precision,
    total_payments double precision,
    alternate_visit_id character varying,
    visit_indicator character varying,
    other_healthcare_provider character varying,
    service_episode_description text,
    service_episode_identifier character varying
);
    DROP TABLE public.pv1;
       public         heap r       postgres    false            �            1259    17294 
   pv1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pv1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.pv1_id_seq;
       public               postgres    false    222                       0    0 
   pv1_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.pv1_id_seq OWNED BY public.pv1.id;
          public               postgres    false    221            �            1259    17086    unparsed_hl7    TABLE     �   CREATE TABLE public.unparsed_hl7 (
    id integer NOT NULL,
    content text NOT NULL,
    date_created timestamp with time zone DEFAULT now()
);
     DROP TABLE public.unparsed_hl7;
       public         heap r       postgres    false            �            1259    17085    unparsed_hl7_id_seq    SEQUENCE     �   CREATE SEQUENCE public.unparsed_hl7_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.unparsed_hl7_id_seq;
       public               postgres    false    218                       0    0    unparsed_hl7_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.unparsed_hl7_id_seq OWNED BY public.unparsed_hl7.id;
          public               postgres    false    217            A           2604    17268    msh id    DEFAULT     `   ALTER TABLE ONLY public.msh ALTER COLUMN id SET DEFAULT nextval('public.msh_id_seq'::regclass);
 5   ALTER TABLE public.msh ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            E           2604    17326    obr id    DEFAULT     `   ALTER TABLE ONLY public.obr ALTER COLUMN id SET DEFAULT nextval('public.obr_id_seq'::regclass);
 5   ALTER TABLE public.obr ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            F           2604    17340    obx id    DEFAULT     `   ALTER TABLE ONLY public.obx ALTER COLUMN id SET DEFAULT nextval('public.obx_id_seq'::regclass);
 5   ALTER TABLE public.obx ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    228    228            D           2604    17312    orc id    DEFAULT     `   ALTER TABLE ONLY public.orc ALTER COLUMN id SET DEFAULT nextval('public.orc_id_seq'::regclass);
 5   ALTER TABLE public.orc ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            G           2604    17355    pid id    DEFAULT     `   ALTER TABLE ONLY public.pid ALTER COLUMN id SET DEFAULT nextval('public.pid_id_seq'::regclass);
 5   ALTER TABLE public.pid ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    229    230            C           2604    17298    pv1 id    DEFAULT     `   ALTER TABLE ONLY public.pv1 ALTER COLUMN id SET DEFAULT nextval('public.pv1_id_seq'::regclass);
 5   ALTER TABLE public.pv1 ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            ?           2604    17089    unparsed_hl7 id    DEFAULT     r   ALTER TABLE ONLY public.unparsed_hl7 ALTER COLUMN id SET DEFAULT nextval('public.unparsed_hl7_id_seq'::regclass);
 >   ALTER TABLE public.unparsed_hl7 ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    17265    msh 
   TABLE DATA           t  COPY public.msh (id, unparsed_msg_id, field_separator, encoding_characters, sending_application, sending_facility, receiving_application, receiving_facility, date_time_of_message, security, message_type, message_control_id, processing_id, version_id, sequence_number, continuation_pointer, accept_acknowledgment_type, application_acknowledgment_type, country_code, character_set, principal_language_of_message, alternate_character_set_handling_scheme, message_profile_identifier, sending_responsible_organization, receiving_responsible_organization, sending_network_address, receiving_network_address, date_created) FROM stdin;
    public               postgres    false    220   v       �          0    17323    obr 
   TABLE DATA             COPY public.obr (id, unparsed_msg_id, set_id_obr, placer_order_number, filler_order_number, universal_service_identifier, priority, requested_date_time, observation_date_time, observation_end_date_time, collection_volume, collector_identifier, specimen_action_code, danger_code, relevant_clinical_information, specimen_received_date_time, specimen_source, ordering_provider, order_callback_phone_number, placer_field_1, placer_field_2, filler_field_1, filler_field_2, results_rpt_status_chng_date_time, charge_to_practice, diagnostic_serv_sect_id, result_status, parent_result, quantity_timing, result_copies_to, parent, transportation_mode, reason_for_study, principal_result_interpreter, assistant_result_interpreter, technician, transcriptionist, scheduled_date_time, number_of_sample_containers, transport_logistics_of_collected_sample, collector_comment, transport_arrangement_responsibility, transport_arranged, escort_required, planned_patient_transport_comment, procedure_code, procedure_code_modifier, placer_supplemental_service_information, filler_supplemental_service_information, medically_necessary_duplicate_procedure_reason, result_handling, parent_universal_service_identifier, observation_group_id, parent_observation_group_id, alternate_placer_order_number, parent_order) FROM stdin;
    public               postgres    false    226   2w       �          0    17337    obx 
   TABLE DATA           �  COPY public.obx (id, unparsed_msg_id, set_id_obx, value_type, observation_identifier, observation_sub_id, observation_value, units, reference_range, interpretation_codes, probability, nature_of_abnormal_test, observation_result_status, effective_date_of_reference_range, user_defined_access_checks, date_time_of_the_observation, producers_id, responsible_observer, observation_method, equipment_instance_identifier, date_time_of_the_analysis, observation_site, observation_instance_identifier, mood_code, performing_organization_name, performing_organization_address, performing_organization_medical_director, patient_results_release_category, root_cause, local_process_control) FROM stdin;
    public               postgres    false    228   Px       �          0    17309    orc 
   TABLE DATA           I  COPY public.orc (id, unparsed_msg_id, order_control, placer_order_number, filler_order_number, placer_group_number, order_status, response_flag, quantity_timing, parent, date_time_of_transaction, entered_by, verified_by, ordering_provider, enterers_location, call_back_phone_number, order_effective_date_time, order_control_code_reason, entering_organization, entering_device, action_by, advanced_beneficiary_notice_code, ordering_facility_name, ordering_facility_address, ordering_facility_phone_number, ordering_provider_address, order_status_modifier, advanced_beneficiary_notice_override_reason, fillers_expected_availability_date_time, confidentiality_code, order_type, enterer_authorization_mode, parent_universal_service_identifier, advanced_beneficiary_notice_date, alternate_placer_order_number, order_workflow_profile) FROM stdin;
    public               postgres    false    224   6{       �          0    17352    pid 
   TABLE DATA           L  COPY public.pid (id, unparsed_msg_id, set_id, patient_id, patient_identifier_list, alternate_patient_id, patient_name, mothers_maiden_name, date_time_of_birth, administrative_sex, patient_alias, race, patient_address, county_code, phone_number_home, phone_number_business, primary_language, marital_status, religion, patient_account_number, ssn_number_patient, drivers_license_number_patient, mothers_identifier, ethnic_group, birth_place, multiple_birth_indicator, birth_order, citizenship, veterans_military_status, nationality, patient_death_date_and_time, patient_death_indicator, identity_unknown_indicator, identity_reliability_code, last_update_date_time, last_update_facility, taxonomic_classification_code, breed_code, strain, production_class_code, tribal_citizenship, patient_telecommunication_information, date_created) FROM stdin;
    public               postgres    false    230   �{       �          0    17295    pv1 
   TABLE DATA           X  COPY public.pv1 (id, unparsed_msg_id, set_id, patient_class, assigned_patient_location, admission_type, preadmit_number, prior_patient_location, attending_doctor, referring_doctor, consulting_doctor, hospital_service, temporary_location, preadmit_test_indicator, re_admission_indicator, admit_source, ambulatory_status, vip_indicator, admitting_doctor, patient_type, visit_number, financial_class, charge_price_indicator, courtesy_code, credit_rating, contract_code, contract_effective_date, contract_amount, contract_period, interest_code, transfer_to_bad_debt_code, transfer_to_bad_debt_date, bad_debt_agency_code, bad_debt_transfer_amount, bad_debt_recovery_amount, delete_account_indicator, delete_account_date, discharge_disposition, discharged_to_location, diet_type, servicing_facility, bed_status, account_status, pending_location, prior_temporary_location, admit_date_time, discharge_date_time, current_patient_balance, total_charges, total_adjustments, total_payments, alternate_visit_id, visit_indicator, other_healthcare_provider, service_episode_description, service_episode_identifier) FROM stdin;
    public               postgres    false    222   �|       �          0    17086    unparsed_hl7 
   TABLE DATA           A   COPY public.unparsed_hl7 (id, content, date_created) FROM stdin;
    public               postgres    false    218   �}       	           0    0 
   msh_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.msh_id_seq', 44, true);
          public               postgres    false    219            
           0    0 
   obr_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.obr_id_seq', 11, true);
          public               postgres    false    225                       0    0 
   obx_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.obx_id_seq', 60, true);
          public               postgres    false    227                       0    0 
   orc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.orc_id_seq', 11, true);
          public               postgres    false    223                       0    0 
   pid_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.pid_id_seq', 36, true);
          public               postgres    false    229                       0    0 
   pv1_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.pv1_id_seq', 11, true);
          public               postgres    false    221                       0    0    unparsed_hl7_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.unparsed_hl7_id_seq', 106, true);
          public               postgres    false    217            L           2606    17273    msh msh_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.msh
    ADD CONSTRAINT msh_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.msh DROP CONSTRAINT msh_pkey;
       public                 postgres    false    220            R           2606    17330    obr obr_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.obr
    ADD CONSTRAINT obr_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.obr DROP CONSTRAINT obr_pkey;
       public                 postgres    false    226            T           2606    17344    obx obx_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.obx
    ADD CONSTRAINT obx_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.obx DROP CONSTRAINT obx_pkey;
       public                 postgres    false    228            P           2606    17316    orc orc_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.orc
    ADD CONSTRAINT orc_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.orc DROP CONSTRAINT orc_pkey;
       public                 postgres    false    224            V           2606    17360    pid pid_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.pid
    ADD CONSTRAINT pid_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.pid DROP CONSTRAINT pid_pkey;
       public                 postgres    false    230            N           2606    17302    pv1 pv1_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.pv1
    ADD CONSTRAINT pv1_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.pv1 DROP CONSTRAINT pv1_pkey;
       public                 postgres    false    222            J           2606    17094    unparsed_hl7 unparsed_hl7_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.unparsed_hl7
    ADD CONSTRAINT unparsed_hl7_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.unparsed_hl7 DROP CONSTRAINT unparsed_hl7_pkey;
       public                 postgres    false    218            W           2606    17274    msh msh_unparsed_msg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.msh
    ADD CONSTRAINT msh_unparsed_msg_id_fkey FOREIGN KEY (unparsed_msg_id) REFERENCES public.unparsed_hl7(id);
 F   ALTER TABLE ONLY public.msh DROP CONSTRAINT msh_unparsed_msg_id_fkey;
       public               postgres    false    220    4682    218            Z           2606    17331    obr obr_unparsed_msg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.obr
    ADD CONSTRAINT obr_unparsed_msg_id_fkey FOREIGN KEY (unparsed_msg_id) REFERENCES public.unparsed_hl7(id);
 F   ALTER TABLE ONLY public.obr DROP CONSTRAINT obr_unparsed_msg_id_fkey;
       public               postgres    false    4682    226    218            [           2606    17345    obx obx_unparsed_msg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.obx
    ADD CONSTRAINT obx_unparsed_msg_id_fkey FOREIGN KEY (unparsed_msg_id) REFERENCES public.unparsed_hl7(id);
 F   ALTER TABLE ONLY public.obx DROP CONSTRAINT obx_unparsed_msg_id_fkey;
       public               postgres    false    218    228    4682            Y           2606    17317    orc orc_unparsed_msg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orc
    ADD CONSTRAINT orc_unparsed_msg_id_fkey FOREIGN KEY (unparsed_msg_id) REFERENCES public.unparsed_hl7(id);
 F   ALTER TABLE ONLY public.orc DROP CONSTRAINT orc_unparsed_msg_id_fkey;
       public               postgres    false    4682    218    224            \           2606    17361    pid pid_unparsed_msg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pid
    ADD CONSTRAINT pid_unparsed_msg_id_fkey FOREIGN KEY (unparsed_msg_id) REFERENCES public.unparsed_hl7(id);
 F   ALTER TABLE ONLY public.pid DROP CONSTRAINT pid_unparsed_msg_id_fkey;
       public               postgres    false    230    218    4682            X           2606    17303    pv1 pv1_unparsed_msg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pv1
    ADD CONSTRAINT pv1_unparsed_msg_id_fkey FOREIGN KEY (unparsed_msg_id) REFERENCES public.unparsed_hl7(id);
 F   ALTER TABLE ONLY public.pv1 DROP CONSTRAINT pv1_unparsed_msg_id_fkey;
       public               postgres    false    222    4682    218            �     x�ՒKK�P�ד_��фy$��j��ua��n$��5 M1� >~���ݸ\e���{/�|���7��(�ȫMYo֣����,W�U������H�DhC�ʉ9E�^��۳��I��H�ܐR�J�X���FN#��8$�]�bmH%�3�@�C�y�_f�1d˲n���K8��;���w���]Dy>��fY�K��$j��+���nx<m�P�m�/xr��l�I�/x�=�3u�<<��/�cB�8�'@鬽Y �E��ߡ�E:-��8�OG���      �     x���AK�0�����-3��Is[v�Av��z\�"E���z*��6�X�tx����&�,��!�e		dy�����^�H�������g�Ku�E��Ob`�]��,�gM�qH=R`���Ac�	@�2��lG�Qy2^c�˜eg������-P䘃1��zɔѩ���ç�8���+���Z��K�*>�B�228�"�T#@"�7�����;���^!HQ�]u�;�]K�嫂o����ژk��Dț���Ŧy���}E�;ü�t      �   �  x��U]o�0}���g	�� MS[�n�C(m����B�&1�N::����NӘ��"�R�DI��q�=ױ��:ݚS�^վy�o�a�Q��r	#�S�x�2�JH]o�덿�|�}�g�v�M�m�!8n���<g�þ����ӂ�V3h�c�a�r��d,������Ah�1*�ECa�ɨi��v۱݃�B�3i�Ѐ��X�6`�g�1`;���8�4�9�$,ͶRz��CA_��a�l�P~"�mC��L�q����2����S�ekL~*7�y��1�D&�\No{����_F�ilMy�{�Ƒ�����&u���r��j����ѻa���l�k��y΍8J���A(DѬ�*Y���($9�t���[5FY��Q��8�-J9MQ"pi^��S!dN_�^q)+�K2�My�B�60Ǉ�y��A���	[��'X�h"/$��AbaY���d0	G�H���>�PXrg&7f��u�1���8g9	�[�&�����1��6��T�
������C�T�\�2���3^��n���@$�ڧZ�z���I���X����]�E��#U�E�H��n�H��z�B����/d��7�lg��S�6��\�0�xǓ��-7���Ix�q�˳R��ƹ�G�����J:Շ��]�֕������S��Wn�I-Ga�ݷ����`�]�_��A�����u����w��4�u�6}i���M?[GGG? &���      �   �   x���1�0Eg��+i�8I�U!l4R�J�I��I;������o[��������y~I��p�p�����J�FV�$$FM�zV��9��Gsy3�i�mQ�D'R^k�E�!�����9���,�V^S�r�����	!^a�Jq      �     x���MK�0�s�+J��ef�|Lo�VA�]� {)^\(�� ��ݦw�����L�CB�X�b�
 F`q�K�+ץw�k׍�5d�PF:(��p�@<lVKE���P�,ߎ�k�9�;�0C���x�s�l��IaxҐ�Z?�y��Y��k���u�a� ȿ!>�P�q�~rM�����}�wi�������os��w�0������KR�DPFq!,\�XrN������Y~Y�+8 ���bz�s��D)�s���&����*��      �   �   x��PM��0='�"xN�$&M���F�(�E
�� ������t/ۋ�f��0o�BJ#�<���gO�q)�fy��қ@�55��3.Ԁ��1�P:�Jp ݼ�f{���
��b��}�[�B�$���d���f�@���^Ԙ���[�ә�����s��7�FR���O�I�wׯ�#���cSFR�>s�9�ń�ڮk����|�k�.U�[Ǳ�4(������/9����      �   [  x��Zko����+lw���I�m��(~$�زGv^�EfludɑdO� ��{)ّ�yջ鴻k�E�:��<��L���`���^�|�-�`�q:{@m�,� ʊ����1T���X��jpAU��nb,�п`>&B��S�cjZ����^����?�ӻi�O�HPU{��OF�� ��inϢ=�s��K�w�Bǲ0%.�>SWqB4ԧ:�7n��NVq46b0=G��x��A$�J� �.�/	pw�B�`�y��C�Q�G�(T���H7L�d�<Ϲҏ���f�����u���SK����;��q�f�%�2f��߈��'�ٿc>mg�l�i��Kcn�5��&l|3�t�m�)'>��%5�ni�	�c�,�&ج2-_z�W6�����ҵX�`���k�}�}w���>c�+��}͞\��*15�>_�Y�&�_�ݞ��y���f�Q��(/V�4]qT�(Ie� �~	�(MPz��9Gq��g(��:
��yV��,��f3��(G�bh��$��{|(\e�XA��(��E��n��z��Ø�|�}�$E|Myr	|�a��s��h��ܚ��t���d��� ��; 
O���1�}8�TE��Q���%�F��/YY�
IҚ�&
�,�q��-_�f<�^��PG�lg��>Y�	��F�yQ,��q(���8W���e���7�UR4.��Ӡ�9ϺY����|��d9�d=z�w�Ň ��o�����z8o��~�ZD�:]��ӠCn����M�|=�����y���?����l[�km�.���.���.ޚ�w���?=z>ϻ��ow�s�joT� ��P0Q��0i��Qզ����6�4u̓i����rw�B��G�m�cFޡ�P�h���ZS���&�=!�	�Ӳ��j*`�X��m�wu����w�a�eRS�R��P�	�? �PM�&��	o�Vﱱ�F�65�	s	�[f�X�O?�u>���*��֌����xz���xz��/O��$T���T�j���i-�=!���C�0���f�k�\��mw�z  �S���+��@���{���z�˞�vb�{�E���Ǝ���^���T:�R��lƗ�ֳ&��=��S�Y'�.�(<�Ɠ�pP煎i"���ua�ĨҘ�̪B�.kC��ZjK��B�񨬅!�aM�C�nrG��Ȇ��?���[��7�-SW<'ݑЗ A2Ayēy��7:����ȟO2��A7,�1i9ɜ\���]��������x	�` �DL�:����cO��ě�3���Z��m��&���C't�Ѝ:x���4Z��C���2�u~&*luX/]s� ��Ͻ�`�;^�;P��zV6:� x����p6�wP�c�;�'�ʽ��<��6�?��ut�y���E�,a=��ޯ	��um�U)1!�Y5�N����FmI�q��N���đ;�2,l��ې�N �3�����[�n��y}Ԅ��^ej|��uW�X��'͆Qu,��#XuG?�3!�+�*��n�X4�Xh��X�?Q���8��6��w�: ~�WE�����V<0��.*�?A�Plz�&I��r8۟�B3�ȓx�@��[�1�a�&`�<W�����>1eb������S֩�C`mU�WX��aF��6�Sv"O[\lB�V �K`r�%���-���[h�6��X{ŏv�-	2��㨄�+���J�%T4����]u����H��얝���4��˞�TK���V�C�z��.)��QQ膮+ZU [!��銮]��E�f8v���_˼'�,����s��!���,�@K�3A-E3�Ѷ8�
�V����X��[���ǼȥZ�R�腎�CUzG�I�j�Pّq�:n���&�7n���R�n�<����T��H!Tyt���п����Ab~��z�J.!~�h�24�C	�@s��%����G-Q
u�o�h?8��ѻZ���Zi�P��|LU,�J$��G�7}�����'��1��3E_����Fq`��4Lղ��w0�K����|;:~\8~\�.�s�4��Rͤ|?d��۶�˜;~�=~�=J�QR_LR5G��qJEu�?Л�'�~��[4S��_�߫�^��7����     