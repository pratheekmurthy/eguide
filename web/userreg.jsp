<%-- 
    Document   : userreg
    Created on : Sep 27, 2017, 9:28:47 AM
    Author     : PRATHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page  import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        <%
            String type=request.getParameter("cnt");
            String type1=request.getParameter("firstname");
            String type2=request.getParameter("lastname");
            String type3=request.getParameter("dob");
            String type4=request.getParameter("emailid");
            String type5=request.getParameter("password");
            String type6=request.getParameter("confirmpassword");
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();     // we are specifying driver //
            
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root"); // to create connection between my database and the controller //
            
            Statement st=con.createStatement();        // con is a connection object & st is table object during compile time //
            
            st.executeUpdate("insert into registerdetails1 values('"+type+"','"+type1+"','"+type2+"','"+type3+"','"+type4+"','"+type5+"','"+type6+"')"); //what ever query we write will be executed with table //
            
            String Query="select * from registerdetails1";  // //
            
            PreparedStatement pt=con.prepareStatement(Query); //to store data during run time //
            
            ResultSet rt= pt.executeQuery();    // to store rows and columns data we get from prepared statement query we storing in rs //
            
            if(rt.next())      // if any value is present //
            {
                out.println("registered");
            }
            else
            {
                out.println("not registered");
            }
            
            
            %>
    </body>
</html>
