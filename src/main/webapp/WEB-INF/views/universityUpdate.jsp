<%@ page import="com.projectk.entities.User" %><%--
  Created by IntelliJ IDEA.
  User: AzRy
  Date: 7/27/2020
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Add University</title>
    <style><%@include file="styles/universityAdd.css"%></style>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
<%@include file="helpers/navbar.jsp"%>
<div class="col-md-4 col-md-offset-4" id="register">
    <section id="inner-wrapper" class="register">
        <article>
            <p>
            <h1 style="text-align: center; font-family: Chandas">
                University Update
            </h1>
            </p>
            <p style="color:darkred">
                <c:out value="${errorMessage}"></c:out>
            </p>
            <form style="text-align: center"  name="uniUpdateForm" action="/universityUpdate" method="post" onsubmit="return validateRequiredFields()">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"> </i></span>
                        <input type="number" id="uniCode"class="form-control" placeholder="University Code" name="code" value="123">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
                        <input type="text" id="uniName"class="form-control" placeholder="University Name" name="universityName" value="${university.universityName}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="text" id="uniCity" class="form-control" placeholder="City" name="city" value="${university.city}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="text" id="uniAddress" class="form-control" placeholder="Address" name="address" value="${university.address}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="text" id="uniWeb" class="form-control" placeholder="Web Page" name="webPageLink" value="${university.webPageLink}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="text" id="uniDescription" class="form-control" placeholder="Description" name="descriptions" value="${university.descriptions}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="hidden" id="uniId" class="form-control" placeholder="id" name="id" value="${university.id}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                        <input type="hidden" name="username" value="${sessionScope.user.username}" >
                    </div>
                </div>
                <button type="submit" class="btn btn-success btn-block">Update</button>
            </form>
        </article>
    </section>
</div>
<%@include file="helpers/footer.jsp"%>
</body>
</html>
<script><%@include file="js/universityAdd.js"%></script>