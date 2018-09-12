<%--
  Created by IntelliJ IDEA.
  User: 蝈蝈
  Date: 2018/5/6
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Date" pageEncoding="UTF-8" %>

<html>
<head>
    <title></title>
    <script>
        var a=username;
        alert(a)
    </script>
</head>
<body>

    <form action="index.jsp" method="post">
        <table align="center">
            <tr>
                <td>
                    <h3>添加用户</h3>
                </td>
            </tr>
            <tr>
                <td>
                    姓名：
                </td>
                <td>
                   <input name="username" type="text" id="username"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input  type="submit" value="add"/>
                </td>
                <td>
                    <input  type="reset" value="reset"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
