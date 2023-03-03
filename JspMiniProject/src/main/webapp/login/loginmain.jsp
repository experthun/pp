<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		//세션에 저장된 loginok를 읽는다
		String loginok = (String)session.getAttribute("loginok");
	
		if(loginok==null)//로그아웃
		{%>
			<jsp:include page="loginform.jsp"/>
		<%}else{%>
			<jsp:include page="logoutform.jsp"/>
		<%}
	%>
</body>
</html>