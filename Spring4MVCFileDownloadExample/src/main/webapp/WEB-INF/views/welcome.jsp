<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Spring 4 MVC File Download Example</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<SCRIPT language="JavaScript">

function submitform1()
{
  alert("test");
  var x= document.getElementById("1").value;
  document.spr.actionKey.value='/Spring4MVCFileDownloadExample/download/'+x;
  document.spr.submit();
}

function submitform2()
{
  alert("test");
  var x= document.getElementById("2").value;
  document.spr.actionKey.value='/Spring4MVCFileDownloadExample/download/'+x;
  document.spr.submit();
}

</SCRIPT> 

<body>
	<div class="form-container">
		<h1>Welcome to FileDownloader Example</h1>
		
		Click on below links to see FileDownload in action.<br/><br/>
		<form:form  method="GET" action="/Spring4MVCFileDownloadExample/getfile" commandName="userchoice">
			<br>
			<form:input path="value" type="text"/>
			<%-- <form:button type="submit"></form:button> --%>
			<input type="submit" value="Download">
		</form:form>
		
		<a href="<c:url value='/download/internal' />">Download This File (located inside project)</a>  
		<br/>
		<a href="<c:url value='/download/external' />">Download This File (located outside project, on file system)</a>
		
	</div> 
</body>
</html>
