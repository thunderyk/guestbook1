<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int deleteNum = Integer.parseInt(request.getParameter("no"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="post">
		<div>
			<label>비밀번호</label>
			<input type="password" name="password">
			<input type="hidden" name="no" value=<%=deleteNum%>>
			<button type="submit">확인</button>
		</div>
	</form>
	<br>
	<a href="./addList.jsp">메인으로 돌아가기</a>	
</body>
</html>