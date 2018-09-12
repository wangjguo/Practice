<%--
  Created by IntelliJ IDEA.
  User: ����
  Date: 2018/5/6
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>
<%--<%@page import="java.util.*" %>--%>
<%@ page import="java.awt.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
  <head>
    <title>jsp连接数据库</title>
  </head>
  <body>

    <%
      ArrayList list = new ArrayList();
      Class.forName("com.mysql.jdbc.Driver");
//      String driverClass = "com.mysql.jdbc.Driver";
      String url  = "jdbc:mysql://localhost:3306/ordersys";
      String user = "root";
      String password = "root";
      Connection conn = null;
      try {
          conn = DriverManager.getConnection(url,user,password);
      }catch (SQLException e){
        e.printStackTrace();
      }
      String sql = "SELECT roleName FROM roleinfo";
      try{
      Statement statement = conn.createStatement();
      ResultSet rest = statement.executeQuery(sql);
         while (rest.next()){
             String id = rest.getString(1);
             list.add(id);
        }
      }catch (SQLException e){
        e.printStackTrace();
      }

    %>

    <from>
      <select style="width:100px;">
        <%
         for (int i = 0; i < list.size(); i++){

       %>
       <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
        <%
        }
       %>
       </select>
    </from>


  </body>
</html>
