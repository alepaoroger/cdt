<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:tei="http://www.tei-c.org/ns/1.0"
        xmlns="http://www.w3.org/1999/xhtml">
    
        <xsl:output 
            method="html"
            encoding="UTF-8"
            indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>
                	<xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
				<link href="stile.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <section id="section_1">
                    <h1 style="font-size: 30px;"><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></h1>
                    <div id="blocchi">
                        <div class="container">
                            <a href="#section_2">
                                <input class="overlay" type="image" name="click" src="7694-061F.jpg" alt="img1" id="img1"></input>
                            </a>
                        </div>
                        <div class="container">
                            <a href="#section_2">
                                <input class="overlay" type="image"  name="click" src="7694-191F.jpg" alt="img2" id="img2"></input>
                            </a>
                        </div>
                    </div>
                </section>
                <section id="section_3">
                    <div><h2>Informazioni sulla codifica:</h2>
                        <p><xsl:for-each select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt">
                            <p style="text-align: center;"><xsl:value-of select="tei:resp"/></p>
                            <p style="text-align: center;"><xsl:value-of select="tei:name"/></p>
                        </xsl:for-each></p>
                        <p><xsl:for-each select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt">
                            <p style="text-align: center;"><xsl:value-of select="tei:resp"/></p>
                            <p style="text-align: center;"><xsl:value-of select="tei:name"/></p>
                        </xsl:for-each></p>
                    </div>
                    <p style="text-align: center;">
                        <xsl:value-of select="//tei:editionStmt/tei:edition"/>
                    </p>
                    <div>
                        <h2>Cartoline:</h2>
                        <xsl:for-each select="//tei:TEI/tei:text/tei:body/tei:div[@type='fronte']/tei:figure">
                            <p style="text-align: center;"><xsl:value-of select="tei:head"/></p>
                        </xsl:for-each>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//tei:notesStmt">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="//tei:sourceDesc">
        <xsl:value-of select="/tei:bibl"/>
    </xsl:template>
    <xsl:template match="//tei:sourceDesc/tei:msDesc">
        <xsl:value-of select="/tei:msIdentifier"/>
        <xsl:value-of select="/tei:msContents"/>
        <xsl:value-of select="/tei:physDesc"/>
    </xsl:template>
    <xsl:template match="//tei:physDesc">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="//tei:listPerson/tei:person">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="//tei:person/tei:persName">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="//tei:sourceDesc/tei:listPlace">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="//tei:place">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="//tei:district[@type='comune']">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="//tei:district[@type='città']">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="//tei:profileDesc/tei:correspDesc">
        <xsl:value-of select="//tei:correspAction[@type='sent']"/>
        <xsl:value-of select="//tei:correspAction[@type='received']"/>
    </xsl:template>
    <xsl:template match="//tei:text">
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>