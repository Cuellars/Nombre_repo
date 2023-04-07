<?php
include "conexion.php";
//consulta
$consulta_sql="SELECT * FROM persona";

 $resultado=$conexion->query($consulta_sql);

 $count=mysqli_num_rows($resultado);
?>
<table border="2px"> 
    <tr>
        <th>Usuario</th>
        <th>Email</th>
        <th>Carrera</th>
        <th>Número de cuenta</th>
        <th>Fecha de registro</th>
    </tr>
 <?php
    if ($count>0){

     while($row=mysqli_fetch_assoc($resultado) ){
        echo "<tr>";
        echo "<td>".$row['nombre_usuario']."</td>";
        echo "<td>".$row['email']."</td>";
        echo "<td>".$row['carrera']."</td>";
        echo "<td>".$row['no_cuenta']."</td>";
        echo "<td>".$row['fecha_registro']."</td>";
        echo "</tr>";
    }       

    }else{

        echo "<h1>Sin registro</h1>";
    }

?>


</table>