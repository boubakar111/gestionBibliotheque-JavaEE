<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//FR" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset= utf-8" />
<title>Bibliotheque</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");
		if (sds == null) {
			alert("You are using a free package.\n You are not allowed to remove the tag.\n");
		}
	}
</script>

<SCRIPT LANGUAGE="JavaScript">
	function dil(form) {
		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Fill out all Fields")
				document.F1.username.focus()
				return false
			}
		}
		if (!isNaN(document.F1.username.value)) {
			alert("User Name  must  be  char's & can't be null")
			document.F1.username.value = ""
			document.F1.username.focus()
			return false
		}

		if (document.F1.password.value != document.F1.repassword.value) {
			alert("Check Confirm PWD");
			document.F1.repassword.value = ""
			document.F1.repassword.focus()
			return false
		}

		if (!isNaN(document.F1.phone.value)) {
			if (document.F1.phone.value > 9999999999) {
				alert("ye kabhi nhi aayegi")
				document.F1.phone.value = ""
				document.F1.phone.focus()
				return false
			}
		} else {
			alert("This  field  must  be  number")
			document.F1.phone.value = ""
			return false
		}

		if (!isNaN(document.F1.syd.value)) {
			alert("designation  must  be  char's & can't be null")
			document.F1.syd.value = ""
			document.F1.syd.focus()
			return false
		}

		return true
	}
</SCRIPT>

</head>
<body>
	<div id="templatemo_header_wrapper">
		<div id="templatemo_header">
			<div id="site_title">
				<h1>
					<a href="#" target="_parent"> <img
						src="images/logo-bibliotheque.png" alt="Site Title" />
					</a>
				</h1>
			</div>
			<p>Sont considérés comme lecteurs extérieurs les particuliers,
				mais aussi les étudiants, enseignants et chercheurs non affiliés à
				notre bibliotheque ou ne faisant plus partie des effectifs pour
				l’année en cours..</p>

		</div>
		<!-- end of templatemo_header -->
	</div>

	<div id="templatemo_menu_wrapper">
		<div id="templatemo_menu">

			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="admin.jsp">Adminstrator</a></li>
				<li><a href="member.jsp">Library Member</a></li>
				<li><a href="bookdetailsforbookdetails.jsp">Book Details</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactus.jsp">Contact Us</a></li>
			</ul>

		</div>
		<!-- end of templatemo_menu -->
	</div>

	<div id="templatemo_content_wrapper">

		<div id="templatemo_sidebar">

			<div class="sidebar_box">

				<h2>Conditions d’inscription</h2>

				<div class="news_box">
					<a href="#">L’inscription se fait sur présentation d’un
						justificatif de scolarité (carte d’étudiant ou certificat) ou
						d’une pièce d’identité..</a>

					<p class="post_info">
						Posted by <a href="#">Adminstration </a> <span>Avril 30,
							2019</span>
					</p>
				</div>



				<div class="news_box">
					<a href="#">Attention : si vous souhaitez utiliser votre carte
						pour vous inscrire à la fois dans les bibliothèques de prêt et
						dans les bibliothèques patrimoniales et spécialisées, merci de
						conserver votre duplicata pour la deuxième inscription..</a>
					<p class="post_info">
						Posted by <a href="#">Adminstration</a> on <span>Avril 4,
							2019</span>
					</p>
				</div>

			</div>
			<div class="sidebar_box_bottom"></div>

			<div class="sidebar_box">

				<h2>Modalités de prêts</h2>

				<div class="section_w250 float_l">
					<h3></h3>
					<p>-Prêt : 6 documents pour 14 jours pour les lecteurs inscrits
						au trimestre ou à l’année (7 jours pour les revues et DVD)</p>
					<p>-L’inscription à la journée permet la consultation des
						documents sur place uniquement Les lecteurs extérieurs n’ont pas
						accès aux ressources électroniques</p>
				</div>

				<div class="cleaner"></div>

			</div>
			<div class="sidebar_box_bottom"></div>

		</div>
		<!-- end of sidebar -->
		<div id="templatemo_content">

			<div class="content_box">

				<td valign="top">
					<%
						out.print("<font color=blue>WELCOME TO REGISTION FORM<br><br>");
					%>


					<form name=F1 onSubmit="return dil(this)" action="CreateServlet">
						<table height="350" cellspacing="5" cellpadding="3">

							<tr>
								<td>USER NAME:</td>
								<td><input type="text" name="username" /></td>
							</tr>
							<tr>
								<td>PASSWORD:</td>
								<td><input type="password" name="password" /></td>
							</tr>
							<tr>
								<td>RE-PASSWORD:</td>
								<td><input type="password" name="repassword" /></td>
							</tr>
							<tr>
								<td>PHONE:</td>
								<td><input type="text" name="phone" /></td>
							</tr>
							<tr>
								<td>ADDRESS:</td>
								<td><textarea rows=4 cols=40 wrap=virtual name="adderess"></textarea></td>
							</tr>

							<TR>
								<TD>Select your designation:</TD>
								<TD><SELECT NAME="syd">
										<option>student
											<option>professor
												<option>Associate-Professor
													<option>lecturer
														<option>non-teaching staff
								</SELECT></TD>

							</TR>

							<tr>
								<td></td>
								<td><input type="submit" value="Submit" /> <INPUT
									TYPE=RESET VALUE="CLEAR"></td>
							</tr>
						</table>
					</form>

					<div class="cleaner"></div>
			</div>
			<div class="content_box_bottom"></div>

			 <div class="content_box">
        
        	<h2>Infos</h2>
            
            <div class="section_w250 float_l">
				<h3>infos  pratique</h3>            
				<p>des professionnels du livre. Vous cherchez un auteur, 
				un éditeur, une librairie, une bibliothèque ou
				 une manifestation littéraire ? C'est par ici !</p>
            
            </div>  
            
            <div class="section_w250 float_r">
				<h3>fete  du livre </h3>            
				<p>Parti en livre - Rendez-vous en 2020 ! ‹ › Présentation. Partir 
				en Livre, c'est quoi ? En 2019, la 5e édition a rassemblé 700 000 participants 
				et 7 150 événement.</p>
            
            </div>            
           
        
        	<div class="cleaner"></div>
        </div><div class="content_box_bottom"></div>
    
    </div> <!-- end of content -->
    
  	<div class="cleaner"></div>

	</div>

	<div id="templatemo_footer_wrapper">

		<div id="templatemo_footer">

			<ul class="footer_menu">
				<li><a href="index.html">Home</a></li>
				<li><a href="admin.jsp">Adminstrator</a></li>
				<li><a href="member.jsp">Library Member</a></li>
				<li><a href="bookdetailsformember.jsp">Book Details</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactus.jsp">Contact Us</a></li>
			</ul>

			Copyright © 2019 <a href="#">Your Company Name</a> | <a
				href="#" target="_parent">Website
				Projects</a> by <a href="#" target="_parent">yamsel1</a>
		</div>

	</div>
	<div align=center>
		    <a href='#'>free
			website </a>
	</div>
</body>
</html>