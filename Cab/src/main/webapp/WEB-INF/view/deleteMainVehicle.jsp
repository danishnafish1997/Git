<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.CabBooking.Cab.Bean.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=CadetBlue>
	<div style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Welcome</h1>
	<h2 align="center">Enter the vehicle details to be deleted</h2>
	</div>
	<h3 align="center" style="color: red;">${Warning}</h3>
	<form  action="vehicleFinalDelete" METHOD=POST >
	<% VehicleBean vehicleBean=(VehicleBean)request.getAttribute("returning_object");
	  boolean b=false;
	  boolean c=false;
	  if(vehicleBean.getVehicleType().equals("AC"))
		  b=true;
	  else
		  c=true;
	%>
	<table align="center">
	<tr><td> Vehicle Number</td><td><input type="text" name=vehicleNumber value=<%=vehicleBean.getVehicleNumber() %> readonly="readonly"></td></tr>
	<tr><td>Vehicle Name</td><td><input type="text" name=vehicleName readonly="readonly" value=<%=vehicleBean.getVehicleName() %>></td></tr>
	<tr><td>Vehicle Type</td><td><input type="radio" name="vehicleType" readonly="readonly" checked=<%=c %> value="AC">AC<br>
	                       <input type="radio" name="vehicleType" readonly="readonly" checked=<%=b %> value="Non-AC">Non-AC</td></tr>
	<tr><td></td><td><input type="submit" value="Confirm Delete Vehicle"></td></tr>
	</table>
	</form>
	<a href="home">GO to home</a>
</body>
</html>