<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javavaex.dao.EmaillistDao" %>
<%@ page import="com.javaex.vo.EmaillistVo" %>



 <%
 request.setCharacterEncoding("UTF-8");
 String lastName=request.getParameter("ln");
 String firstName=request.getParameter("fn");
 String email=request.getParameter("email");
 
 EmaillistVo vo=new EmaillistVo(lastName,firstName,email);
 
 EmaillistDao dao=new EmaillistDao();
 dao.insert(vo);
 
 response.sendRedirect("list.jsp");
 
 
 


 %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <p>등록완료</p>

</body>
</html>