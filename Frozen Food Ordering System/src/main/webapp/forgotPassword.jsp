<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
<div class='signup'>
<form action="forgotPasswordAction.jsp" method="post">
<input type="email" name="email" placeholder="Enter Email" required>
<input type="text" name="mobileNumber" placeholder="Enter Mobile Number" required>
<!-- <select name="securityQuestion">
<option value="What was your first car">What was your first car?</option>
<option value="What is the name of your first pet">What is the name of your first pet?</option>
<option value="What elementary  school did you attend">What elementary  school did you attend?</option>
<option value="What is the name of the tawn where you were born">What is the name of the tawn where you were born? </option>
</select> 
<input type="text" name="answer" placeholder="Enter Answer" required> -->
<input type="password" name="newPassword" placeholder="Enter your new password to set" required>
<input type="submit" value="Save">
</form>

<h2><a href="login.jsp">Login</a></h2>
</div>
<div class='whyforgotpassword'>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h1> Password Changed Successfully! </h1>
<%} %>
<%
if("invalid".equals(msg))
{
    %>
<h1>some thing went wrong! Try Again !</h1>
<%}%>
<h2>Frozen Food Ordering System</h2>
<p>The Frozen Food Ordering System is the application that allows the users to shop online without</p>
</div>
</div>
</body>
</html>