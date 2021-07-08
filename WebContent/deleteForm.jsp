<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
    
<%
	GuestbookDao guestbookDao = new GuestbookDao();

	String no = request.getParameter("id");
	int guestbookNo = Integer.parseInt(no);
	System.out.println(guestbookNo);

	GuestbookVo guestbookVo = guestbookDao.getGuestbook(guestbookNo);
	System.out.println(guestbookVo.toString());

%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action ="./delete.jsp" method="post">
		<input type="hidden" name="no" value="<%=guestbookVo.getNo() %>">
		비밀번호<input type="text" name="password" value="">
		<button type="submit">확인</button>
	</form>
	
	<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>