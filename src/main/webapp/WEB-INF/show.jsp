<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="box2 w-50 p-3">
<h3>In <c:out value="${quantity }"></c:out> years, you will live in <c:out value="${city }"></c:out> with <c:out value="${person }"></c:out> as your roommate, <c:out value="${endeavor }"></c:out> for a living. The next time you see a <c:out value="${thing }"></c:out>, you will have good luck. Also, <c:out value="${nice }"></c:out>.</h3>
</div>
</body>
</html>