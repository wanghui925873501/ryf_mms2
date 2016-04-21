<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>账户流水查询</title>
 <%
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);
int rand = new java.util.Random().nextInt(10000);
%>
        <meta http-equiv="pragma" content="no-cache"/>
        <meta http-equiv="cache-control" content="no-cache"/>
        <meta http-equiv="Expires" content="0"/>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link href="../../public/css/head.css?<%=rand%>" rel="stylesheet" type="text/css"/> 
        <script type='text/javascript' src='../../dwr/engine.js'></script>
        <script type='text/javascript' src='../../dwr/util.js'></script>
    	<script type="text/javascript" src='../../dwr/interface/MerSettlementService.js?<%=rand%>'></script>
        <script type="text/javascript" src='../../dwr/interface/PageService.js?<%=rand%>'></script>
		<script type="text/javascript" src='../../public/js/settlement/mer_jsp_search_account.js?v=<%=rand%>'></script>
		<script type='text/javascript' src='../../public/datePicker/WdatePicker.js'></script>
		<script type='text/javascript' src='../../public/js/ryt.js?<%=rand%>'></script>
    </head>
    <body onload="init();">
    <div class="style">
    <table class="tableBorder" width="80%" align="center" >
          <tbody>
              <tr><td class="title" colspan="16">&nbsp;&nbsp; 账户流水查询(2.8以前)</td></tr>
              <tr>
                  <td class="th1" align="right" width="30%">查询日期：</td>
                  <td align="left" >
                  <input type="text" value="" name="bdate" id="bdate" class="Wdate" onfocus="ryt_area_date('bdate','edate',0,30,0)"/>
                  &nbsp;  至&nbsp;
                  <input type="text" value="" name="edate" id="edate" class="Wdate"/>&nbsp;<font color="red">*</font></td>
               </tr>
               <tr><td colspan="2" height="30px">
                <input type="hidden" id="mid" value="${sessionScope.SESSION_LOGGED_ON_USER.mid}" />
                <input type="button" value="查  询" onclick="queryAccount(1)" style="width: 100px;margin-left: 400px;height: 25px" />
                
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
              
                
                </td>
               </tr>
          </tbody>
     </table>
    
    <table class="tablelist tablelist2" id="accountTable" style="display: none;">
        <thead><tr><th>商户号</th><th>结算方式</th><th>交易日期</th><th>交易时间</th><th>操作类型</th>
        <th>操作标识符</th><th>交易金额（元）</th><th>系统手续费(元)</th><th>变动金额（元）</th><th>余额（元）</th></tr></thead>
        <tbody id="resultList"></tbody>
    </table>
    
    </div>    
    </body>
</html>
