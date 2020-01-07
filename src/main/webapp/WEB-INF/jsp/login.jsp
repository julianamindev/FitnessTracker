<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fitness Tracker Login</title>
    <style type="text/css">
        .errorblock {
            color: #ff0000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body onload='document.f.j_username.focus();'>
    <h3>Fitness Tracker Custom Login Page</h3>
    <c:if test="${not empty error}">
        <div class="errorblock">
            Login unsuccessful. <br/>
            Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
        </div>
    </c:if>
<!-- In Spring 3.2.x, /login is j_spring_security_check, this is changed to /login in Spring 4.0
 j_username, j_password defaults to username and password -->
    <form action="login" name="f" method="post">
        <table>
            <tr>
                <td>User:</td>
                <td><input type="text" name="username" value=""></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="Submit" value="Submit"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="reset" name="Reset"></td>
            </tr>
        </table>
    </form>
</body>
</html>
