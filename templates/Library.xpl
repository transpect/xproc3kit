<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:my="step-library" version="3.0">

  <p:declare-step type="my:step">
    
    <p:input port="source">
      <p:inline>
        <doc>Hello World!</doc>
      </p:inline>
    </p:input>
    
    <p:output port="result"/>
    
    <p:identity/>
    
  </p:declare-step>
  
</p:library>