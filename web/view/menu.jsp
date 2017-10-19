<%@page import="java.util.ArrayList"%>
<%@page import="bean.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <%
            int id = 0;
            String nome = null;
            String email = null;

            List<Usuario> usuario = (ArrayList) session.getAttribute("objUsuario");
            for (Usuario u : usuario) {
                id = u.getId();
                nome = u.getNome();
                email = u.getEmail();
                out.print(u.getNome());
            }
        %>

        <p>Olá <%=nome%>!</p>
        <p>Seu ID é: <%=id%></p>
        <p>Seu e-mail é: <%=email%></p>
        <br>
        <p><a href="Logout">Logout</a></p>
    </body>
</html>
