<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 11/7/2016
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Duke's Bookstore</title></head>

<%@ page import="Demo.*" %>
<%
  BookDBAO db = new BookDBAO();
  BookDetails book = db.getBook();
%>

<body bgcolor="#ffffff">
<%@ include file="header.html" %>
<%--<center>--%>
  <%--<hr>--%>
  <%--<br> &nbsp;<h1><font size="+3" color="#CC0066">Duke's </font> <img src="./duke.books.gif" alt="Duke holding books">--%>
  <%--<font size="+3" color="black">Bookstore</font></h1>--%>
  <%--<br> &nbsp;--%>
  <%--<hr>--%>
<%--</center>--%>
<br> <b>What we are reading</b>
<blockquote><em><a href="bookdetails?bookId=<%= book.getBookId() %>"><%= book.getTitle() %></a></em> What a cool book.
</blockquote>
<p><a href="bookcatalog"><b>Start Shopping</b></a></p>
</body>
</html>
