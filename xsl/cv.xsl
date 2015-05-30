<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
    <xsl:variable name="lang" select="page/@lang"/>
    <!--<!DOCTYPE html>-->
    <html lang="{$lang}"  xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Hola</title>
        <meta charset="page/@encoding" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
        <meta name="description" content=""></meta>
        <meta name="author" content=""></meta>
              
          <!-- fb meta -->
          <meta property="og:title" content="Juan Luis Manjarres P." />
          <meta property="og:type" content="website" />
          <meta property="og:url" content="http://jumanja.net" />
          <meta property="og:image" content="http://jumanja.net/img/facebookshare.jpg" />
          <meta property="og:description" content="Professional website for Juan Luis Manjarres P. Senior Developer able to act when needed as a team leader for any IT related Project, Hiring Processes, and QA. One of my main goals is always to improve myself in a personal and professional way during my work in a company. I am a hard working person, proactive, and honest. Able to travel 10%, and Not interested in relocation. JAVA, PHP, HTML5, Android Apps."/>

          <!-- twitter meta -->
          <meta name="twitter:card" content="summary" />
          <meta name="twitter:site" content="@jumanja" />
          <meta name="twitter:creator" content="@jumanja" />
          <meta name="twitter:title" content="Professional Responsive Resume" />
          <meta name="twitter:description" content="Professional Responsive Resume by @jumanja using Bootstrap, HTML5, JQuery" />

        <link rel="icon" href="../favicon.ico"></link>

        
        <link href="../css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="../css/dashboard.css" rel="stylesheet"></link>
        <link rel="stylesheet" href="../css/rrssb.css"></link>
        <script src="../js/ie-emulation-modes-warning.js"></script>
      </head>
      <body>
          <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a target="_pop" class="navbar-brand" href="http://jumanja.net">
                  <xsl:value-of select="page/body/nav/brand"/>
                </a>
              </div>
              <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                
                    <xsl:for-each select="page/nav/menubar/link">
                        <xsl:call-template name="menubar_link">
                            <xsl:with-param name="node" select="."/>
                        </xsl:call-template>
                    </xsl:for-each>						
                        
                    <xsl:for-each select="page/nav/menubar/email">
                        <xsl:call-template name="menubar_email">
                            <xsl:with-param name="node" select="."/>
                        </xsl:call-template>
                    </xsl:for-each>						
                    
                  <li><a href="#">Overview</a></li>
                  <li><a href="#skills">Skills</a></li>
                  <li><a href="#social">Social</a></li>
                  <li><a href="mailto:jumanja@gmail.com?subject=I%20saw%20your%20page,%20I%20need%20to%20contact%20 you&amp;body=http%3A%2F%2Fjumanja.net">
      Send me an Email</a></li>
                  
                  
                  <!--<li><a href="#">Profile</a></li>
                  <li><a href="#">Help</a></li>-->
                </ul>
                <!--<form class="navbar-form navbar-right">
                  <input type="text" class="form-control" placeholder="Search...">
                </form>-->
              </div>
            </div>
          </nav>

        <script src="../js/jquery-1.11.2.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../js/ie10-viewport-bug-workaround.js"></script>
      </body>
    </html>
</xsl:template>

<xsl:template name="menubar_link" match="page/nav/menubar/link">
    <li><a>
          <xsl:attribute name="href"><xsl:value-of select="@" /></xsl:attribute>
          <xsl:value-of select="@name" />
        </a>
    </li>
</xsl:template> 
   
<xsl:template name="menubar_email" match="page/nav/menubar/email">
<xsl:param name="node"/>
    <xsl:variable name="href" select="concat('mailto:', './email', '?subject=', './subject', '', 'elamp', './body' );"/>
    <li><a>
          <xsl:attribute name="href"><xsl:value-of select="$href" /></xsl:attribute>
          <xsl:value-of select="@name" />
        </a>
    </li>
</xsl:template> 



</xsl:stylesheet>