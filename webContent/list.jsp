<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>    


<%

	GuestbookDao guestbookDao = new GuestbookDao();
	List<GuestbookVo> guestbookList = guestbookDao.getGuestbookList();
	
	System.out.println(guestbookList.toString());
	
	

%>    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
	<form action="./insert.jsp" method="get">
	
		이름: <input type="text" name="name" value=""> 비밀번호: <input type="password" name="password" value="">
		<br><br>
		<textarea rows="10" cols="30" name="content" value=""></textarea>

	
		
		<button type="submit">등록</button>
	
	</form>


	<%
		for(int i=0; i<guestbookList.size(); i++) {
	%>
	
			<table border="1" width="500" height="200" align = "center"> 
			
				<tr height = "10" align = "center" padding="10px">
					<td><%=guestbookList.get(i).getNo() %></td>
					<td><%=guestbookList.get(i).getName() %></td>
					<td><%=guestbookList.get(i).getReg_date()%></td>
					<td><a href="./deleteForm.jsp?no=<%=guestbookList.get(i).getNo()%>">[삭제]</a></td>
				</tr>
					<td colspan ="4"><%=guestbookList.get(i).getContent() %></td>
				<tr>
				</tr>


			</table>
			
			<br>
			<br>
	
	
	
	
	<%
		}
	%>









</body>
</html>