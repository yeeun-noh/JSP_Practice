<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Cookie cookie = new Cookie("username", "");
	cookie.setMaxAge(0); //쿠키의 유효기간을 만료시킴
	response.addCookie(cookie);
	%>
	<script>
		alert("로그아웃 되었습니다.");
		location.href="loginForm.jsp";
	</script>
</body>
</html>