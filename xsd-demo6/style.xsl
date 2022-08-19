<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- Use "entire XML document" -->
<xsl:template match="/">

<html>
	<head>
		<title>XML Datasheet</title>
	</head>
	<body>
		<h2>Account List</h2>
		<table>
			<thead>
				<tr>
					<td>Account Number</td>
					<td>Account holder</td>
					
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="accounts/account">
					<tr>
						<td>
							<xsl:value-of select="acc-no" />
						</td>
						<td>
							<xsl:value-of select="holderName/firstName" />
							<xsl:value-of select="holderName/lastName" />
						</td>
					
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</body>
</html>

</xsl:template>

</xsl:stylesheet>