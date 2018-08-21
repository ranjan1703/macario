<?php 
header('Content-type:application/json');
$url ="127.0.0.1";
$database ="macro";
$username ="root";
$password ="ranjan";

$conn = mysqli_connect($url, $username, $password, $database);

if(!$conn)
{
	die("Connection failed:" .$conn->connect_error);
}
/*$result =" SELECT * FROM newtb1 where car_name= 'nissan' ";*/

$result = $conn->query("SELECT car_model, model_no FROM newtb1 where car_name= 'nissan' ");
$result2 = $conn->query("SELECT car_model, model_no FROM newtb1 where car_name= 'ford' ");


$outp = "";
$outp2="";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
    $outp .= '{"car_model":"'  . $rs["car_model"] . '"},';
    
    $outp .= '{"model_no":"'. $rs["model_no"]     . '"}';
}

while($rs1 = $result2->fetch_array(MYSQLI_ASSOC)) {
    if ($outp2 != "") {$outp2 .= ",";}
    $outp2 .= '{"car_model":"'  . $rs1["car_model"] . '"},';
    
    $outp2 .= '{"model_no":"'. $rs1["model_no"]     . '"}';
}
$outp ='{"nissan":['.$outp.'],'; 

$outp2 ='"ford":['.$outp2.']}';

$conn->close();

echo($outp);
echo($outp2);

?>