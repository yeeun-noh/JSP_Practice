<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="movie" class="com.mission.javabeans.MovieBean" />
<jsp:setProperty name="movie" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>입력 완료된 정보</h2>
	<table>
		<tr>
			<td>제목</td>
			<td><jsp:getProperty name="movie" property="title" /></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><jsp:getProperty name="movie" property="price" /></td>
		</tr>
		<tr>
			<td>감독</td>
			<td><jsp:getProperty name="movie" property="director" /></td>
		</tr>
		<tr>
			<td>출연배우</td>
			<td><jsp:getProperty name="movie" property="actor" /></td>
		</tr>
		<tr>
			<td>시놉시스</td>
			<td><jsp:getProperty name="movie" property="synopsis" /></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><jsp:getProperty name="movie" property="genre" /></td>
		</tr>
	</table>
</body>
</html>