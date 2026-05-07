<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
  <html>
    <head>
      <title>Experiment 12 - CD Catalog</title>
      <style>
        body { font-family: Arial, sans-serif; background: #ffffff; color: #111; padding: 16px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #666; padding: 8px; text-align: left; }
        th { background: #e8eefc; }
      </style>
    </head>
    <body>
      <h2>My CD Collection</h2>
      <table>
        <tr>
          <th>Title</th>
          <th>Artist</th>
          <th>Country</th>
          <th>Company</th>
          <th>Price</th>
          <th>Year</th>
        </tr>
        <xsl:for-each select="catalog/cd">
          <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="artist"/></td>
            <td><xsl:value-of select="country"/></td>
            <td><xsl:value-of select="company"/></td>
            <td><xsl:value-of select="price"/></td>
            <td><xsl:value-of select="year"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
