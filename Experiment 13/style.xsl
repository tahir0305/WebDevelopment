<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
  <html>
    <head>
      <title>Experiment 13 - Student Results</title>
      <style>
        body { font-family: Arial, sans-serif; background: #ffffff; color: #111; padding: 16px; }
        table { border-collapse: collapse; width: 70%; }
        th, td { border: 1px solid #777; padding: 8px; }
        th { background: #2f855a; color: #fff; }
        .pass { color: #0a7a33; font-weight: bold; }
        .fail { color: #c81e1e; font-weight: bold; }
      </style>
    </head>
    <body>
      <h2>Student Results</h2>
      <table>
        <tr>
          <th>Name</th>
          <th>Roll No</th>
          <th>Marks</th>
          <th>Status</th>
        </tr>
        <xsl:for-each select="students/student">
          <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="roll"/></td>
            <td><xsl:value-of select="marks"/></td>
            <td>
              <xsl:choose>
                <xsl:when test="marks &gt;= 40"><span class="pass">PASS</span></xsl:when>
                <xsl:otherwise><span class="fail">FAIL</span></xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
