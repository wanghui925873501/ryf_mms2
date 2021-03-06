<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    
    <title>商户账务查询</title>
    
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
        <link href="../../public/css/wbox.css?<%=rand%>" rel="stylesheet" type="text/css"/>
        <script type='text/javascript' src='../../dwr/engine.js?<%=rand%>'></script>
        <script type='text/javascript' src='../../dwr/util.js?<%=rand%>'></script>
        <script type="text/javascript" src='../../dwr/interface/PageParam.js?<%=rand %>'></script>
        <script type="text/javascript" src='../../dwr/interface/PageService.js?<%=rand%>'></script>
        <script type='text/javascript' src='../../dwr/interface/SettlementService.js?<%=rand%>'></script>
        <script type='text/javascript' src='../../public/datePicker/WdatePicker.js?<%=rand%>'></script>
		<script type='text/javascript' src='../../public/js/ryt.js?<%=rand%>' ></script>
		<script type="text/javascript" src='../../public/js/settlement/admin_query_accounts.js?<%=rand%>'></script> 
	    
  </head>
  
  <body onload="init()">

	<div class="style">
		<form name="AUtODF" method="post" action="">
			<table width="100%" align="left" class="tableBorder">
				<tr>
					<td class="title" colspan="6">&nbsp;&nbsp;&nbsp;&nbsp;商户账务查询&nbsp;&nbsp;</td>
				</tr>
				<tr>

					<td class="th1" align="right" width="10%">商户号：</td>
					<td align="left" width="20%"><input type="text" id="mid" name="mid" style="width: 150px" size="8px"/></td>
	                <td class="th1" align="right" width="10%">商户类别：</td>
					<td align="left" width="20%">
					   <select style="width: 150px" id="category" name="category">
							<option value="">全部...</option>
					    </select>
                    </td>
                  <td class="th1" align="right" width="10%">交易日期：</td>
                  <td align="left" >
                    <input id="bdate" size="15px" name="bdate" class="Wdate" type="text" onfocus="ryt_area_date('bdate','edate',0,30,0)" />
                    &nbsp;至&nbsp;
                    <input id="edate" size="15px" name="edate" class="Wdate" type="text" disabled="disabled" /><font color="red">*</font>
                  </td>

				</tr>
				<tr>
					<td colspan="6" align="center" style="height: 30px">
						<input class="button" type="button" value=" 查 询 " onclick="queryAccounts(1);" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="button" type="button" value=" 下载" onclick="downAccounts(-1);" />
						</td>
				</tr>
			</table>
		</form>	
		 <table  class="tablelist tablelist2" id="AccountTable" style="display: none;">
           <thead>
           <tr>
             <th>商户号</th><th>商户简称</th><th>商户类别</th>
             <th>上期账户余额</th><th>起始交易日期</th><th>结束交易日期</th>
             <th>本期账户余额</th>
           </tr>
           </thead>
           <tbody id="resultList"></tbody>
       </table>
	</div>
</body>
</html>

