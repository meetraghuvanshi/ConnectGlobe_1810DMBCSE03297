<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Connect Globe</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#menu > ul').dropotron({
			mode : 'fade',
			globalOffsetY : 11,
			offsetY : -15
		});

	});
</script>
<style>
#username {
	background-color: #000000;
	color: #FFFFFF;
}

#password {
	background-color: #000000;
	color: #FFFFFF;
}

#register {
	color: red;
	text-decoration: blink;
}
</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="logo">
				<h1>
					<a href="#">Connect Globe</a>
				</h1>
			</div>
		</div>
		<%
		String s=(String)session.getAttribute("userid");
		if(s!=null)
		{
		%>
		<div id="menu">
			<ul>
				<li class="last" id="title"><a href="home1.jsp">About us</a></li>
				<li class="last" id="title"><a href="post.jsp">Post Report</a></li>
				<li class="last" id="title"><a href="GetPostDetails1.jsp">View
						Status</a></li>
				<li class="last" id="title"><a href="area.jsp">Your Area</a></li>
				<li class="last" id="title"><a href="advice.jsp">Your
						Advice</a></li>
				<li class="last" id="title"><a href="topic.jsp">Discuss</a></li>
				<li class="last" id="title"><a href="admin.jsp">Admin</a></li>
				<li class="last" id="title"><font color="white"><%=s %>,</font><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
		<center>
			<div id="page">
				<div id="content2">
					<div class="box" style="margin: 5px;">
						<fieldset style="border: thin">
							<p style="margin-left: 5px;">
								<marquee id="ctl00_rightContainer_LblPanel2_panel2"
									scrollamount="1" scrolldelay="50" align="justify"
									direction="up" onmouseout="this.start()"
									onmouseover="this.stop()">
									<strong>Now You can Share Your Social Problem such as
										some kind of Harassment,Bribe matters</strong>. Simply just Register
									Yourself and Do login After that click on Post Report Link as
									shown above. And After selecting Your subject and location YOu
									can post Your matter Simply.This will be visible to every
									visitors and our Supporters will try to proceed it further. 
							</p>
							</marquee>
						</fieldset>
					</div>
				</div>
				<div id="sidebar14">
					<div class="box">
						<form action="topic1.jsp" method="post">
							<tr>
								<th colspan="10" scope="col">
									<div class="box1">
										<marquee>
											<h2>
												<font color="#000000"><br>Connect Globe.</font>
											</h2>
										</marquee>
									</div>
								</th>
							</tr>
							<table width="100%" border="0" align="center" cellpadding="2" height="50%"
								cellspacing="2" style="border: #000000 solid 2px; padding: 5px;">
								<tr>
									<th colspan="4" bgcolor="#333333" scope="col"><font
										color="#FFFFFF">Create A Topic</font></th>
								</tr>
								<tr>
									<td width="30%">Enter Topic Name:-</td>
									<td width="15%"><label> <input type="text" name="tname" style="height:25px; width:330px" placeholder="Enter Topic Name"/>
									</label></td>
									<br>
								</tr>
								<tr>
									<td>Email-Id:-</td>
									<td><label> <input type="text" name="email" style="height:25px; width:330px" Placeholder="Email-Id"/>
									</label></td>
								</tr>
								<tr>
									<td>Discuss:-</td>
									<td><label> <textarea name="discuss" rows="10"
												cols="40" placeholder="Discuss"/></textarea>
									</label></td>
								</tr>
								<tr>
									<td>Date:-</td>
									<td><label> <input type="date" name="date" style="height:25px; width:330px">
									</label></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td colspan="0"><label>
											<div align="left">
												<input name="Submit" type="submit" value="Submit" />
									</label></td>
									</div>
								</tr>
							</table>
					</div>
				</div>
			</div>
		</center>
		</form>
		<br class="clearfix" />
		<div id="page-bottom">
			<div id="page-bottom-content">
				<h3>Connect Globe</h3>
				<p>Now You can Share Your Social Problem such as some kind of
					Harassment,Bribe matters. Simply just Register Yourself and Do
					login After that click on Post Report Link as shown above. And
					After selecting Your subject and location YOu can post Your matter
					Simply.This will be visible to every visitors and our Supporters
					will try to proceed it further.</p>
			</div>
			<div id="page-bottom-sidebar">
				<h3>Social Media</h3>
				<ul class="list">
					<li class="first"><a href="http://www.facebook.com">Facebook</a></li>
					<li><a href="http://www.twitter.com">Twitter</a></li>
					<li class="last"><a href="http://www.youtube.com">You Tube</a></li>
				</ul>
			</div>
			<br class="clearfix" />
		</div>
	</div>
	<div id="footer" style="color: red">Copyright (c) 2015
		ConnectGlobe.com. All rights reserved. Design by Kishor Kadam.</div>
<%}
	else
	{
	 response.sendRedirect("Home.jsp");
	}
%>
</body>
</html>