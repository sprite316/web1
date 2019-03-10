<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> list</title>
</head>
<body>
<h1> 게시판 </h1>
  <table>
    <tr>
      <th>번호</th>
      <th>제목</th>
      <th>작성자</th>
      <th>날짜</th>
      <th>조회수</th>
    </tr>


<%
request.setCharacterEncoding("euc-kr");

     int idx = 1;
     String title = request.getParameter("title");
     String writer = request.getParameter("writer");
     String regdate = request.getParameter("regdate");
     int count = 10000;
     String content = request.getParameter("content");
     
     if(title == "" ||title == null) out.println("title이 null입니다.");
     if(writer == "" ||writer == null)
    	 out.println("writer가 null입니다.");
     else if(!Pattern.matches("^[_0-9a-zA-Z-]+@[0-9a-zA-Z-]+(.[_0-9a-zA-Z-]+)*$", writer))
    	 out.println("이메일 형식이 아닙니다.");
     if(regdate == "" ||regdate == null)
    	 out.println("regdate가 null입니다.");
     else if(!Pattern.matches("^[0-9]*$", regdate))
    	 out.println("숫자형식이 아닙니다.");
     if(content == "" ||content == null) out.println("content가 null입니다.");
 %>





<tr>


    <td><%=idx %></td>                     
    <td><%=title %></td>
    <td><%=writer %></td>
    <td><%=regdate %></td>
    <td><%=count %></td>
   
</tr>


  </table>
  <a href="write.jsp">작성하기</a>
</body>
</html>