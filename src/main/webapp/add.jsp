<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addition</title>
</head>
<body>
	<%if(request.getParameter("t1").equals("") || request.getParameter("t2").equals("")) {%>
	<%= "<input type=\"text\" value=\""+(request.getParameter("t1"))+"\"/>"%>
	<span>+</span>
	<%= "<input type=\"text\" value=\""+(request.getParameter("t2"))+"\"/>"%>
	<span>=</span>
	<input type="text" value="Operand(s) cannot be empty"/>
	<%} else{ %>
	<% try{ 
	float x = Float.parseFloat(request.getParameter("t1"));
	float y = Float.parseFloat(request.getParameter("t2"));%>
	<%= "<input type=\"text\" value=\""+(Float.parseFloat(request.getParameter("t1")))+"\"/>"%>
	<span>+</span>
	<%= "<input type=\"text\" value=\""+(Float.parseFloat(request.getParameter("t2")))+"\"/>"%>
	<span>=</span>
	<%= "<input type=\"text\" value=\""+(Float.parseFloat(request.getParameter("t1"))+Float.parseFloat(request.getParameter("t2")))+"\"/>"%>
	<%} catch(Exception e){%>
	<%= "<input type=\"text\" value=\""+(request.getParameter("t1"))+"\"/>"%>
	<span>+</span>
	<%= "<input type=\"text\" value=\""+(request.getParameter("t2"))+"\"/>"%>
	<span>=</span>
	<input type="text" value="Invalid Input"/>
	<% }} %>
</body>
</html>