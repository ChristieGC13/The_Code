<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Secret Code</title>
</head>
<body>
<div class = "container mt-3 d-flex justify-content-center align-items-center flex-column">
	<p><c:out value="${error}"/></p>
	<h3>What is the code?</h3>
	<form method="POST" action="/submit" class="d-flex justify-content-center flex-column">
		<label><input type="text" name="guess"></label>
		<button class="btn btn-primary" type="submit">Try Code</button>
	</form>
</div>
</body>
</html>