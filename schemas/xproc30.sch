<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  queryBinding="xslt2">

  <ns uri="http://www.w3.org/ns/xproc" prefix="p"/>
  <ns uri="http://xporc.org" prefix="xprc"/>

  <pattern id="port-connections">

    <rule context="p:*[p:with-input[@pipe]]/p:with-input">
      <let name="port" value="tokenize(@pipe, '@')[1]"/>
      <let name="step" value="tokenize(@pipe, '@')[2]"/>
      <assert test="contains(@pipe, '@')" id="pipe-without-at-sign">
        The @pipe attribute must always contain an at sign as separator between port name and step name.
      </assert>
      <assert test="if(contains(@pipe, '@')) then $step = ancestor::*/*[@name]/@name else true()" id="step-name-not-visible">
        The step '<value-of select="$step"/>' referenced by &lt;p:with-input/> at 
        step '<value-of select="$step"/>' is not visible. </assert>
    </rule>

  </pattern>

  <xsl:function name="xprc:my-function">
    <xsl:param name="node"/>
    <!-- ... -->
  </xsl:function>
  
</schema>
