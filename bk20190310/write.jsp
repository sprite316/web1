<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> write-form</title>
</head>
<body>
 	<form action="index.jsp" method="post" onsubmit="return formCheck();">
    NAME : <input type="text" name="title" /><br/>
    WRITER <input type="text" name="writer" /><br/>
    DATE : <input type="text" name="regdate" /><br/>
    CONTENT : <input type="text" name="content" /><br/>
    <input type="submit" />
   </form>
 
 <script> 
 request.setCharacterEncoding("euc-kr");

 //    function formCheck() {
//    var title = document.forms[0].title.value;     
//    var writer = document.forms[0].writer.value;
//    var regdate = document.forms[0].regdate.value;
//    var content = document.forms[0].content.value; 

//     if (title == null || title == ""){      
//         alert('제목을 입력하세요');          
//         document.forms[0].title.focus();    
//         return false;                       
//     }

//     if (writer == null ||  writer  == ""){   
//         alert('작성자를 입력하세요'); 
//         document.forms[0].writer.focus();            
//         return false;               
//     }

//     if (regdate == null || regdate == "" ){
//         alert('날짜를 입력하세요');   
//         document.forms[0].regdate.focus();
//         return false;            
//     }

// 	if (content == null ||  content == ""){
//         alert('내용을 입력하세요'); 
//         document.forms[0].content.focus();
//         return false;

//     }

// }
   
   
   function formCheck() {
	   	   var length = document.forms[0].length-1; 
	   // submit을 제외한 모든 input태그의 갯수를 가져옴
	   	   for(var i = 0; i < length; i++){     // 루프를 돌면서
	   	       if(document.forms[0][i].value == null || document.forms[0][i].value == ""){
	   	           alert(document.forms[0][i].name + "을/를 입력하세요."); // 경고창을 띄우고
	   	           document.forms[0][i].focus();           // null인 태그에 포커스를 줌
	   	           return false;
	   	       }//end if
	   	   }//end for
   }


</script>

  

 </body>

 </html>