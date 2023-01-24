<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">

<html>
    <head>
        <title>E-Commerce Dealers</title>
        <link rel="stylesheet" href="labs.css"/>
    </head>
    <body>
        <h1>Yuckquee Competitors</h1>
        <table border="1">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>City</th>
                        <th>Address</th>
                        <th>Type</th>
                        <th>Sales(in lakhs)</th>
                        <th>Rating</th>
                        <th>Category</th>
                        <th>Usp</th>
    
                    </tr>
                </thead>
                
                <tbody>
                    <xsl:for-each select = "seller/dealer">
                    <xsl:sort select="ratings"/>
                        <tr>
                            <td><xsl:value-of select = "name"/></td>
                            <td><xsl:value-of select = "city"/></td>
                            <td><xsl:value-of select = "address"/></td>
                            <td><xsl:value-of select = "type"/></td>
                            <td><xsl:value-of select = "sales"/></td>
                            <!-- <td><xsl:value-of select = "rating"/></td> -->
                            <td><xsl:value-of select = "ratings"/></td>
                            <td><xsl:value-of select = "category"/></td>
                            <td><xsl:value-of select = "usp"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
                    
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>