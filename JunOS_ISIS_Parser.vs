<?xml version="1.0" standalone="yes"?>
<vScriptDS xmlns="http://tempuri.org/vScriptDS.xsd">
  <vScriptCommands>
    <vsID>0</vsID>
    <CommandID>4672714a-bc08-4ec5-bea1-b8dd32b624b3</CommandID>
    <Name>Start</Name>
    <DisplayLabel>Start</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>43</Origin_X>
    <Origin_Y>393</Origin_Y>
    <Size_Width>134</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description />
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStart</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>1</vsID>
    <CommandID>a2f5f866-94c0-46a6-83ca-69e281ddc2e6</CommandID>
    <Name>Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Commands />
    <MainCode>##############################################################################
#                                                                            #
# Initialize must decide whether this module can handle protocol parsing     #
# for the specified protocol using the given Router instance                 #
#                                                                            #
##############################################################################
global ActionResult
global Router
global ParsingForProtocols
global ParsingForVendor

# Router object is passed in ConnectionInfo.aParam
Router = ConnectionInfo.aParam
# Set ActionResult to a boolean value to indicate if this parser can handle the request
if Router != None:
  # Requested protocol type is passed in ConnectionInfo.bParam
  if ConnectionInfo.bParam in ParsingForProtocols:
    ActionResult = Router.GetVendor() == ParsingForVendor
  else:
    ActionResult = False
else:
  ActionResult = False</MainCode>
    <Origin_X>470</Origin_X>
    <Origin_Y>199</Origin_Y>
    <Size_Width>140</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Initialize must decide whether this module can handle protocol parsing 
for the specified protocol using the given Router instance.</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=743, Height=694}|{X=650,Y=210}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>2</vsID>
    <CommandID>3de92841-b2aa-442d-af76-37a67e498361</CommandID>
    <Name>SwitchTask</Name>
    <DisplayLabel>Switch task</DisplayLabel>
    <Commands />
    <MainCode>###########################################################
#                                                         #
# This is a central point to decide which call to perform #
# Connectors will be evaluated one by one in order.       #
#                                                         #
###########################################################
pass</MainCode>
    <Origin_X>266</Origin_X>
    <Origin_Y>393</Origin_Y>
    <Size_Width>100</Size_Width>
    <Size_Height>47</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description />
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=568, Height=609}|{X=312,Y=163}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptCommand</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>3</vsID>
    <CommandID>0e1b7c85-f97c-4a7d-9262-13149567605e</CommandID>
    <Name>ReturnSupportTag</Name>
    <DisplayLabel>Support Tag</DisplayLabel>
    <Commands />
    <MainCode>#######################################################################################
#                                                                                     #
# This call should return a descriptive text for this Protocol Parser software module #
#                                                                                     #
#######################################################################################
global ScriptVersion
global ActionResult
global ModuleName

ActionResult =  ModuleName + " v" + ScriptVersion</MainCode>
    <Origin_X>501</Origin_X>
    <Origin_Y>258</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>SupportTag should return a descriptive text for this Protocol Parser Module</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=887, Height=631}|{X=182,Y=182}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>4</vsID>
    <CommandID>539dfde8-0100-42e5-bf23-625f8241756d</CommandID>
    <Name>ReturnStatus</Name>
    <DisplayLabel>Return Status</DisplayLabel>
    <Commands />
    <MainCode>########################################################################
#                                                                      #
# This call should return a text representing the actual parser status #
#                                                                      #
########################################################################
global ActionResult
global OperationStatusLabel

ActionResult = OperationStatusLabel</MainCode>
    <Origin_X>542</Origin_X>
    <Origin_Y>327</Origin_Y>
    <Size_Width>136</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Status should return any free text message representing the actual parser status.</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>5</vsID>
    <CommandID>a9279407-046b-4e50-b4e6-fcd0c543379a</CommandID>
    <Name>ParseProtocol</Name>
    <DisplayLabel>Parse</DisplayLabel>
    <Commands />
    <MainCode>
##############################################################################
#                                                                            #
# This call should implement logic to parse a Routing Protocol state         #
# and register the neighbors found by the routing protocol for discovery.    #
#                                                                            #
##############################################################################

global Router
global ParsingForProtocols
global ConnectionInfo

# The neighbor registry object is received in ConnectionInfo.aParam
# This must be used to register a new neighbor for further discovery.
nRegistry = ConnectionInfo.aParam
# A CancellationToken is received in ConnectionInfo.bParam
# The token should be checked repetitively whether cancellation was requested 
# by user and if yes, stop further processing.
cToken = ConnectionInfo.bParam
# RoutingInstance onject is received in cParam
instance = ConnectionInfo.cParam
instanceName = "default"
if instance : instanceName = instance.Name.lower()

OperationStatusLabel = "Identifying router..."
#--  
cToken.ThrowIfCancellationRequested()
#
# Get ISIS hostname to Sysid mappings
isisHostName2SysID = {}
isisHostNames = Session.ExecCommand("show isis hostname")
# System ID      Hostname                                         Type
# 1720.1621.7007 EU-DEFRA-FR4-RTRB-01-RE0                         Dynamic 
for thisLine in [line.strip() for line in isisHostNames.splitlines()]:
  cToken.ThrowIfCancellationRequested()
  try:
    words = filter(None, thisLine.split(" "))
    if len(words) == 3:
      isisHostName2SysID[words[1]] = words[0]
  except Exception as Ex:
    DebugEx.WriteLine("Error in JunOS_ISIS while parsine line &lt; {0} &gt;. Error is: {1}".format(thisLine, str(Ex)))

isisAdjacencies = Session.ExecCommand("show isis adjacency instance {0}".format(instance.Name))
# Output is like below:
#Interface             System         L State        Hold (secs) SNPA
#et-0/0/2.945          AM-USATL-AT1-RTRB-01-RE0 2 Up          21
#et-0/0/5.0            EU-DEFRA-FR4-RTRB-02-RE0 2 Up          25
for thisLine in [line.strip() for line in isisAdjacencies.splitlines()]:
  cToken.ThrowIfCancellationRequested()
  try:
    words = filter(None, thisLine.split(" "))
    if len(words) &gt;= 1 :
      localIntfName = words[0]
      if self.IsInterrestingInterface(localIntfName):  
        # Check if logical unit number is specified in localIntfName
        # localIntfLUN = re.findall(r"\.\d+$", localIntfName)
        ri = Router.GetInterfaceByName(localIntfName, instance)
        if ri != None: 
          remoteSystemName = words[1]
          remoteSystemID = isisHostName2SysID.get(remoteSystemName, "")
          neighborState = words[3]
          # TODO : this parser does not work correctly if there are multiple adjacencies betwwen same systems differentiated only by SNPA
          # In order to allow using SNPA value, the parser database must be extended with a general endpoint ID for neighbors. Perhaps in some future release...
          SNPA = "n/a"
          # Now we have all the data to register the neighbor
          # RegisterNeighbor(IRouter, RoutingInstance, NeighborProtocol, string neighborRouterID, string remoteAS, string description, string remoteNeighboringIP, RouterInterface localInterface, string neighborState, string neighborInterfaceName = "")
          nRegistry.RegisterNeighbor(Router, instance, L3Discovery.NeighborProtocol.ISIS,  remoteSystemID, "", remoteSystemName, "", ri, neighborState, "") 
        else:
          DebugEx.WriteLine("Router object failed to provide details for interface &lt; {0} &gt;".format(localIntfName), DebugLevel.Warning)
  except Exception as Ex:
    DebugEx.WriteLine("Error in JunOS_ISIS while parsine line &lt; {0} &gt;. Error is: {1}".format(thisLine, str(Ex)))</MainCode>
    <Origin_X>548</Origin_X>
    <Origin_Y>400</Origin_Y>
    <Size_Width>144</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>true</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>""" Determines if a given address is formatted as a MAC address"""
def IsMACAddress(self, address):
  result = re.findall(r"[0-9a-f]+:[0-9a-f]+:[0-9a-f]+:[0-9a-f]+:[0-9a-f]+:[0-9a-f]+", address, re.IGNORECASE)
  return len(result) == 1
  
""" Determines if a given address is formatted as an IPV4 address"""
def IsIPv4Address(self, address):
  result = re.findall(r"\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}", address)
  return len(result) == 1
  
""" Determines if a given name is an interface name we want to parse"""
def IsInterrestingInterface(self, intfName):
  return intfName.startswith("ge-") or intfName.startswith("xe-") or intfName.startswith("et-") or intfName.startswith("ae") or intfName.startswith("irb") or intfName.startswith("vlan") or intfName.startswith("lo")

""" Retrieves Juniper switch interface names from text"""
def GetInterfaceNames(self, text):
  return re.findall(r"(?:(?:xe|ge|et)-\d+\/\d+\/\d+|ae\d{1,2}|eth[a-z0-9\/]+)", text, re.IGNORECASE)
  
""" Verifies if a given text is a valid Juniper switch interface name"""
def IsInterfaceName(self, text):  
  matchresult = self.GetInterfaceNames(text)
  return len(matchresult) == 1 and matchresult[0] == text</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description>Parse is responsible for implementing the logicrequired  to parse a Routing Protocol state
and register the neighbors found by the routing protocol for discovery.</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1095, Height=657}|{X=206,Y=21}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>6</vsID>
    <CommandID>a236adee-1d6f-4c2a-8e90-c9fd13489289</CommandID>
    <Name>UnknownTask</Name>
    <DisplayLabel>Unknown</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ModuleName

ActionResult = None
raise ValueError("{0} has received an unhandled Command request : {1}".format(ModuleName, ConnectionInfo.Command))</MainCode>
    <Origin_X>476</Origin_X>
    <Origin_Y>600</Origin_Y>
    <Size_Width>128</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>This is an unknown task, report as error</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>7</vsID>
    <CommandID>36370047-eab4-446b-9797-7455b5926e84</CommandID>
    <Name>ReturnProtocols</Name>
    <DisplayLabel>Supported Protocols</DisplayLabel>
    <Commands />
    <MainCode>###############################################################################
#                                                                             #
# This call must return the list of routing protocols this module can support #
#                                                                             #
###############################################################################

global ParsingForProtocols
global ActionResult

ActionResult = ParsingForProtocols</MainCode>
    <Origin_X>508</Origin_X>
    <Origin_Y>541</Origin_Y>
    <Size_Width>152</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Supported Protocols must return the list of routing protocols 
this module can support</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=568, Height=460}|{X=286,Y=286}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>8</vsID>
    <CommandID>93fd708a-d41a-45c1-9862-6ec9b2378ee1</CommandID>
    <Name>Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution</MainCode>
    <Origin_X>539</Origin_X>
    <Origin_Y>474</Origin_Y>
    <Size_Width>142</Size_Width>
    <Size_Height>38</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description />
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptConnector>
    <cID>0</cID>
    <ConnectorID />
    <Name>Start_Copy_of_SwitchTask</Name>
    <DisplayLabel />
    <Left>0</Left>
    <Right>2</Right>
    <Condition>return True</Condition>
    <Variables />
    <Break>false</Break>
    <Order>0</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>1</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnStatus</Name>
    <DisplayLabel>Status</DisplayLabel>
    <Left>2</Left>
    <Right>4</Right>
    <Condition>return ConnectionInfo.Command == "GetOperationStatusLabel"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>0</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>2</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnSupportTag</Name>
    <DisplayLabel>GetSupportTag</DisplayLabel>
    <Left>2</Left>
    <Right>3</Right>
    <Condition>return ConnectionInfo.Command == "GetSupportTag"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>1</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>3</cID>
    <ConnectorID />
    <Name>SwitchTask_Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Left>2</Left>
    <Right>1</Right>
    <Condition>return ConnectionInfo.Command == "Initialize"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>2</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>4</cID>
    <ConnectorID />
    <Name>SwitchTask_ParseProtocol</Name>
    <DisplayLabel>Parse</DisplayLabel>
    <Left>2</Left>
    <Right>5</Right>
    <Condition>return ConnectionInfo.Command == "Parse"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>3</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>5</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnProtocols</Name>
    <DisplayLabel>Protocols</DisplayLabel>
    <Left>2</Left>
    <Right>7</Right>
    <Condition>return ConnectionInfo.Command == "GetSupportedProtocols"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>4</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>6</cID>
    <ConnectorID />
    <Name>SwitchTask_UnknownTask</Name>
    <DisplayLabel>Unknown</DisplayLabel>
    <Left>2</Left>
    <Right>6</Right>
    <Condition>return True</Condition>
    <Variables />
    <Break>false</Break>
    <Order>6</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>7</cID>
    <ConnectorID />
    <Name>SwitchTask_Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Left>2</Left>
    <Right>8</Right>
    <Condition>return ConnectionInfo.Command == "Reset"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>5</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=286,Y=286}</EditorSize>
  </vScriptConnector>
  <Parameters>
    <ScriptName>JunOS_ISIS_Parser</ScriptName>
    <GlobalCode># v4.0 supports Routing instances
ScriptVersion = "5.0"
# Describe the Module Name
ModuleName = "JunOS ISIS Parser"
# Describes current operation status
OperationStatusLabel = ""
# The Router instance associated to this parser. Set in Initialize
Router = None
#This is the protocol supported by this module
ParsingForProtocols = [ L3Discovery.NeighborProtocol.ISIS ]
#This is the vendor name supported by this module
ParsingForVendor = "JunOS"</GlobalCode>
    <BreakPolicy>Before</BreakPolicy>
    <CustomNameSpaces>############################################################
#                                                          #
# Below imports a typically required for a Router Module   #
#                                                          #
############################################################
import re
import sys
import clr
clr.AddReferenceToFileAndPath("Common.dll")
clr.AddReferenceToFileAndPath("PGTNetworkMap.dll")
import PGT.Common
import L3Discovery
import System.Net
from System.Diagnostics import DebugEx
from System.Diagnostics import DebugLevel</CustomNameSpaces>
    <CustomReferences />
    <DebuggingAllowed>false</DebuggingAllowed>
    <LogFileName />
    <WatchVariables />
    <Language>Python</Language>
    <IsTemplate>false</IsTemplate>
    <IsRepository>false</IsRepository>
    <EditorScaleFactor>0.6391805</EditorScaleFactor>
    <Description>This vScript template can be used as a starting point for creating a new routing protocol Parser Module for Network Map.
This is typically required to add support for a new routing protocol to a vendor already supported. See also Router Module template.</Description>
    <EditorSize>{Width=496, Height=443}</EditorSize>
    <PropertiesEditorSize>{Width=775, Height=526}|{X=572,Y=317}</PropertiesEditorSize>
  </Parameters>
</vScriptDS>