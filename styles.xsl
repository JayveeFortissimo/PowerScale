<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/anime">

<html>

<body style="font-family:sans-serif;background-image:url(anix.jpg);background-repeat: no-repeat; background-position:center;background-size: cover; background-attachment: fixed;">
<nav style="height:7rem; display:flex;justify-content:center;align-items:center;">
              <div>
              <h1 style="font-size:2rem;color:white">Anime PowerScale</h1>
              </div>
</nav>

<div style="display:flex;justify-content:center;flex-direction:column;align-items:center;min-height:100vh">

<div style="display:flex;gap:20px;flex-wrap:wrap; justify-content:center;">
<xsl:for-each select="characters">
             <div style="height:auto;width:auto;padding:10px;box-shadow:0px 0px 5px 0px;border-radius:20px;cursor:pointer;backdrop-filter: blur(8px);border:1px solid white;">

             <img style="height:10rem;border-radius:20px;">
                    <xsl:attribute name="src">
                        <xsl:value-of select="img"/>
                    </xsl:attribute>
                </img>

             <div style="line-height:0.7;color:white">
             <h2><xsl:value-of select="name"/></h2>
             <h3>World: <xsl:value-of select="world"/></h3>
             <h3>Age: <xsl:value-of select="age"/></h3>
             <h3>Power: <xsl:value-of select="power"/></h3>
             </div>
           
             </div>

       </xsl:for-each>

</div>
      
</div>

</body>

</html>
</xsl:template>
</xsl:stylesheet>
