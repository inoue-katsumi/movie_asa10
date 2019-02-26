<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:template match="text()"/>
    <xsl:template match="//div/table/tbody/tr">
            <xsl:for-each select=".//span/span">
                <xsl:value-of select="concat(.,',')"/>
            </xsl:for-each>
	    <xsl:for-each select="./td/a">
	      <!-- "1" for Group A theaters, "2" for Group B theaters -->
	      <xsl:if test="position()=2">
		<xsl:value-of select="concat(.,'&#10;')"/>
	      </xsl:if>
            </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
