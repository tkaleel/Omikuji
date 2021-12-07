<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<meta charset="ISO-8859-1">
<title>Omikuji</title>
</head>
<body>
<h1>Send an Omikuji!</h1>
<div class="box w-50 p-3">
<form class= "form-control" action='/omikuji/processOmikuji' method=POST>
	<label for="quantity">Pick any number from 5 to 25</label>
  	<input class= "form-control" type="number" id="quantity" name="quantity" min="5" max="25">
  	<label for="city">Enter the name of any city</label>
  	<input class= "form-control" type="text" id="city" name="city">
  	<label for="person">Enter the name of any person</label>
  	<input class="form-control" type="text" id="person" name="person">
  	<label for="endeavor">Enter professional endeavor or hobby</label>
  	<input class="form-control" type="text" id="endeavor" name="endeavor">
  	<label for="thing">Enter any type of living thing</label>
  	<input class="form-control" type="text" id="thing" name="thing">
  	<label for="nice">Say something nice to someone</label>
  	<textarea class="form-control" id="nice" name="nice" rows="3"></textarea>
  	<button class="btn btn-primary">Send</button>
  	
  	
</form>

</div>

</body>
</html>