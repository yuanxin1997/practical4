<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 11/7/2016
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Duke's Bookstore</title></head>
<%@ page import="Demo.*" %>
<%
    BookDetails book = (BookDetails)request.getAttribute("book");
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


<h2><%= book.getTitle() %></h2>&nbsp; by<em> <%= book.getFirstName() + " " + book.getSurname() %>  (<%= book.getYear() %>)<br> <br>
    <h4>Here's what the critcs say: </h4>
    <blockquote>What a cool book.</blockquote>
    <h4>Our Price: <%= book.getPrice() %></h4>


    <p><strong><a href="/bookcatalog?bookId=<%= book.getBookId() %>">Add to Cart</a> <a href="/bookcatalog">Continue Shopping</a></strong></p>
</body>
</html>
