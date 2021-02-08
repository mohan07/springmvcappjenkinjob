<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 

<body>


<spring:form method="post" action="saveCustomer" modelAttribute="customer">


<spring:label path="custName">Customer Name</spring:label>
<spring:input path="custName"/> 
<spring:errors path="custName" cssClass="error"  cssStyle="color:red"></spring:errors>


<spring:label path="custAddress">Customer Address</spring:label>
<spring:input path="custAddress"/> 
<spring:errors path="custAddress" cssClass="error" cssStyle="color:red"></spring:errors>


<spring:button>Save Employee</spring:button>

</spring:form>






</body>
</html>