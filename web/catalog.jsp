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
<%@ page import="Demo.*, java.util.*" %>
<%
    List<BookDetails> books = (List<BookDetails>)request.getAttribute("books");
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
<br>
<h3>Please Choose from our selection</h3>
<br>
<center>
    <table summary="layout">
        <%
            for (BookDetails book: books) {
        %>
        <tr>
            <td bgcolor="#ffffaa"><a href="/bookdetails?bookId=<%= book.getBookId() %>"> <strong><%= book.getTitle()%></strong></a></td>
            <td bgcolor="#ffffaa" rowspan=2><%= book.getPrice() %></td>
            <td bgcolor="#ffffaa" rowspan=2><a href="/bookcatalog?bookId=<%= book.getBookId() %>"> Add to Cart </a></td>
        </tr>
        <tr>
            <td>by<em> <%= book.getFirstName() %></em></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
</body>
</html>
