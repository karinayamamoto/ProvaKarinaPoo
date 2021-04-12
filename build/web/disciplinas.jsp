<%-- 
    Document   : index
    Created on : 12 de abr. de 2021, 00:26:45
    Author     : cutekah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    double IBD1 = 0;
    double IBD2 = 0;
    double IES1 = 0;
    double IES2 = 0;
    double POO1 = 0;
    double POO2 = 0;
    double ILP1 = 0;
    double ILP2 = 0;
    double ISO1 = 0;
    double ISO2 = 0;
    double LIN1 = 0;
    double LIN2 = 0;
    double TTG1 = 0;
    double TTG2 = 0;  
    
    try {
        IBD1= Double.parseDouble(request.getParameter("session.IBD1"));
        session.setAttribute("session.IBD1", request.getParameter("session.IBD1"));
        IBD2= Double.parseDouble(request.getParameter("session.IBD2"));
        session.setAttribute("session.IBD2", request.getParameter("session.IBD2"));
    }catch (Exception ex) {
        errorMessage="ERRO";
        
    }try {
        IES1= Double.parseDouble(request.getParameter("session.IES1"));
        session.setAttribute("session.IES1", request.getParameter("session.IES1"));
        IES2= Double.parseDouble(request.getParameter("session.IES2"));
        session.setAttribute("session.IES2", request.getParameter("session.IES2"));
    }catch (Exception ex) {
        errorMessage="ERRO";
        
    }try {
        POO1= Double.parseDouble(request.getParameter("session.POO1"));
        session.setAttribute("session.POO1", request.getParameter("session.POO1"));
        POO2= Double.parseDouble(request.getParameter("session.POO2"));
        session.setAttribute("session.POO2", request.getParameter("session.POO2"));
    }catch (Exception ex) {
        errorMessage="ERRO";
    }try {
        ILP1= Double.parseDouble(request.getParameter("session.ILP1"));
        session.setAttribute("session.ILP1", request.getParameter("session.ILP1"));
        ILP2= Double.parseDouble(request.getParameter("session.ILP2"));
        session.setAttribute("session.ILP2", request.getParameter("session.ILP2"));
    }catch (Exception ex) {
        errorMessage="ERRO";
    }try {
        ISO1= Double.parseDouble(request.getParameter("session.ISO1"));
        session.setAttribute("session.ISO1", request.getParameter("session.ISO1"));
        ISO2= Double.parseDouble(request.getParameter("session.ISO2"));
        session.setAttribute("session.ISO2", request.getParameter("session.ISO2"));
    }catch (Exception ex) {
        errorMessage="ERRO";
    }try {
        LIN1= Double.parseDouble(request.getParameter("session.LIN1"));
        session.setAttribute("session.LIN1", request.getParameter("session.LIN1"));
        LIN2= Double.parseDouble(request.getParameter("session.LIN2"));
        session.setAttribute("session.LIN2", request.getParameter("session.LIN2"));
    }catch (Exception ex) {
        errorMessage="ERRO";
    }try {
        TTG1= Double.parseDouble(request.getParameter("session.TTG1"));
        session.setAttribute("session.TTG1", request.getParameter("session.TTG1"));
        TTG2= Double.parseDouble(request.getParameter("session.TTG2"));
        session.setAttribute("session.TTG2", request.getParameter("session.TTG2"));
    }catch (Exception ex) {
        errorMessage="ERRO";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DISCIPLINAS</title>
    </head>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <% if(session.getAttribute("session.username")!=null) { %>
    <form method="post">
        <table border="2">
            <tr>
                <th>DISCIPLINAS</th>
                <th>ADC NOTA P1</th> 
                <th>ADC NOTA P2</th>
                <th>P1</th>
                <th>P2</th>
            </tr>
            
            <tr>
                <td>BANCO DE DADOS</td>
                <td><input type="number" value="<%= IBD1%>" name="session.IBD1"</td>
                <td><input type="number" value="<%= IBD2%>" name="session.IBD2"</td>
                <td><%= session.getAttribute("session.IBD1")  %></td>
                <td><%= session.getAttribute("session.IBD2")  %></td>
            </tr>
            
            <tr>
                <td>ENGENHARIA DE SOFTWARE</td>
                <td><input type="number" value="<%= IES1%>" name="session.IES1"</td>
                <td><input type="number" value="<%= IES2%>" name="session.IES2"</td>
                <td><%= session.getAttribute("session.IES1")  %></td>
                <td><%= session.getAttribute("session.IES2")  %></td>
            </tr>
            
            <tr>
                <td>PROG ORIENTADA A OBJTS</td>
                <td><input type="number" value="<%= POO1%>" name="session.POO1"</td>
                <td><input type="number" value="<%= POO2%>" name="session.POO2"</td>
                <td><%= session.getAttribute("session.POO1")  %></td>
                <td><%= session.getAttribute("session.POO2")  %></td>
            </tr>
            
            <tr>
                <td>LINGUAGEM DE PROG INTERNET</td>
                <td><input type="number" value="<%= ILP1%>" name="session.ILP1"</td>
                <td><input type="number" value="<%= ILP2%>" name="session.ILP2"</td>
                <td><%= session.getAttribute("session.ILP1")  %></td>
                <td><%= session.getAttribute("session.ILP2")  %></td>
            </tr>
            
            <tr>
                <td>SISTEMAS OPERACIONAIS</td>
                <td><input type="number" value="<%= ISO1%>" name="session.ISO1"</td>
                <td><input type="number" value="<%= ISO2%>" name="session.ISO2"</td>
                <td><%= session.getAttribute("session.ISO1")  %></td>
                <td><%= session.getAttribute("session.ISO2")  %></td>
            </tr>
            
            <tr>
                <td>INGLES</td>
                <td><input type="number" value="<%= LIN1%>" name="session.LIN1"</td>
                <td><input type="number" value="<%= LIN2%>" name="session.LIN2"</td>
                <td><%= session.getAttribute("session.LIN1")  %></td>
                <td><%= session.getAttribute("session.LIN2")  %></td>
            </tr>
            
             <tr>
                <td>METODOLOGIA</td>
                <td><input type="number" value="<%= TTG1%>" name="session.TTG1"</td>
                <td><input type="number" value="<%= TTG2%>" name="session.TTG2"</td>
                <td><%= session.getAttribute("session.TTG1")  %></td>
                <td><%= session.getAttribute("session.TTG2")  %></td>
            </tr>
        </table>
            <input type="submit" value="ENVIAR">
    </form>
            <%}else{%>
            <div style='color:red'>USUARIO SEM PERMISSAO DE ACESSO!</div>
            <a href="index.jsp">RETORNAR AO INICIO</a>
        <%}%>    
        </body>    
</html>
