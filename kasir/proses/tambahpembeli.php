
<?php

include "connect.php";

$idpenjualan = isset($_POST["id_penjualan"]) ? htmlentities($_POST["id_penjualan"]) :"";
$tanggal = isset($_POST['tanggal']) ? htmlentities($_POST['tanggal']) : '';

if(!empty($_POST['Tambah_Pembeli_validate'])){
    $query = mysqli_query($conn, "INSERT INTO tb_penjualan (id_penjualan, tanggal_penjualan) VALUES ('$idpenjualan', '$tanggal')");


   if($query){
    echo '<script>alert("Berhasil Tambah Penjualan");
    location.href="../penjualan";</script>';
   } else {
    echo '<script>alert("Gagal Tambah Penjualan");
    location.href="../penjualan";</script>';
   }
}


?>