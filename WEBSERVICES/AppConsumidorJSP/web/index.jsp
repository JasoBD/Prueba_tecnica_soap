<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
            rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    </head>
    <body>
        
        <h1 style="text-align: center;">LOGIN USUARIO</h1>
        <form action="SAutentificacion" method="POST">
            <table border="0" style="margin-left: 38%;">
                <tbody>
                    <tr>
                        <td>Numero de docuemnto:</td>
                        <td ><input type="number" class="form-control" name="txtDni" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="password" class="form-control" name="txtPass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Tipo de documento</td>
                        <td><select class="form-control" name="cboPrivilegio">
                                <option value="CC">CC</option>
                                <option value="TI">TI</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit"   class="btn btn-primary" value="INGRESAR" name="btnIngresar" /></td>
                    </tr>
                 
                </tbody>
            </table>

        </form>
    </body>
</html>
