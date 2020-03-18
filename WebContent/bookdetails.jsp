<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
				document.F1.accountno.focus()
				return false
			}
		}

		if (isNaN(document.F1.accountno.value)) {
			alert("Accountno must  be  number & can't be null")
			document.F1.accountno.value = ""
			document.F1.accountno.focus()
			return false
		}
		if (!isNaN(document.F1.username.value)) {
			alert("User Name  must  be  char's & can't be null")
			document.F1.username.value = ""
			document.F1.username.focus()
			return false
		}

		if (!isNaN(document.F1.password.value)) {
			alert("Password  must  be  char's & can't be null")
			document.F1.password.value = ""
			document.F1.password.focus()
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
						src="images/logo-bibliotheque.png" alt="Site Title" /> <span>free
							css templates</span>
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
	<!-- end of templatemo_menu_wrapper -->

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
						
					%>
					<table>
						<%
							if (request.getAttribute("newbook") != null) {
								out.print("<div>");
								out.print("<font color='blue'><font size='4'>" + request.getAttribute("newbook") + "");

								out.print("</div>");
							}
						%>
					</table> <%
 	
 %> <%
 	
 %>
					<table>
						<%
							if (request.getAttribute("deleted") != null) {
								out.print("<div>");
								out.print("<font color='blue'><font size='4'>" + request.getAttribute("deleted") + "");

								out.print("</div>");
							}
						%>
					</table> <%
 	
 %>
					<table height="380">
						<%
							try {
								Connection con = GetCon.getCon();

								PreparedStatement ps = con.prepareStatement("Select * from BOOKDETAILS");

								ResultSet rs = ps.executeQuery();
								out.print("<font color='blue'>Details of Books</font>");

								out.print("<td><a href='deletebookdetails.jsp'>Delete</a></td>");
								out.print("<td><a href='updatebookdetails.jsp'>update</a></td>");

								out.print("<tr><th>ID</th><th>BOOKNAME</th><th>AUTHOR</th></tr>");
								while (rs.next()) {
												
									out.print("<tr>");

									out.print("<td>" + rs.getString(1) + "</td>");
									out.print("<td>" + rs.getString(2) + "</td>");
									out.print("<td>" + rs.getString(3) + "</td>");
									out.print("</tr>");

									/*if(rs.next()){          			
									out.print("your Order has been Selected");
									request.setAttribute("selected","your Order has been Selected");
						%>
						<jsp:forward page="ordersadmin.jsp"></jsp:forward>
						<%
							}*/

												}

											} catch (SQLException e) {
												e.printStackTrace();
											}
						%>
					</table> <%
 	
 %> <%@ page import="java.sql.*"%> <%@ page
						import="java.io.*"%> <%@ page
						import="javax.servlet.*"%> <%@ page
						import="com.java.*"%> <%--</table>--%>

					</form>

				</td>


				<div class="cleaner"></div>
			</div>
			<div class="content_box_bottom"></div>

			<div class="content_box">

				<h2>Autres infos</h2>

				<div class="section_w250 float_l">
					<h3>Faire un don</h3>
					<p>Notre Bibliothèque  accepte tous les dons de
						documents, quelle que soit la discipline..</p>

				</div>

				<div class="section_w250 float_r">
					<h3>les formations</h3>
					<p>La bibliothèque  vous propose une gamme
						de formations afin d'utiliser au mieux les ressources à votre
						disposition.</p>

				</div>



				<div class="cleaner"></div>
			</div>
			<div class="content_box_bottom"></div>

		</div>
		<!-- end of content -->

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

			Copyright © 2019 <a href="#">Your Company Name</a> | <a href="#"
				target="_parent">Website Projects</a> by <a href="#"
				target="_parent">yamsel1</a>
		</div>

	</div>
	<div align=center>
		<a href='#'>free website </a>
	</div>
</body>
</html>