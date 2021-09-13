<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int dan = 4;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
	<div>== <%=dan%>단 ==</div>

	<%for (int i = 1; i <= 9; i++){%>
	<div><%=dan %> * <%=i %> = <%=dan * i%></div>
	<%} %>
</body>
</html> 