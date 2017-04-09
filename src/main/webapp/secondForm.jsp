<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Bonjour</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css" />
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
	</head>
	<body>
	  <nav>
	    <div class="nav-wrapper">
	      <a href="#" class="brand-logo center">Formulaire sans Session</a>
	    </div>
	  </nav>
        
       <main>
	       	<div class="row">
	       		<div class="card col m6 offset-m3 s12" style="margin-top: 64px">
	       			<div class="card-content">
	       				<span class="card-title">
	       					Formulaire
	       				</span>
	       				<hr/>
	       				<div class="row">
	       					<p class="col s12">
	       					Entrez votre adresse s'il vous plait
	       					</p>
	       				</div>
	       				<div class="row">
	       					<form action="finalForm" method="post">
	      						<div class="col m6 offset-m3 s12 center">
	      							<div class="input-field col s12">
							          <input id="address" type="text" class="validate" name="address" required="" autofocus>
							          <label for="address">Adresse postale</label>
							        </div>
	      						</div>
                                <!-- Hidden fields -->
                                <input type="text" value="${requestScope['name']}" name="name" class="hidden" />
                                <input type="text" value="${requestScope['first-name']}" name="first-name" class="hidden" />
	      						<div class="row center">
	      							<div class="col s6 offset-s3">
	      								<button class="btn waves-effect waves-light" name="submit" type="submit">Suivant
									    	<i class="material-icons right">keyboard_arrow_right</i>
									  	</button>
	      							</div>
	      						</div>
	      					</form>
	       				</div>
	       			</div>
	       		</div>
	       	</div>
	    </main>
	       	
	    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
	    <script src="js/form-validator.js"></script>

		<script>
            $(document).ready( function () {
                // Lors du clique sur le bouton d'envoie
                $("button[name=submit]").click( function() {

                    if(!validate( [ $("input#address").val() ], "adresse postale")) {
                        Materialize.toast(`
                                            <p>Il y a une erreur dans le formulaire. Veuillez verifier que :</p>
                                            <ul>
                                                <li>Le champ est bien rempli</li>
                                                <li>Qu'il n'y ai pas d'autre caractères que des lettres, des chiffres et virgule + espace</li>
                                            </ul>

                                          `,4000);
                        return false;
                    }
                });
            });
		</script>
	</body>
</html>