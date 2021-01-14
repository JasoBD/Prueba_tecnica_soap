<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
            rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1 align="center">Bienvenido
            <jsp:useBean id="validUsuario"  scope="session" class="webservices.Empleado"  />
            <jsp:getProperty name="validUsuario" property="nombres" />
        </h1>
        
        <h4 align="right">REGISTRAR USUARIO</h4>   <!-- Button trigger modal -->

        <div>
         <h4>LISTA DE USUARIOS </h4> <button type="button" align="right" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Crear usuario
</button>
         </div><br>
        <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
          </table>
     
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Crear Usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form action="SRegistrar" method="POST">
            <table class="table" border="0">

                <tbody>
                    <tr>
                        <td>Numero de documento</td>
                        <td><input type="text" class="form-control" name="txtDni" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input  class="form-control"  type="password" name="txtPass" value="" /></td>
                    </tr>
                     <tr>
                        <td>Nombres</td>
                        <td><input type="text" class="form-control"  name="txtNombres" value="" /></td>
                    </tr>
                    <tr>
                        <td>Apellidos</td>
                        <td><input type="text" class="form-control"  name="txtApellidos" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td>Tipo de documento</td>
                        <td><select class="form-control" name="cboPrivilegio">
                                <option value="CC">CC</option>
                                <option value="TI">TI</option>
                            </select></td>
                    </tr>
                    
                </tbody>
            </table>
            
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <input type="submit" value="REGISTRAR" class="btn btn-primary"name="btnRegistrar" /></td> 
      </div>
         </form>
    </div>
  </div>
</div>
       
    </body>
</html>
