-- create table
create table penjualan (
	id_distributor varchar,
	id_cabang varchar,
	id_invoice varchar,
	tanggal date,
	id_customer varchar,
	id_barang varchar,
	jumlah_barang int,
	unit varchar,
	harga int,
	mata_uang varchar,
	brand_id varchar,
	lini varchar
);
create table pelanggan(
	id_customer varchar,
	level_ varchar,
	nama varchar,
	id_cabang_sales varchar,
	cabang_sales varchar,
	id_group varchar,
	group_ varchar
);
create table barang(
	kode_barang varchar,
	sektor varchar,
	nama_barang varchar,
	tipe varchar,
	nama_tipe varchar,
	kode_lini int,
	lini varchar,
	kemasan varchar
);
create table penjualan_ds(
	id_invoice varchar,
	tanggal date,
	id_customer varchar,
	id_barang varchar,
	jumlah_barang int,
	unit varchar,
	harga int,
	mata_uang varchar
);
create table pelanggan_ds(
	id_customer varchar,
	level_ varchar,
	nama varchar,
	id_cabang_sales varchar,
	cabang_sales varchar,
	id_distributor varchar,
	group_ varchar
);
create table barang_ds(
	kode_barang varchar,
	nama_barang varchar,
	kemasan varchar,
	harga int,
	nama_tipe varchar,
	kode_brand int,
	brand varchar
);


-- import dataset
COPY penjualan(id_distributor, id_cabang, id_invoice, tanggal, id_customer, id_barang, jumlah_barang, unit, harga, mata_uang, brand_id, lini)
FROM 'D:\VIX\Kimia Farma\dataset\penjualan.csv'
DELIMITER ';'
CSV HEADER;

COPY pelanggan(id_customer, level_, nama, id_cabang_sales, cabang_sales, id_group, group_)
FROM 'D:\VIX\Kimia Farma\dataset\pelanggan.csv'
DELIMITER ';'
CSV HEADER;

COPY barang(kode_barang, sektor, nama_barang, tipe, nama_tipe, kode_lini, lini, kemasan)
FROM 'D:\VIX\Kimia Farma\dataset\barang.csv'
DELIMITER ';'
CSV HEADER;

COPY penjualan_ds(id_invoice, tanggal, id_customer, id_barang, jumlah_barang, unit, harga, mata_uang)
FROM 'D:\VIX\Kimia Farma\dataset\penjualan_ds.csv'
DELIMITER ';'
CSV HEADER;

COPY pelanggan_ds(id_customer, level_, nama, id_cabang_sales, cabang_sales, id_distributor, group_)
FROM 'D:\VIX\Kimia Farma\dataset\pelanggan_ds.csv'
DELIMITER ';'
CSV HEADER;

COPY barang_ds(kode_barang, nama_barang, kemasan, harga, nama_tipe, kode_brand, brand)
FROM 'D:\VIX\Kimia Farma\dataset\barang_ds.csv'
DELIMITER ';'
CSV HEADER;

-- create table penjualan gabungan
create table penjualan_gabungan as(
select concat (id_invoice, '-', id_barang) as id_penjualan,
	id_invoice,
	tanggal,
	id_customer,
	id_barang,
	jumlah_barang,
	unit,
	harga,
	mata_uang
from penjualan
union
select concat (id_invoice, '-', id_barang) as id_penjualan,
	id_invoice,
	tanggal,
	id_customer,
	id_barang,
	jumlah_barang,
	unit,
	harga,
	mata_uang
from penjualan_ds
)

-- create table base
create table base_penjualan as(	
select pg.id_penjualan,
	pg.id_invoice,
	pg.tanggal,
	pg.id_customer,
	pg.id_barang,
	pg.jumlah_barang,
	(jumlah_barang * pg.harga) as total_harga,
	pg.unit,
	pg.harga,
	pg.mata_uang,
	br.nama_barang,
	br.kode_brand,
	br.brand,
	pl.nama,
	pl.cabang_sales,
	pl.id_distributor,
	pl.group_
from penjualan_gabungan as pg
left join barang_ds as br on (pg.id_barang = br.kode_barang)
left join pelanggan_ds as pl on (pg.id_customer = pl.id_customer)
order by tanggal asc
)

--create table agregat
create table penjualan_harian as (
select
	id_invoice,
	tanggal,
	id_customer,
	nama,
	cabang_sales,
	id_distributor,
	group_,
	count (distinct id_barang) total_barang,
	sum (total_harga) total_pembelian
from base_penjualan
group by 1,2,3,4,5,6,7
order by 1
)