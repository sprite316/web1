<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sqL.*" %>
<%@ page import="java.sqL.Connection" %>
<%@ page import="java.sqL.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("euc-kr");

//      int idx = 1;
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

try {
    	 String driverName = "oracle.jdbc.driver.OracleDriver"; //데이터베이스에 접속하기위한 드라이버를 로드합니다.
         String url = "jdbc:oracle:thin:@localhost:1521:XE";            //접속 URL정보와 포트번호(oracle포트), sid(oracle버전)
         Class.forName(driverName);
         Connection con = DriverManager.getConnection(url,"board","1234");    // getCo... : 계정정보 url, id, pw
         out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
         con.close();
     
    } catch (Exception e) {
     
         out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");
     
         out.println(e.getMessage());
     
         e.printStackTrace();
     
    }

%>

</body>
</html>