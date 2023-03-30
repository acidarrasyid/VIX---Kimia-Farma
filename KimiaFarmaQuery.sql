PGDMP                         {         
   KimiaFarma    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    20647 
   KimiaFarma    DATABASE     l   CREATE DATABASE "KimiaFarma" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "KimiaFarma";
                postgres    false            �            1259    20727    barang    TABLE       CREATE TABLE public.barang (
    kode_barang character varying,
    sektor character varying,
    nama_barang character varying,
    tipe character varying,
    nama_tipe character varying,
    kode_lini integer,
    lini character varying,
    kemasan character varying
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    20743 	   barang_ds    TABLE     �   CREATE TABLE public.barang_ds (
    kode_barang character varying,
    nama_barang character varying,
    kemasan character varying,
    harga integer,
    nama_tipe character varying,
    kode_brand integer,
    brand character varying
);
    DROP TABLE public.barang_ds;
       public         heap    postgres    false            �            1259    20763    base_penjualan    TABLE       CREATE TABLE public.base_penjualan (
    id_penjualan text,
    id_invoice character varying,
    tanggal date,
    id_customer character varying,
    id_barang character varying,
    jumlah_barang integer,
    total_harga integer,
    unit character varying,
    harga integer,
    mata_uang character varying,
    nama_barang character varying,
    kode_brand integer,
    brand character varying,
    nama character varying,
    cabang_sales character varying,
    id_distributor character varying,
    group_ character varying
);
 "   DROP TABLE public.base_penjualan;
       public         heap    postgres    false            �            1259    20722 	   pelanggan    TABLE       CREATE TABLE public.pelanggan (
    id_customer character varying,
    level_ character varying,
    nama character varying,
    id_cabang_sales character varying,
    cabang_sales character varying,
    id_group character varying,
    group_ character varying
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            �            1259    20737    pelanggan_ds    TABLE       CREATE TABLE public.pelanggan_ds (
    id_customer character varying,
    level_ character varying,
    nama character varying,
    id_cabang_sales character varying,
    cabang_sales character varying,
    id_distributor character varying,
    group_ character varying
);
     DROP TABLE public.pelanggan_ds;
       public         heap    postgres    false            �            1259    20717 	   penjualan    TABLE     �  CREATE TABLE public.penjualan (
    id_distributor character varying,
    id_cabang character varying,
    id_invoice character varying,
    tanggal date,
    id_customer character varying,
    id_barang character varying,
    jumlah_barang integer,
    unit character varying,
    harga integer,
    mata_uang character varying,
    brand_id character varying,
    lini character varying
);
    DROP TABLE public.penjualan;
       public         heap    postgres    false            �            1259    20732    penjualan_ds    TABLE       CREATE TABLE public.penjualan_ds (
    id_invoice character varying,
    tanggal date,
    id_customer character varying,
    id_barang character varying,
    jumlah_barang integer,
    unit character varying,
    harga integer,
    mata_uang character varying
);
     DROP TABLE public.penjualan_ds;
       public         heap    postgres    false            �            1259    20758    penjualan_gabungan    TABLE     %  CREATE TABLE public.penjualan_gabungan (
    id_penjualan text,
    id_invoice character varying,
    tanggal date,
    id_customer character varying,
    id_barang character varying,
    jumlah_barang integer,
    unit character varying,
    harga integer,
    mata_uang character varying
);
 &   DROP TABLE public.penjualan_gabungan;
       public         heap    postgres    false            �            1259    20768    penjualan_harian    TABLE     9  CREATE TABLE public.penjualan_harian (
    id_invoice character varying,
    tanggal date,
    id_customer character varying,
    nama character varying,
    cabang_sales character varying,
    id_distributor character varying,
    group_ character varying,
    total_barang bigint,
    total_pembelian bigint
);
 $   DROP TABLE public.penjualan_harian;
       public         heap    postgres    false                      0    20727    barang 
   TABLE DATA           m   COPY public.barang (kode_barang, sektor, nama_barang, tipe, nama_tipe, kode_lini, lini, kemasan) FROM stdin;
    public          postgres    false    211   ;                 0    20743 	   barang_ds 
   TABLE DATA           k   COPY public.barang_ds (kode_barang, nama_barang, kemasan, harga, nama_tipe, kode_brand, brand) FROM stdin;
    public          postgres    false    214   l                 0    20763    base_penjualan 
   TABLE DATA           �   COPY public.base_penjualan (id_penjualan, id_invoice, tanggal, id_customer, id_barang, jumlah_barang, total_harga, unit, harga, mata_uang, nama_barang, kode_brand, brand, nama, cabang_sales, id_distributor, group_) FROM stdin;
    public          postgres    false    216   �                  0    20722 	   pelanggan 
   TABLE DATA           o   COPY public.pelanggan (id_customer, level_, nama, id_cabang_sales, cabang_sales, id_group, group_) FROM stdin;
    public          postgres    false    210   %A       
          0    20737    pelanggan_ds 
   TABLE DATA           x   COPY public.pelanggan_ds (id_customer, level_, nama, id_cabang_sales, cabang_sales, id_distributor, group_) FROM stdin;
    public          postgres    false    213   G                 0    20717 	   penjualan 
   TABLE DATA           �   COPY public.penjualan (id_distributor, id_cabang, id_invoice, tanggal, id_customer, id_barang, jumlah_barang, unit, harga, mata_uang, brand_id, lini) FROM stdin;
    public          postgres    false    209   �L       	          0    20732    penjualan_ds 
   TABLE DATA           z   COPY public.penjualan_ds (id_invoice, tanggal, id_customer, id_barang, jumlah_barang, unit, harga, mata_uang) FROM stdin;
    public          postgres    false    212   �\                 0    20758    penjualan_gabungan 
   TABLE DATA           �   COPY public.penjualan_gabungan (id_penjualan, id_invoice, tanggal, id_customer, id_barang, jumlah_barang, unit, harga, mata_uang) FROM stdin;
    public          postgres    false    215   X`                 0    20768    penjualan_harian 
   TABLE DATA           �   COPY public.penjualan_harian (id_invoice, tanggal, id_customer, nama, cabang_sales, id_distributor, group_, total_barang, total_pembelian) FROM stdin;
    public          postgres    false    217   �w          !  x�u�=O�0��˯�Ĉ����⺩�%g�n�V,H]�	��Ϲ�J�d�����y��h�K���`�w.��6��?������C���ޠ�s�V�o@~���2I64��*aM6���Mc	�ɵHW�$�w��~*5tL���4`S�R�WL�E��fZu���v}�˯��	��ã��fw-�����2'�.ؐ:ϩ6���LB��1��7II����b��V.�R��,�+�r�9apTݕ4��|���\Ox/�7f\��^��<x��V�g������X�Ӧ�         +  x�m��n� �����c�'�qM���6�(�z��K�C�J}���i��	fv���-�\ ��"{0�m�#L��������{}����ضa����*���}k�6����j �Lr��tH�>�Q����`	�*Q	=zՍ����Ǎ%֡��J��n@e2W�a��K��z�m�g3�"95����-�4T�>�:�RA��Uv���or�שK��
"P���*���x��TS����5�LuN3� T��bI���4�#᝚��"M���Kr�=��i�?�����1˲/8�[            x��]K���>��
��f�����ǲZӂ�1��^���;�������Ȉnv&��Y�՘��~|���)�����1nz?'4��1�4ӛ�|u�F���n
������w_'
����������O�?�����ӫ���rz��������/�����;}yx�������>��p�>�뗟��_��<�������o߽�b�81�������eBk�L���������NQ5������:\*t�t>��0��w &��ՋBr�����������Շӧ/?>�r�K��?|�������a:��O�5����It���>���x�7�|���|M�O�߿~�o�>�~���=b�{�ɚ		�I�z��"2!�a.W�׻�����_6����;�	f�^?~}|��0����o�?0=�yB@�{��ϻ����`�uЇ��DQ&��1Xn�S�:8�W��7;�b�^J�J���aR:�"L�S�
���33|�_O�}�y�����3)�w���)~:+)PH���;�StQ��M�}�}}|����Ϗ�u�ʯ�����^}�q�÷�}��?�e�>��Ͽ�����A_�9������v�a�����+����	�2W?o�~����g{��7�����WO!�E��#�ޮ��.������S�����b~����j�z���]%��/�0~X��Ӊ�y��_&|�mP�m��y��:Ekt):�*X谕���?3��`��1�����wN��o���_����2�N��x���IL� &η��v�j}4��B�)�톯���AL�Đ��*v�]� ˯�0�~�����$��|�4�$�!f���Ɛb�k�$�f����^��w�|�R�\���(����	�T�S\[|�-�酎/�ߟ^��N_���ן��-��[I�f9h���r\�vY/���(w�����Uj�c�/�\�1��V2X����6cL�C�cCjR���#���#�=����5�n���A��4���)�w�=���X�n���3E��]���ǧo��� � h0�J �NLƍ�|�C���n2�43����c�=�d�h��>����|l]P5)d&֭f�>�*N�����0m̨>�M�K	��c�1�
�`v� �_�S�̬��P:!|l�W�fh#�N�����N�k��o����'Oe�z*k���S�-���T	�`��/�>Uv�(:��S�r��ظ%���ث�~�5i��M��za�|��0P�#�p����C��h�`C�	���н8����ï��OIA&,nN�u�:sن�q��>���C�#��aүJ����J���t���}z�^���"��6{�Y�O������|386�F�%��F]�f�h����C긇��5��mٌ�:��]��Ƿ��둑�!#)ˈ�Θw��KE����-�FV����`��2��")Q���_���O1&�>�|hg�ih�Fx�!*�-ɋ'�lYr;�	�k]��\��e��6Vl��%�XF`%����ҧ(S$@�pX��5�l%ә��%�*%�����{AJ��n�P��9�� E�@9��1���e�a���Lt�<})>�g�8�ss���Yv���#	� �p+�����ev96U�{s9�a�tָ!!l���;>>'������9ᵱ��hH����b��d1�� B�V�ߕ�a���\�8���#j3�:���,NY��-�U�|D���]��U��bU�Aek�|m������;��~��ɌH��Tn6�|�Q>t��E�0X�)e��"o��E�7K�2-ޫ�݋�)��{�	�9��4\x�c!u`��m��6�o3��{$o�~�v|<�_����94P= ���dk�&Wt����ۅ��>�c�'|3��q����߾:�����������_��/*�b�/����=��GZU�c㞼�咝�ޯ�~1H��c�
B�R��Kh.U�E���q� ���`
�I62�}��]+�}�>��v/QT�-����dif�B}2k�\FW��k�Q(�S�۫�+�a<*m�q"�_�l�­`�h|�K��,�9Ȯn�����Xի
[ڴZ�ܡ�g��[?�z ���T:��1^��@2H�#|l������5^�~ִ>n���-n�V�^��
=��q��pv�1�c���(kdU鑏-���z�Y;�>;4L��,�w"c�Q���W\��;T=̴Xǉ�$���[J}���^��x�����5:%%P��8��ܧrq�v��{�����N�x��n�;��m��55�}-�h���r{'����ɀ&��u��� M�NT�2�[�!Sz��%,>qk�I�֧��?y�&'�s;��M��6I;�v\v����h6%.��S��wN4���k�e�}A��VE�d]��k��p.�52U�^�s�E�,\�\!`�\A���~xH���J�Do	|-�����ϩ!Q�D˶'ڰ�����W�|lP�*�AV>�8(�r�)?e�V��ցS�'L.^F=N��S���bc�Ram��ZΓ�2�R.�Xi�3�K����`e%k���`������;F�HqSf.5�M)��#�fi��`��q-b�P'�B������ҤwƼ��Ԑ��b���OHM3��R _�Er7�-�k�>�-EB��$A�����'n�Ǣ@,�;b;߱�ӧ��3j���0�6��J�0yFt|�Dy�k���Js[�D����]PC�+L��@ㆲ�j�A��i�J���}jwq�F
���rԠ��
�i�UY}�x�~�
pc��MB�Q��x_����qm�mmЫ�Jl�&UH�.�.y}�a��R4�`bQSe���~�i*S�ۖ�7vMC�K��X�Vզ�P��,\0�uG��\F��������n�&���`Q{͝��lM�A�Yʗ���K��v�Q8G�G�F��9S:�7����ӳ� ��C@j�0�9���Gh���7[v�6�tI�]P��-��~�L�{G�]{�������j���sb�sFh��ǉ*��w	0De�ʒZ�BeM933D2��Yf���u����}��gˬ�����z���b���C����:Y��d)y�C�kJ�����TR�)�V�Jȱ^ G7�%�c��>�Ȩq�����"!#*3�[�Q�~WBB՚1w�_�W��!�!���$�n�8�m.�ļ���>I͍�%=�Z��ުw7��%����<h��7 ,����ϕ���lv�����Y:L��EĎ����ffν@t+�3Gz�G�	
̤��V_:�Ǭ
 �ظ!2ѐIؚ��$�����s�\s�� ��U���1{���
4v�� ����v�N�"1i���A�d���r*�rj!!�*K�-P�����nkH�&P��nܨ=��;���`Əs�'���lMKˤAU��T^P7��I�ш���۠j�]���oC(�%c ELc�i���������/t\W/&��iG�.c�P�>^i]�XM�(�^�� �=�vcHZ�R�qP���
�u��R���4ԎC��0y�L�&��}��-NM�NI���h�`����S����3$�-���V6��J���S�fS˕�J
eDJD�c������D�[���WC;t�O˵^�jOZ���m���*L)��^Щ��U�^+NKJ�C��y7�&��qߡ�� �5�I�|l���+����A�(?��R���n?��m����.蓛a�� ���*�b]4�SH����n\NB�@���j��E1��r��2�?n��ŻѨ� P�iV ��sQ�ݝy�5���o$y���f%~ �[7���6�+�*-~��`GS�bX��Ơ����$��̓�IC���߼��v����	z�Uh��Y_W��#e�x@���+�g�p�����A�X��S�ސ8MSB�|��L�vӡk=�$��M�F�K(P]���U���^��Ԑ� U�F���� x����Z��i�_jH0a�e`*�T2X��mvL*w;	#o����c�\�<�|�h䶏R�����5t�913��[\�<;R�i    \�;�\WF4�q��[F�2��z���@�P5�;�9z��b�ȼ"���З[QKlKe��]���C�~j�+g��91��=	H
�R�|
�c��ߴ?kMp�^s���w��v�K��62�\�#��
Q�����i���b;��˝f�kMM��}�[�+�u�`��P�v��hG*�:�QZ�2!��k'\zD�u3��[�z>��EF�If�dp�EUe�e7��!��2\��Lh���oU�;�&�Ɠz�7� P��8��h$��V�w$6�*x�A�Z��)��2z��Q�D2�mCr��u�,���]ȶE��_��x5���3B����ٯ�F��h��8� l�a��.�u)�w�ǖX��]��P��.xW�k@�3e�$ILV�/h o�Q����j�^�.m	F�Iǎ�/�mV��0ږ3�^����d�ac��*M=ˊi>�[��P������=L�Q��4�)C#:j��hcv�v'��N��M�+��V[�EV�;$�0^� ˄�L��.�i)����p��S�V.>�⭜�΁����b��� l�b`!>��W�|������s���G�ȊI�Xde!�r�Ml�p�ڡ�4����=�IY�e�#��e��:��͐q�lo�Y��t���s���<ڧM黦�t�iE�ޜZ��*��/|ƽJ�Ҳ��Jjh<� NY١�[� ;��@)���(���̏����w#��]��)�T;zd��R]���])��0~�f�CǍ���Z��a�c�+�7��d���*g��-�U�F�SzÁ������`*V�z;Z���t^;������p8�B��z��4��L@UG!�T�u���ŵ�jw��H�=�@��d�,�2�F��"�J�cB��9��sn����B�Lv|�p�B���<(F��f=�	t�y80��9�m��^����wX�!������7r��*�f� 7��T��K�JoX|�:���1���q�*�i���t���}�~ŭbA18+}e�(����rcD��
5���CaOoj7[ʔx��ދKq�� ���9��Dn���){6-օ�F���"
n���fJ�#m$X�y��rn�;z;�KQB^�c%#2v��aJ�FqQ��2�&ڔ�:`W3liRzQF-�$���)@q E-)q��Ч�P:z�1��E��ͦ9��t��(�B
TM3�*��g{���Ћ �{����8Y���,/^��x��R]mP���}Z�A�-E���8� Х�\(ե�E��v� ��$��#&�M�>W��`ע]�~����O�No�x��W�(���Qn�}VhU,ZՋ�όǒ|���j�@[-�*��g��װ| �9z�g���Z�.�^�Pd�C,��,���1�\Q#���.�%��Wt�~ks�ڈ1	P��E��~�y�X��i��
j�
Cuܰ�Y�k�j�h���i.*�D٘1aS��2���$4$��T1F�5����NU�5��Ǌ,��:��f�1XIhu���"�zgw�a�J��m�)��JA���<9DU��c%�(��k��E���(�+�#�E�x9eF�S S�)�c����V�y4Ċ�Wv�����%�u�J-i.+�`����s̈�u��%O^�;Y�
p�<��f�IwP��c+��(PI�0���ըA3�<Y�޽Q]уQ���5��9qN.&;$�7Nc���}+�[Qt�+��h�:�s�d֘Vl����%U_޳���P-M�r�ZE��($<�K����T�^c�(V���0pl���iT3'����x��T�$�O�2�5��9�d�
���h����E���N/l���U��Ao�?�1�ƅ���@5l5�Mwh��d�VM�Ck��nM��ENs��Q�Z99�r�=o!������ږȦ�Uk� �=�$^�(�������U>V���Mc�V��S}w�^�1�X<��.@t7��+r͟��l��Rt��Q���ȸ8"�7I#!�X?^�����[�cV���t�7��+�y
E��ꤕAvov'U;�w���z#Ts�NߘX�Q=�fJ�$��r�?b@�n^����j��B��\�/D����F#��m�Y
/��_=(P��D@ԸB��7�[
��T +9����_����b�xDG 8���jV"�I\'w��hFZ�|�b�|,����
u\:�/_j�|�\���@ml+>Ӱ| �ޯ��5KV���^VJ�JR���Y���:�^u��E��Al��]�h|0�9DU���QML��X4k�MqU��N�TyAE�����{`u��V#T�jR O^����LD��TMRR^`���r��I	]�2�5h�v/�l�����1za�����P3ir�7��G �/��������6����R��
�Y�w��Ig�5� �3Be����EN�����8�k�M�І���v~H��ip'^���a�4+�V+N�)=Le�ʈd�������-*y�	��Ł�d̑��<T�c����CSz��+�����ZNx%�����}KVþ�2���D���=��l�H��������p��B���������Xd]!d�A)d�J4�
�(^��-�����BT)d@!�2�d0ۻ���"���J���`��5��jW+8�x�(�fJ�4�2
�Qۡ�lTa��rm*]7��ԽԆB�{�\�	z -�.^��F�!]}�A����P����� �z��CW�ɳ ����b��Σ�i��׼i$o�o�A^�]c�m`@��aT�4+-�	�a���[]kT�bM��K�!���ŠT �T����aH+�r˲�3��9>��?�zc1�>/��(�J�1ݖ`5z�H��71��6X0�3���-Cu�D�GȆ��p��Q�%RY�!�E��"��W��2��
K�$�Ln%\H�:�a����N� Ӯ�q�s@��A�l"(���k�8�'���uEG.+Z&��I`>6nP$سsqy�fI�%R���b}���t��6��j��L~��#Yf�� �y�ТDpQ�2��.�����xo���f�	1�ſxd�.�#���p&�*6��X�z�
�A��Xxa��Sm�.�:�9���+��B|N��e���	�5?8�m���Gd�� �o�Xqoxy%VTw'��#��9@� #���uf�6��@+�D�5�^����:MP݇|�d�t��>L�,H�!3��`d��L!G�6�3<k}M
J?�D�F�*���j��&�=E�Z��3�;����u�R�BD�1'�܌�6��J����F�(4/d?�U=Ɔ�u�@>O?;�cjШ7� 4*�N�X����'x��	|����F`�g��y��wh�����F��lD��3o����X)*�|�̡�K�� ��Ass��\;Z�N7��5'�)�kY�P�nnp);/��OjOE��^�GhX���)�z�V����6��6(8�a��ëId�5R�ѻf�p5��4��O�٧�u~L��S�µ��n[���fQ� ��io�r�ǘ�֑.zNW5rp��Fj�[�[�S��f[�A�v�kP�F�ׯ`d�9X�ʤ��V�p5�1�����h�A�?h�1�������#12��U3­�$���%1���q)��y��}��Qz���z�|lP����?-��|��/)�a�4p 4qwZ���(,x���[�R�Ή�Ԣ�h�S�ղX+ӈ�+��$�Z�,��P��]\�*8��*@Z�G�$ �0*��9�P��<�6>��=�i�Ei!�[Q�߱Xd/ҥAD:M������c�׋�Y�	����ҵ����R�� m�8{\�j�A�D11�%�v�v.E��GqE��ȱ�*���������mN�s��t���c������
`RZ�����8��p�0W B���P/����e��4�`Y���pa3��Z ���,]�b�0Ԃ	NB�j4�`�^UF�v(�T��\7T���U9��ʹ{���+XA0�5��5HT���y�zޡ�ʯ�V����-����m��9 d   >휹XK�rw�0���PaM$J����P�	�^�sU"<���t�F^A�z�1��j�ꈶ�"�:�Ljb�㠱Z�l��\���؞0$���o����qa�/         �  x����j�H���S�	���uok)���;��g1!���c2�b�~�NH�OA�>���R�Q��?n7��Uߝ~���l�����7����|=���������_ݻ2v���w�G��^>�v��wό��y���_����ϭ�\\]��_��=U���q��u����[���}��P���ߜ����Ϻ�e��y{�z��|����|2ovO�n�l��,�g���[o/������o/����q���^�gyot��ǥ��C��aL�	�ctӨØ���0&8=g7��竳��ݣ���������� '86�)�xjX�pnh����AZ:H����a=��00��S���p\H�{�� �N�U� ���U6��Au���l�]e��*W٠���U6���Qw����l]e��*W٨��F�U6���1᪒pUQ]UW�UEqU�]U�*	W�U%�*S\e��Lq�ɮ���,�*S]e��Lt�)����j�U5᪪��&\UWU�UUqU�]U��\u�+�r�U���eWy�U�p����BqU��
�U!�*����BuU(�
�U��
�1c�p�*�*L�$,��W�� ���R\�(�,Ȅ�0!� '�UX�	��9X�	��YS�US�U��Y��*�� +�c
d�W�F9�@Vl�4Ȋ	�Y{�U2CsU�rL��d��tW�AwUńL����UX�	���9����(�,H�U2r]U� 00s0�00�0F�Uu�]U1!�0�L��t́,������	�YTWaAf`���rL��d�°��,�*L�$,��W�� ��i����p&ddU]����阃�嘀�ɘ�Q��	WaBfa$\�� ��銫����	�骫� 30DWa9&``2faD�U�p&dd��L��t́�U�r̂L�
2/� � 0��)X�	��Y������0TWaA�*,�HL��IqU�� �� 1!� ��1	2Ct���0�1	�{�U���i�	���X��ʱ �阎)����F9fA�rL�<H�|L�ĂL�h�>�``9&``2fa��o Ct�cA�*,�HL��Qp�7�1	�12/� � 304W9�c&cFI��$\�	�������  1s ��F9fA&\�	����I�X�	���,�L�,K�
o Cud��L��t́�������	����I�X����00�0<�*�u����L����UX�	���9����Q�Y�	WaB�A��c$dF��1�1�1#��[��P]������
w+\٭py����حpu��
w+\٭py����حpu�����V��[��n�˻�ح��nE����V��[�nEȻ�ح��nE���حe�"�݊Pv+Bޭ��nE$v+Bݭe�"�݊Pv+Bޭ��nE$v+Bݭ��nE(�!�V��[�nEH��_����~      
   �  x����J$WE�˧�	��9���.��шv.�)2b�L�LƋ�}�	Ip��� E��T/X���w�Z�Mۜ~��<��j���v����t3m������ߛ�fz�����������]M���3}�}�?��}���?�����������������r~��~�_������A^u~{v����Ҝ��O/������/��~�N��ۃ���������g��Y߿���z�=��~���hN��?����ޚ��������$6��x8�QΉ�a�0���F96&�Q������������M�q������ʱ1�r`,�c�zZL�r^\���c�",���xK+�f�Ci�w��PZ9.�J+���P������ ��� ����J�T:d��n��A+�[�t�J��V*�R鐕Jw��J�Tzl��c+�Z���J�V*=�R��R顕Jϭ4p+�J����4 +�J����4P+�J�X�0+`�B�T��
�R�V*�J�Y� +Uj�ʭT��*�R�V��J�Y�+Uj�ʭ�JA��J���JA��J���J����Jɬ��JI���Jɭ��JI���J	������V�p+i�59h��?%�BM����B�5r+i����J~�|-|�9h�59��J#���_��R�𻎰j�u��p+Յ�k!�Z|]�Uï����JUï�Y�j�]砥���a+�[�j�59h��?%�BM���p+Յ�k"�V�~m�=�R��kp��kq���AK�ɡ�V�=�R���r�V��k ��k!��z��P���Pï�p�V���p`V���AK�ɡp+n%�&������@���BX��z���[Iï��R+i�58h�8h�]砥��P��*���_����_�&_a +-�^�_��_aP+i�u80+i�]砥���Jɭ��������4�5�ZXi�����4������Pï�aᮯ�A��:-�&���^��9P+i��?%�BM��Xi��z���5������PïÁYI��*����q�[)��!4�zBï�)���u����A��V���k"�V
�6B��k"��kpX���p���AK�ɡ�V
���s�V
������@���B�n�X�B-�6B�6B��k"���p@V
�����n%��ks��kr��kJ~��|-���B�5r+i���E_��_���]_���uZzM�[I�����4�ڟ��_�&_aVZ�B-�6B�6B��k"���p`V���AK��!����Aï�Aï�)i�5j���B�5r+i���E_��_���]_���uZzMɭ�W|}�J~�O�l;�v��t�!��C�m���A��m;�v��|�!��C�m���A��m;�v��|�!��C�m�$�ɶl;$�vH��|�!�C�m�$�ɶl;$�vH��|�!�C�m�d�	��n;$�vH��t�!��C�m�d�	��n;$�v�������LեR         �  x��]ˮd�\�|�W�9�(Q��x�p?bx����#=-5Y�KQw���C��"���~�}��C��������!~O���/_�S���)���o���r����ϟ����������~�����_�X!�X����c�Rct���Ͽ|���׏S��TdVSQL�4�n}��Pz[����??���Ï��0��rVc$��4�o1=���X����/�̏�;F%1��!��������O����o��e����tU�,�����Z�j��Z����V�N`����'��'r�~X������S�������RQSUL�i����۹6t{���}�a����X��R��0Tz���<�����?~�B�"��t���xO���x�����I ��1��8>)<��͠X���ix>1�xr@�qxb�F�B�����Պ�b>f��2[�TЧ�A}c+���R�����YF����(��6�9@���~��F2�=���=��0� ��>�k��d�������� �́�42j���;q??�ey��[a������[܃�B+V �k Mܣ����1b�%��`�t�#�$�F#�{g��A�����<�/��c�����-�ǭ�����[ܷ�����➲�}܎шc��G�!*V(5�O6��}12k�@rȃ�qS���~~���
Y1�t?/���݌0�⾷�K2"I��~��ց$��3��U�<��~�쇷��RIA߽�r5bH瘟'Z������XY� �!x0�H7!d5���`��uI1_��}B+�&�|��Cl]�I1?)��ܭ�1'����lD2)��wn9N�`D1)��u����IL�������$(v+�Jq�5�_��@*��n�h�9)�a�Id%Ԥ��e+�fE}�~�s?�V���U:�-��s?CV͑���ΝGX�1+��5�Ǫ��c��6�P��8Vɑ��\����@���$�V �����(�����
��>��p(%#��>�tr�� ��n�CȖ��mr��I���[9�5#�%mp �rb1�
�y�o�=��jU�����h��nER��h���Uq��~_Ў�S�A����P�bX�ןP�h4�r�6N�=�h(]c~9Aluq����	�z���Y�R�(�F� �?�8�XUc)��˕�[�c����Eq�6N�6���YUYG�Q����-�Z�XNh˩
����C]��r*����h���S��~m��Z��x9�Q�
�v@q�y�W�ZN%+�n�
�Aв�j�w�-~S5�w'u#��˦zc��A��'�-�
���/|�Y$tپ��l�[ע[�f�uA��]F/��j�e}I~j�V�¬��Obc�o@��W����!3f�e�e������~�P-��X�F\����k�E�fw�z��S�*���ԯܦv#��=�dr�~��g��j�vP�؟�c��M����p�ج����@^�~�j]�����S7�Fevש_:��� �Nsj��U����"�[��3N?8FS��!���Gǜ~䜐���4p��)G��{��$�{��~�n���z"U�h0Te6��7/Mqc�A��M��.6�Gi6n�7'�F�Ϡ�����Jr�����A�S�ʟO�Y,�R0je�ld*h�ddVev�S�E�ɨ9�x�Bs���w�5�`T��3ُ��pvF��l?����1�G�@�a�e���P0Z�Lز��,���V��,��!62)ǩ�=˅Z}8&P��{�/.3K��㤫���q�F*��7���9QfW�S��i�7V�� ͦ�@�Ҿ�F[�A�Mn?2N���l�6p�7C���4Ɩq(F��z7꣐�%���p�C�豎c:g8	k!�p��]%��̖�C�� �f����F�fi3l�����2KW�2(	mYC^��4�c�:H�0l�4���X��á�����y������1��P���W�Bi6y��������;[9���Ŝ_�]t^�X�C��$;��{[��(�e�_͟a��B�|Pf/ڗU-7����mA�$����$��q�A�OԳr_��"�%������� z�AqB���9�g������⟰G����,iv7a��%���� ��ՠ�"��!;Y\��/�����Ei�|����7
�d�̈́=�BЏ��,.8v�g9T5�� �8�.���,�r$a�����|Pf�C��-�uI@%@��&������0��e�_��-Xu	U�jC��$ȪN�j��#0%����~���N��F�u�e�OʍDe�t���>U&��>�9\&�Pf݋TA�	D;���1�ە@�e��A?Q9貳��b6AF�f�I~��]��tY�G��T�l<i�P�ӣ��Duݪ_�� ����V�n;�K�p���m�����`~�RY�������gZDwwoQ���^YH�N>?�)V�)�@i�j����E%�م��_(�?ٚ]�Mk����)�(T�D��l�n�/�A�	�ai��ny�4;SNSK�{\���Y�PUS�q)GK��m��T鹔��k�K�٬D�l�.���1������`(�!H������*�f��4��b������Xb�U���`Y\&]����,]t�׎q"���������z��K���3\k u�0��_�]q���'��������r�S�slA	�A��+%/�l����w%=�B�JT�����)��1��,Ǖ��n}VS����1?w@�W��c8̏���� ����ZS!�X^�,���o���� ͞p�(UqV�TP���̎�1�7
�A���S8�/�C-t����ࢊ���YS�����>p���f7��B *�Q`K�W����38Lp[����,�:�܃4���~��1�2����5��=�iv7u�[�p�@q@��/N�v���V��x�ՀV: 8k�������f8% �_(�7�	��{���`��� ��k���wAVM���#�<�[���ÿ4��e6��f}��
WG>zd\٢�30�|�,��8��$��w<�0��Y�I����I�t$�2�5������`K����s!;PB���/Y��`J����J:_X��wAf#G�Ha��.���bBI��2�Ro)��wAF۸���|�)�J�"2Pv��/U�(T��7ŗ�]��Wٷ)�瞡��Sٻ*�,7�dd���M���]��)�#Q��>2G������Ԓ�%���2�W��"�����r"E#M�����P�,Qܛ���f4Eqm�/'�n��\_(NmF������d���\�!ʵ���Q�y�C�����e���'�G]6��M�Ԭ%��D��󪷴i\�ݸH�ܐx�*PNU��ZM����S��\hT�!����
U���:�'�@��Yg��[T�����0���.9:���M�f����$��%�V=�4��z�vq;|�u�4t0%����ϥ�,�_�N[�s�;�-�|��^jR[��k߬O[k��j�z�
8KP�Ҭ�ͳ��Y#�������
��^K�����=�vͪέ�u\)KB�,��u�#�z�je6�FX���zM�(ͺ�Oo%����?nS��^?z�ipn��O_-��o}_A�%߻�χp��^Ei֏��[�WTf7����ί(�z��+���+�g�^���VPfi;c��7`_�9����K˘,��{���g��Y�wN�,,'X���T�;8=�i�lu*�9hM|�l߬���f�\���s�1���7��7#�Wf�O��P-�+�wox/�Ȗ�!��1�e�r<4��� p;n���2�;��n���2�ף4{�qH��=h���1c��������?�Q�4;�A���2��K��/N�,ߟ��:ǌ�������(�B����6��8![�������C�A����Ç��,�(      	   �  x���Kn�0�5�.)��,-��(�Lv��9*��(O~�v��� ��H����k�(��~��^�cqt���9�����+��~������4��?�}8�"e��>?�ߎ��������W
�;��>\���;?�Ɵ�f!&�_Yl#�c��;�
ű�Z�yfa~�0���T���r<�tb�La�X��K�bi�B������բ?���	ǁ�KIX,�D|�ۺC1�Y����DgUV��7�cQLB�˃��Ҩ[�SݲL��.���w[gyJ�]n������(��;|�1��{3X%xit���#�*���#���=ZkS�J7���d���T�]56X���
���9���1l��tVVbCUYl�T1�+F�7ز���v�)��3L�_��Lg�H8�J��p茅��ea������	��
���j�X�I���*'���w�齍������Xe��샪ꉺhh��9��ΜT�8F�*�j�Ѹ���(���"]�{m�<�]PW�c��2ت˻�@�2+%TT��t�[���[F�p|�UU����[c�\.	\��r��}3�jB0X��������jt�@Y�-����r�w�0�r�Uǽi�<6\�����&�M�*���ZP�U�{��<1��2�EX�|eT��������^g��kdD��ZOi8��M�S������ʴܾ��k��u��y����߾�߾�����es\?���YQWQ�Vb��'P���:�ܙ͵L�8�3f�R�<8n-"i�U$�&��l9���tb�uM�]��;���C�ΖC�ʚ�d�.��0�<( H,o�@u�3�q��P�ccw:��oxwAZ�h�)��[��@�?
E�7@W�p)1S]�D�)=Qum�%����EOTݺ'j��l+(C���R���Mx*J�Wu<Mxrp�].���k�O            x��]͎49n<׼�$��xc��؝����Ù]�bD�������/'S��`0����������?����E7{�׿��W)����7�������<���?;���v=�������)��q�M.����_K�ߏ�:�G��s9ar=�������#����_�(��r~K������7�|�R��E)�#����й���F���?����57ߎ㻮������ۑ�<��"��Q��H���z����roGzh�^�x��]�{��s�/���׎��z�)<EMiS���G��h�ܔѿ>'�a�sD�G��s�/���i�����dz;7�z��S��T瞦��D2A;������YǷ8�nb��f󓽶bT��$��XF_"�L�/��\Ƴ�QpK��j�����s��;l�~L���=�sS�\�9.Ｚ��Ҁ�-�ζ�`O����r��	�Ǳ\OƯ�=�/�����X��������KR:�tz����6�������X��^�T�k��%R�܌���~�^7���}?���=��~��%�?�?N��-�e��ߢ./!��X�Mݲ.w��Tk�P��ר�אַWv:��vNǑ1��̳�����o�L��FW�c���c��S��(P��)�ؔ�laGJ��>A,�mc��NϑF���?���#_hsg�B��;�o-��Z�)Z�x�P��J��[�}6G �G���Ċ��?��C.
w_ֻoR(�IY��@|�pH�toE���zc+��庝����kǽ8�d(����:����<]iE�XP��]X]O$�?����.& L �t�G>S�N	���[Qe��g\Bw>���UܖEx�������h	}��L�����'�=C�c7$�Ђ�#tZx�bktK�����[F�vI�>�I�#� ��q5�[�o}�������G� �s,g4�yK:�<+����`ݧe�����76�m�ҡ����ؖ�cՉ�� 0E����D
�*N��?�J���G\g�"���ɸ��Z=�XRo��W�FH-�љTȧ'�?�k7�Xsb���0�Vt0�մ�M-���%,�S�g�'=�z���EZ��&e���\�o�&Zf�s8��U+�{pΕ�x�����#�N�K�K�M��c>��@�<��G�����O1��M��W؊ ����K����_щR�F)ϱ��)��=��8�rJ~�)�������ﾸ��ň�y�N�q�oS�.9��+<"�� � �oo����#H���j��
k]�z��r,=]���Y99�S9���
�J��T�K��Ӏght,�� �_�B�>ȱ����n�ЧJ����9\sZュB^(��hD[YC�s_��4���	�TF�5�E!��Q�P:ۡ�f�>�H̹.K� s%
`C�7��� �>����D�� HL'�q6o��G�!���,��7�ES�-9��	ﳭukbҸ������9��������ٞ�9���
H��O�P����a��	kqS��˲d�-�r����߲�I�8�g���9�D��=�����7�s� ��s��[��VZ>��0������m��s?-�p�{\��}�WV�H�%ٳ�e��y�j��W�ڏ�a������,��pY�����$�.v2�WO;��=�l����޽� �K������Ν�aOh%�2�� Ah����q��i7�}?^����b:I��P�4�lW���_6S ̲�c䕰M\H�5V�(�0�G~D�;�<' ��.�m���[�~�mURg��D@"�}�"~��:��^rj���-���$�2���%�IK��8����-��^�X:�V/q}�����s��;��SYJų7���	��8�7�	�x5�:!e Q% PVtTϝ�v��זR=��n^Xu�=p@Sv
&�����`,RѲ�>����5�SF�Ph�M�ٖ�or�ݛ�z��o��1H���¹�=m�ǯ1Z��dHo�R���G'��L0�埰� l)Kg����20�䟒"�����JoRk�N�o���CҺ��l]��;�YH� �j+��)�C���T(�i�-�������״F�IM!Y���^Ѡ�fp�C�5`:_k����j��X	�X��ee/�)���)�v ���t܍s:��E�^Dfɜ�F�w�9��c��i����i��$K�4���zQט�����"KA4h˱��Xrτ]�����˹��?������X��U���I�T7��V��H�c���K��PdhY/[�S�U�),�yS�^`%ԡ�7cO)@���:K����m���IC�T�H3oˠ�ۄ��``1$e��M`�zcN`%�T���\`KD���^�Pj9�T�(}:��u�*$�ө�� ��Nǩ��������"�����2mT����X�z@�z�9�F���<	�L��ɗL���i�Sてڶ��Z�yu�~�u�_�O�1��f%���'�'���"������vx�a�2�K�VS�
��=o���̊b�rqکS@{�j3|�ţ#�D�&H�l�+_�,���z�#�4V�Nl|�ľ���˘�48�����Wa"���k[�ڲl$%��D�������(0���-�N�I#��\[B �&,.��!��0���b�3���<�jqR:�4屨�BQ�E��]z�v$?CT�%�G9�5�-�f���*���	jMV�I�o�8�C�nK����X�8�+����i��
�e�@ܺ���H��%�H�	����q_�����.g@-j9�m䢦��ي���
o�@R��(�Pg.��4�jhA!��6��1ke�	s3G��'��?���z׃X�c�~}R�P��+��&so7��M��X{E빣M:�׷C9�R�����`��Mn�?ȍ_�r���}_�W���i�x�o�(@E�#*H�f���59U�+58��,��/*#��223-3�60��
ogHtڎ����Gd���Ee�*�INƣ�)��<�Qv�%��܊cx@��u/~��x�:�:���/��O�A\:ih}X��-�V��t��>)�H�_o!32J&���#���̋\T������h����-zە��H�w,N��]�� pl#0�����R�,֭�����Wt�PE�B}+����4z�6(O�ɹ�0�_W�3����H�+{,#O[A�p��-���\��m��]������L;�&�a�t.x�Pr^wD��U�f�/�+kZc޼61C��w�֦��i�(h�!^w����wn�b8�U�ɳ���c��+��;$�[�E3műt<;_�A�Y�Vu��֙�3R�^�!xC��BP���(���Fz�R��;_e�+%�I;��{�I�q.��g�
�2���g��/z�.�OKpKf�_��$�ZZ�����C�@5CRZى�=iz��=W�ouq����N,�lf<�����@,�As����)���h�~�V�ٶ�֒�&A����mOV��*cE
H,���x��E����Bt��@+8�o��R};�ZǹR���Ah���]׽��tM4�t+RnsW�J�S����4�8ѯT)H/�~�?��m�z<�B����V�i�WND\�`t�!��`��ɒ`�U
Bl�����ZS�cPJt�eTs��ryW4r��L�˖�<d�`��{��@
��ҷs�-��A��:6�����qm�mIH����m���^S�2����#^��^�h/��k�Z�a�]�8:r<R���{�Y,�}�.�����)T�����Շ���z�Iѷ�{^%s�n�/R;o�"a�_Z4�>�bg��	g93�A�`�F��߱��*�=- �g��S�^� ��U/٘G��̉�d���o��~a?,�'�e������)��=�D,eK�i"P��CA"��P:�7*����t�=�pr�q�E}+ҡ�3Md��Ʒ�IYF8�Z%���E�44S��&�j>��[Ÿ�"ųPO������r.׋�nݪJScf (IW
���O��%#����o+�h�˝T`�#�*�4��a������yX� W  FXp�Ն��0�ѣ0+�I���1����{/ʍ�T'/���	y��<7Iݲ�!inYA:n<�o�4��E��0c^��y*�2���fؤY��������ňs���n{�qm��i�ozvya��t�mϮd.�d�=v���9�AI�`��罛�%�ݜ�!+�۸9�Fj�:^��Ա�<�'WL_�yAe/Y���&-���<�F������S<����`?]C�y���r���|�"4ؚ%H�F����}�@/EBG�F3���f��Uf�ՠ�u�W��&���8���<��S�h'�vQ�B8ѮZ)��1�㹂��k�5m��[w�5��FPWj�3�qӋ'P�/5�2:&[�2 3�-��౬fAS�����V��(nUN�g�P"�yf�ʞ'��۱o��D4��6���tJ�~@	�ʣe��Y+�P���^�A	��Չ@�>>��/"^l o�E��B��5Q|+掣��הt<����Iւ���z��}z�'f)��Ta<,.r0AfP��G�?��³=h�ӛ�J�ٷf�B��g��ՇW���J֌�Iډ2�-�-I��3��i_ܓ.�;خ��V��brS�!%�]��b�uT�f��9 z���B:o�ޞ��J��@V,H+��@O^G-Zf$	���/гX@Y�`S�n��~t��5q�)A_�C�m:��{��|o'
��`Un6�.r葷J�<ҫ�5���� ��e@����k&Qa�<��+�m�� �'Q�n�n($ }�tP�L��aXC;�Z�/h��o�0|�Yoas]�����A�=7�E-�g'T����@�g�����d8��m�4M�WF�X���!s3B�vF��ȁ$�[�$�A@�#�7��}����L��h%P�NwZA��j�T�X%�&�!i��ϯtN����C��B�o�z�h�G�A���vp��Fw���l�l�󴕮�U("N��	PP�Md_�"�r��v�k疆M>�[QO�h�gN�K�$��.� �#�(��Q.E���Dt��qS��?M���BM�����4q�֧ ��/��$��mGY�qiA�ΐGC"=�,�/{1k��L�����aE���@~�5Rp��u[
�qA�|��3�'�L��'*��F'�i�|,��γN�c7>���Y {��0�e,]��,����P�q'6ȅ���n��no+����Ɂ�u�$��sNlE��T�P5��ъ8a�Z�����׶؟KR�D���s�[1v����M����1%�
o$���U�j���}{�{��'~�����d3 R6]�/��J��G�P��X��F,Yax9G�B=�
�T�Pa��i��QjO�Z��4q��eOI~%	����x�}�h�t�[�L����Eq4Y�����ܭ�}`�_����;�����sARؒ����6�D���}�&�y��1���]�x�坂j��/��/��W� g���s�I�%JnU4����i��`)��~��c�g��$nJ+���kWz��B��¤[A����4�M����-�D�%K�(�n�\�%- �&��G�;�,���!y���_>���)�E~<�\�?L@t�g_���}�o~��r	�A�"�~Я�zk�u��./�!~����h�1sk!s[�74�����JP�y�k�Ÿ"htP�}�A.	�@�*�W�͈&�9B�x0$���~�#�����k'�Q<D*�USu��'S�Jd7vZ���-��t@����Z+� �DI���SdP�Z�D�y�/�>�b�QC4�{*��%���wc[Yx���~2郓I^DS�aE4R�4����'ե��6�!�^m���#�ՂF�T8S�-��u�����~���9�4�         �  x��\ێ]�}>���@�uy�4F�8q�}(ЗA��[7H��/��6)g�70�g�D-���Wo��zÄ�e�/1�����3SK���}�����>��=���^���������oX{)5�x���'���>�^���ç�?��?� ���k�w`6P����՛W������o?>�������>}�xk7j-#�;BΆ��@����y����������?�@�]��04a2�����6�:8�ϭ��𗇯���?~���_��|s�n@̌ǆ6�~C����au��Pa�0>��'���<���ۇ��O��a��[.=u��vS��A�>,ӊ��.g¼}�����Z��|Ao-i{А{�A�����!le���C8�"a?�q�sD����"����~1��.F���cW�ኸ��0֑9%(�z79dl=�O�3H�2��aXt���SȀi�<�qȺ�Ҵn��B�M��p���Φ��篐�#���UF��
�#K���J�k��S��b�a\�RB�)���ܾ!�b����C]�[��[�"�mĉ$�����:��A6�!pe�܉O�EC�`�8��X�q�S�#~x���O�X~6B�r��<-!f 	'�(i��U��l���W_<���ݫ�w�����?\<N��2�Oa��`Ĕ5�^��jm/݀��8hOA���nr��r�C�c��ϩ��7�Sq6ô�̼�w��6��V���
�;{�Eh��$r�C�Y.�p�g�tժ �馝I0���Ys����a6�چ ��A�7Fd����5ԳC��R�5���3���q=6%�s���Ib����\�T����b(j�)�.e�8$�.%zy�ؑ�s�`ޑ`;va��Zw)yܥО�VS%�M�z7:`_�z$�^�AS�@�.;����k�q��j�w��ȁ�)�(�go���K"0��� ��<¡�߳�
n�IQ�Oqx+t�:L��YH����:�Eq x ��U�-�Ζ�BIO�E����Z���#D��<�	��F#�8.�9�$Ju��CK��Gܪ�Rr�K�|��^�7�+j��Z��;��iw��xf��chY5�H���H.!��2��/����/B�Q�΅a
�`�F�c	�/>�(d�����=�g�n.�O!�=��)���Sr6#Dݹc�43_��a�K���=����#V�Q(�nB�׻����%�W�\zLFH��f�dg5Hu�z��l�JB��tݱ��M��%��'r���XJ��������uqf�s��\|�U);���-e<���V�� �����f\v� ;@6=�Et�*�/FV�b������D�̶�"g�8)�꒙��'pN���Q@��5���Br�_�a��{����E�w��슌��o}&k���+�ϊ8{gS"g���m�:P����R���q*�ћHmf5��X��N�As�����m�F�{�3����#�b��s�M���ң"��Ơ�"�gF֗��i�ק���4b��v����$����PmZ�ʬ)��P�R�.�ig*�g��=�+(�
�B��z6��ˣ���U@r��z�(Y�a���=Bgk�`�Tj�&���l�!�v�@�nM��6����^[���/���^ZF+��܉D����l�z�hġ�y�{ۡ�v�T� ��^v � C��D��Fy������g�s��}�ై��:B�G�܎��!I�c��Q�S�f����t=�0���[�H�W� �Θc~��n��<�G����ZJHI��
�7���x���� ��K���)�n�*��Ld=?0 �H<��W�I,�~�p�M#~��S�I�������)�δI��ivr�V�V��=�CH�L�3G0�Hq�5�帞�f�/����2���3�СX����Pho
�9���H&������5_�v�(�bXG�G����:���3�sL�:��#wg7)��7	]B�p��;��~�R��2G���noCs K���C(��4ۄ�!��Q-� a��0��,�z�1m/a�m�qJ�v�l����0-��_��Վ?�l) ���ԟu
���.� �͹m�5�:��K��
�*����e����D����]��!Ic#mY�v�s��]~9C-VK�|qN�����0�J�V�xZ��휚��P�`���q���$-�sJͼ+(Sy���\��<5�
JQ�]����lDi�щ�R��cY��T�hC�g�2�����t5�,	 .ǫ��heOh�`�b`�l�םtT�/�Q��@���vZ���>�lǺtz����{�9�=s���Kp�Y�hq�6bZ�}Ѹ�dψ���`u(+-jMgM����� �KCek	�XQ`9_�jٶP�$j����BIZC��&�T]�""j�.��l�,(ʑ,����`�#�����E	R�N�Ⴂ��!���΃�\#�+���]iZ�o݉ �����[�"`ܔb��jP��&UIa,춫�~	ͨ{[X�����bo�O�gn}�c�!(M[��,�p���h-��m�Wb�ԨvS,趐 ȵ�B&㸅��pM�Fe9�i�<���([[�eȈ�` J���:�Lc�������*��=���R��ͮx�.��RMlư��c�S$��L��b��eUyٍ2���Vm�Q���+�3�6�Y����_��мu��r�G�sE�|��C�ڷczmN�V�NmI�g��S��2�}{�>@���a�&#J�vT�&-Id%Ŋ=+�,�.(�(A	 �qTQ�I���"�VG_ X"�=av��lE1�*@\�${��W�}H���<s	4��(APz>7���$}����O�hvU9Q���nZA��p�����l���!�I��\�m��%T��Y�$�X-@'�n��	��a��er��UU�b��Zs��+tP ZQ!15R6%>���(q���BA��ОĆ�2zr��:�Ǵ)WgӠg���/�PJ-���T�V8�!!8�ǭR;������|͕�D��7�)����R.6;���#M��!S����<��^�g{���^豀��Ƹ&` _��ZNE�<ƞR�&�޺��zz�~��:�\�1*���5�i1��|�ʹA��1/k1�WH���[)n �"��<t��BOr00���i݉�Cڎ�&����� ��"�9�� �B��I�3q]@4����s��X�U�v���T���n�Z`ѭ����UE~
"�%(�������/B�g�-�Z"�uk𦔽�	�����lD��;�ӻ��?�;��ל2C�0݃	�����(tyd9yۉN�X�T�[W��k�S^��vVSb�XK�s|��]�R{�����*�u,�O�{��hOZUcZ��J���>S��=�������ԑ� �		��b�5�`B9`�e�Ai�p�}������)Hٽ_=��5O_�l�Pȧ0b�z��lWq�#���#5h0�|�y�L��U:��~'RG�o6 ���d�!�g�ثma�(�UǸe���ct	g{�:�(t'9/G�={F�dJ���o�b��
N��r�3���t���C�wyDd�k�m���Ϫ�Q֊/�j7'���:Ǌ/� �b+�D�"ٛ��X�!�����#6r�կ� �-%�����,݁(W�����-#.׾�כ�����އ���2�~֋���s,#?�9-,!��d���0L���K�����>�/?�݁)gn�/Q�j�b�^�hq`��kA��g%�z�� ǟV@Y�G�Yݖ�4-���M}Y�~:ْVC��[N�Tv���p�J���k0�H�<��0e����� �.�X��(34ڂ�׷�G{��
u�ei������Z֡�e���a�ر-+P�o��j�� ��<ҹ�'f�!��t
c�]��/0J���������S����`�恡(]w�a]��I����S���Z`��tLgn����*�-���� C����v.�3c�խc"N�خ2���+&��O��}�u|\=�IPo���[�Խ}����ϐc����`���D_��7B1eg+��z5o#�7��o�^�x���     