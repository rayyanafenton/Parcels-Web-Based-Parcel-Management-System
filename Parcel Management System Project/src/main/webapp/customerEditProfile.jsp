<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.dao.UserDao" %>
<jsp:useBean id="u" class="com.dao.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	UserDao.updateProfile(u);

	String email = request.getParameter("email");
	RequestDispatcher req = request.getRequestDispatcher("customerEditProfileForm.jsp");
	req.include(request, response);
%>

</body>
</html>