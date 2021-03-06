<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="images" value="/resources/images"/>
<spring:url var="js" value="/resources/js"/>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Online Shopping - ${title} </title>

<script>

window.menu = '${title}'
</script>
  <!-- Bootstrap core CSS -->
  <link href="${css}/bootstrap.min.css" rel="stylesheet">


  <!-- Bootstrap Readable Theme -->
  <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
  
  <!-- Custom styles for this template -->
  <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

<div class="wrapper">
 <%@include file="./shared/navbar.jsp"%>

<c:if test="${userClickHome == true}"> 
<!-- Page Content -->
<div>
<%@include file="home.jsp" %>
</c:if>

<c:if test="${userClickAbout == true}"> 
<!-- About Us -->
<%@include file="about.jsp" %>
</c:if>

<c:if test="${userClickContact == true}"> 
<!-- Contactt -->
<%@include file="contact.jsp" %>
</c:if>
</div>

  <!-- Footer -->
  <%@include file="./shared/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="${js}/jquery.min.js"></script>
  <script src="${js}/bootstrap.bundle.min.js"></script>
  <script src="${js}/myapp.js"></script>
</body>

</div>
</html>
