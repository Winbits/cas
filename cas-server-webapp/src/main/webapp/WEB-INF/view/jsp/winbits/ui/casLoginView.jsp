<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en" class="login_page">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Administrador winbits - Login</title>
    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.1/css/bootstrap.css" rel="stylesheet">
    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.1/css/bootstrap-responsive.min.css"
          rel="stylesheet">
    <link href="//cdn.jsdelivr.net/qtip2/2.2.0/basic/jquery.qtip.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css"/>
    <link href='//fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script src="js/jquery.actual.min.js"></script>
    <script type="text/javascript"
            src="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.1/bootstrap.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/3.46/jquery.form.js"></script>
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico"/>
    <script src="js/winbitsLogin.js"></script>
</head>
<body>

<div class="login_box">

    <form:form commandName="${commandName}" method="post" id="login_form" htmlEscape="true">
        <div class="top_b">Ingresa al administrador winbits</div>
        <form:errors path="*" id="msg" cssClass="errors" element="div">
            <%--
                out.println("No Auth");
                response.sendError(401);
            --%>
            <div class="alert alert-error" id="errorWinbits" >
                <strong>credenciales no validas.</strong>
            </div>
        </form:errors>
        <div class="cnt_b">
            <div class="formRow">
                <div class="input-prepend">
                    <span class="add-on"><i class="icon-user"></i></span><input type="text" id="username"
                                                                                name="username" placeholder="email"
                                                                                value=""/>
                </div>
            </div>
            <div class="formRow">
                <div class="input-prepend">
                    <span class="add-on"><i class="icon-lock"></i></span><input type="password" id="password"
                                                                                name="password" placeholder="password"
                                                                                value=""/>
                </div>
            </div>
            <div class="formRow clearfix">
                <input type="checkbox" name="rememberMe" id="rememberMe" value="true" />
             <label for="rememberMe"/> Recu&eacute;rdame en este equipo</label>
            </div>
        </div>
        <div class="btm_b clearfix">
            <button class="btn btn-inverse pull-right" type="submit">Ingresar</button>
        </div>


        <div class="row btn-row" align="right">
            <input type="hidden" name="lt" value="${loginTicket}"/>
            <input type="hidden" name="execution" value="${flowExecutionKey}"/>
            <input type="hidden" name="_eventId" value="submit"/></div>
    </form:form>

    <form action="home.html" method="post" id="pass_form" style="display:none">
        <div class="top_b">&iquest;No recuerdas tu password?</div>
        <div class="alert alert-info alert-login">
            Ingresa el email con el que estas registrado y recibir&aacute;s un link para crear un password nuevo
        </div>
        <div class="cnt_b">
            <div class="formRow clearfix">
                <div class="input-prepend">
                    <span class="add-on">@</span><input type="text" id="mail" name="mail" placeholder="Tu email"
                                                        value=""/>
                </div>
            </div>
        </div>
        <div class="btm_b tac">
            <button class="btn btn-inverse" type="submit">Recupera password</button>
        </div>
    </form>

    <div class="links_b links_btm clearfix">
        <span class="linkform"><a href="#pass_form">&iquest;Olvidaste tu password?</a></span>
        <span class="linkform" style="display:none"><a href="#login_form">Regresar al login</a></span>
    </div>
</div>
</body>
</html>
