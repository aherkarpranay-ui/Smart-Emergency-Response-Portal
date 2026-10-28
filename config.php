<?php
$host="localhost"; $db="serp"; $user="root"; $pass="";
try{$pdo=new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4",$user,$pass);$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);}
catch(PDOException $e){die("Database connection failed. Import database.sql first.");}
if(session_status()===PHP_SESSION_NONE) session_start();
?>