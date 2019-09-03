<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登陆</title>
</head>
<body>
<%
     session.invalidate();
 %>
<center>
<br><br>
<marquee width="200"scrolldelay="250"><font size=+6>用户登录</font></marquee><br>
<form action="UserLoginServlet" method="post">
  <table>
  
    <tr height=40px;>
    <td>用户名：</td>
    <td> <input type="text" name = "name">  </td>
    </tr>
    <tr height=40px;>
    <td>密&emsp;码：</td>
    <td> <input type="text" name = "password">  </td>
    </tr>
    
  </table><br>
  <input type="radio" name ="type" value="student" checked >用户&emsp;&emsp;&emsp;
  <input type="radio" name = "type" value="manager">管理员<br><br>
  <input type="submit" value="登陆" style="width:200px">

</form>

</body>
<script type="text/javascript">
     window.history.forward(1);
</script>
</html>
