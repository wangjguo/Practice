<%--
  Created by IntelliJ IDEA.
  User: ����
  Date: 2018/5/6
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>
<html>
  <head>
    <title>jsp连接数据库</title>
  </head>
  <body>
  <table border="1" align="center">
    <tr>
      <th>ds</th>
      <th>dsad</th>
    </tr>
    <%
      Class.forName("com.mysql.jdbc.Driver") ;
//      String driverClass = "com.mysql.jdbc.Driver";
      String url  = "jdbc:mysql://localhost:3306/ordersys";
      String user = "root";
      String password = "root";
      Connection conn = null;
      try {
//          Class.forName(driverClass).newInstance();
          conn = DriverManager.getConnection(url,user,password);
          Statement stmt = conn.createStatement();
          String sql = "SELECT * FROM roleinfo";
          ResultSet rs = stmt.executeQuery(sql);
          while (rs.next()){
    %>
    <tr>
      <td><%=rs.getString("roleId")%></td>

      <td><%=rs.getString("roleName")%></td>

    </tr>
    <%
        }
      }catch (Exception ex){
          ex.printStackTrace();
      }

    %>

  </table>
  </body>
</html>
