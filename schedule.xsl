<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
	<html>
		<style type = "text/css">
			body{
			background: url(bgimage.jpg)
			}

			table {
			 width: 700px;
   			 border-collapse:separate;
    			 border:solid black 1px;
    			 border-radius:6px;
    			 -moz-border-radius:6px;
			 background : rgba(255, 255, 255, 0.59);
			}

		</style>
		<head>
			<title>Semantic Web Assignment Two</title>
		</head>
		<body>
			<center><h1>Sematic Web Assignment Two</h1></center>
			<center><h3>Mihir Kelkar</h3></center>
			<xsl:for-each select = "schedule/course">	
			<center>
			<table>	
				<tr><center><b><xsl:value-of select = "title"/></b></center></tr>
				<tr><center><xsl:value-of select = "programid"/> <xsl:value-of select = "number"/></center></tr>	
				<xsl:for-each select = "section">
				<tr>
					<center>
					<table>
						<center><tr><b><xsl:value-of select = "specialtopicname"/></b></tr></center>
						<center><tr><i><xsl:value-of select = "instructor"/></i></tr></center>
						<center>
						<tr>
							<td><center><xsl:value-of select = "schedulenumber"/> Section  <xsl:value-of select = "sectionnumber"/></center></td>
							<td><center><xsl:value-of select = "room"/></center></td>
						</tr>
						</center>
						<center>
						<tr>
							<td><center><xsl:value-of select = "days"/></center></td>
							<td><center><xsl:value-of select = "start"/>-<xsl:value-of select = "end"/></center></td>
						</tr>
						</center>
					</table>
					</center>
					<br></br>
						
				</tr>
				</xsl:for-each>	
			</table>
			<br></br>
			<br></br>
			</center>	
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>

