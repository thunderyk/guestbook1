<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestBookDao"%>
<%@ page import = "com.javaex.vo.GuestBookVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	String password = request.getParameter("password");
	int deleteNum = Integer.parseInt(request.getParameter("no"));
	GuestBookDao guestBookDao = new GuestBookDao();
	GuestBookVo guestBookVo = guestBookDao.getGuestBook(deleteNum);
%>

<!DOCTYPE html>
<html>

<%
	if(password.equals(guestBookVo.getPassword())){
		guestBookDao.deleteGuestBook(deleteNum);
		response.sendRedirect("./addList.jsp");	
	}else{
		%>
		<script>
			alert('비밀번호가 틀렸습니다.');
			location.href="./addList.jsp";
		</script>		
<%  }%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>