<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%
        String email = request.getParameter("email");
		
        String mobilenumber = request.getParameter("mobileNumber");
        
        String password = request.getParameter("password");
        
        String securityQuestion = request.getParameter("securityQuestion");
        String answer = request.getParameter("answer");
        String newPassword = request.getParameter("newPassword");

        int check=0;
        try
        {
        Connection con = ConnectionProvider.getCon();
        Statement st=con.createStatement();
        
        ResultSet rs=st.executeQuery("select * from users where email='"+email+"'and mobilenumber='"+mobilenumber+"'");
        while(rs.next()){
        email=rs.getString(2);
        mobilenumber=rs.getString(3);
        password=rs.getString(6);
        }
        System.out.println(email+ " " +mobilenumber+ " " +password);
        
        
        //{
        	
        Statement st1=con.createStatement();
        int i=st1.executeUpdate("UPDATE users SET password= '"+newPassword+"'where email='"+email+"'");
        //response.sendRedirect("forgotPassword.jsp?msg=done");
        if(password!=null)
        {
        if(password.equals(newPassword)){
        	System.out.println("Invalid Current Password");
        response.sendRedirect("forgotPassword.jsp?msg=invalid");
        st1.close();
        con.close();
        }
        else{
        	
        System.out.println("Password changed successfully");
        response.sendRedirect("forgotPassword.jsp?msg=done");
        }
        }
        else{
        	System.out.println("Mobile number or email was incorrect");
        	response.sendRedirect("forgotPassword.jsp?msg=invalid");
        }
        }
        catch(Exception e){
        //System.out.println(e);
        //response.sendRedirect("forgotPassword.jsp?msg=invalid");
        }
        
        
        /*ResultSet rs=st.executeQuery("select * from users where email='"+email+"'and mobileNumber='"+mobilenumber+"'");
        while(rs.next()){
            check=1;
            st.executeUpdate("UPDATE users SET password= '"+newPassword+"'where email='"+email+"'");
            response.sendRedirect("forgotPassword.jsp?msg=done");
        }
        if(check==0){
        response.sendRedirect("forgotPassword.jsp?msg=invalid");
        }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }*/
%>