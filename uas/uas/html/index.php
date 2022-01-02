<?php //menggunakan koneksi dari config.php

include_once("config.php");
$result = mysqli_query($mysqli, "SELECT * FROM data");
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta scharset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Praktikum Database</title>
    </head>
    <body>
    <h1>Vaksin</h1>
        <table border="2">
            <tr>
                <th>ID Pasien</th>
                <th>Nama Dokter</th>
                <th>Nama Pasien</th>
                <th>Kecamatan</th>
                <th>Tanggal Vaksin</th>
                <th>Keluhan</th>
                <th>Diagnosa</th>
                <th>Biaya</th>
                <th>Bayar</th>
                <th>Tindakan</th>
            </tr>

            <?php
            while ($user_data = mysqli_fetch_array($result))
            {
                echo"<tr>";
                    echo"<td>" . $user_data['id_pasien']."</td>";
                    echo"<td>" . $user_data['dokter_penangan']."</td>";
                    echo"<td>" . $user_data['nama_pasien']."</td>";
                    echo"<td>" . $user_data['Kecamatan']."</td>";
                    echo"<td>" . $user_data['tanggal_vaksin']."</td>";
                    echo"<td>" . $user_data['keluhan']."</td>";
                    echo"<td>" . $user_data['diagnosa']."</td>";
                    echo"<td>" . $user_data['biaya']."</td>";
                    echo"<td>" . $user_data['bayar']."</td>";
                    echo"<td>" . $user_data['tindakan']."</td>";
            }
            ?>

        </table>
    </body>
</html>
<?php //menggunakan koneksi dari config.php

include_once("config.php");
$result = mysqli_query($mysqli, "SELECT * FROM pasien");
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta scharset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Praktikum Database</title>
    </head>
    <body>
        <h1>Welcome</h1>
        <table border="2">
            <tr>
                <th>ID Pasien</th>
                <th>Nama Pasien</th>
                <th>Kecamatan</th>
                <th>Alamat</th>
                <th>Jenis Kelamin</th>
                <th>No. Telepon</th>
            </tr>

            <?php
            while ($user_data = mysqli_fetch_array($result))
            {
                echo"<tr>";
                    echo"<td>" . $user_data['id_pasien']."</td>";
                    echo"<td>" . $user_data['nama_pasien']."</td>";
                    echo"<td>" . $user_data['Kecamatan']."</td>";
                    echo"<td>" . $user_data['alamat']."</td>";
                    echo"<td>" . $user_data['jenis_kelamin']."</td>";
                    echo"<td>" . $user_data['no_telepon']."</td>";
            }
            ?>

        </table>
    </body>
</html>
