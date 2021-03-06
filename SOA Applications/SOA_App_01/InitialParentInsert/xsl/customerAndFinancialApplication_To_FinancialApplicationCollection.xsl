<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../InitialParentInsert.wsdl"/>
      <rootElement name="customerAndFinancialApplication" namespace="http://www.example.org"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../financialApplicationInsert.wsdl"/>
      <rootElement name="FinancialApplicationCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/financialApplicationInsert"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 130301.0647.0008) AT [TUE OCT 28 13:50:51 CAT 2014]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:inp1="http://www.example.org"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/InitialParentInsert/InitialParentInsert/financialApplicationInsert"
                xmlns:tns="http://xmlns.oracle.com/InitialParentInsert/InitialParentInsert/InitialParentInsert"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/financialApplicationInsert"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl inp1 tns xsd wsdl ns0 plt top bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <top:FinancialApplicationCollection>
      <top:FinancialApplication>
        <top:dateCreated>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:dateCreated"/>
        </top:dateCreated>
        <top:custId>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:custId"/>
        </top:custId>
        <top:assetCostId>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:assetCostId"/>
        </top:assetCostId>
        <top:assetDetailsId>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:assetDetailsId"/>
        </top:assetDetailsId>
        <top:dealDetailsId>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:dealDetailsId"/>
        </top:dealDetailsId>
        <top:isQualified>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:isQualified"/>
        </top:isQualified>
        <top:isApproved>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:isApproved"/>
        </top:isApproved>
        <top:documentsSubmittedId>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:documentsSubmittedId"/>
        </top:documentsSubmittedId>
        <top:isDeclined>
          <xsl:value-of select="/inp1:customerAndFinancialApplication/inp1:isDeclined"/>
        </top:isDeclined>
      </top:FinancialApplication>
    </top:FinancialApplicationCollection>
  </xsl:template>
</xsl:stylesheet>
