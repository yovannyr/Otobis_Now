<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header>
	<marquee behavior="alternate"> OtobisNow </marquee>
</header>

<head>
<title>Available Buses</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/commonCSS.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">    
           <nav class="navbar navbar-default">
           <div class="container-fluid">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
              </div>
              </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="busManagement.jsp">Bus management</a></li>
              <li><a href="routeManagement.jsp">Route management</a></li>
            </ul>
            </div>
            </nav>
            </div>
	
		
		     <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/OtobisNow"
        user="root" password="@rtemis143"
    />
     
    <sql:query var="listBuses"   dataSource="${myDS}">
        select * from Bus;

    </sql:query>
     
    <div align="center">
    <caption><h2>List of Buses</h2></caption>
        <table border="1" cellpadding="5" width = 40% height = 40%>
            <tr>
                <th>RegistrationNo</th>
                <th>BusTypeID</th>
                          </tr>
            <c:forEach var="bus" items="${listBuses.rows}">
                <tr>
                    <td><c:out value="${bus.Registration_No}" /></td>
                    <td><c:out value="${bus.BusType_ID}" /></td>
                    
                </tr>
            </c:forEach>
        </table>
    </div> 
		
		</div>
		
</body>
<br></br>
<center>
      <button type="submit" onclick="location.href='addbus.jsp'">Add Bus</button>
	<button type="submit"><a href = "addbus.jsp">Delete bus</a></button></center>
<footer>
	<span class="glyphicon glyphicon-road"></span>5000Routes
	<tb>&ensp;&ensp; <span class="glyphicon glyphicon-user"></span>500
	Operators</tb>
</footer>
</html>