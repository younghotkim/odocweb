<%@page import="com.javaex.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.javaex.dao.*" %>  

<%
	GuestbookDao guestbookDao = new GuestbookDao();

	

	String password = request.getParameter("password");
	
	int no = Integer.parseInt(request.getParameter("no"));
	

	
	
		
		guestbookDao.guestbookDelete(no, password);
		
		response.sendRedirect("./list.jsp");
		
	
	

%>

