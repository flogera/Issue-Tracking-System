<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Issue Tracking Application</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-11 text-center">
          <h1 class="title" align="center">Issue-Tracking Web-Based Application</h1>
          <div class="panel panel-default">
            <div class="panel-heading">
            </div>
            </div>
 <div align="center">
 <h1>Login Form</h1>
  <form action="<%=request.getContextPath()%>/login" method="post">
   <table style="with: 100%">
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>

   </table>
   <input type="submit" value="LOGIN" />
   </form>
   <p>Not a User?<br> Please fill in your details in the below form. </p>
  <h1>Register Form</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 100%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
   </table>
   <input type="submit" value="SUBMIT" />
  </form>
 </div>
 </div>
 </div>
 </div>
</body>
</html>