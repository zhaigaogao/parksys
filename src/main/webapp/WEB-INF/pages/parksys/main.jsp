<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="/WEB-INF/common/vars.jsp"%>
 <%@ include file="/WEB-INF/pages/parksys/include/mainInclude.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title>车库历史信息</title>
	</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
      <a href="${contextPath}/ExportGarageTable/exportGarageTableList.do"
       class="easyui-linkbutton" onclick="$('#btn-edit').menubutton('disable')">导出车库表Excel</a>
       
      <a href="${contextPath}/ExportGarageHistory/exportGarageHistoryList.do" 
      class="easyui-linkbutton" onclick="$('#btn-edit').menubutton('disable')">导出历史表Excel</a>
      
      <a href="javascript:query();"
        class="easyui-linkbutton" id="query" onclick="$('#btn-edit').menubutton('disable')">小雨妹妹</a>
      <script>
         function query(){
        	 console.log(123);
        	 $.ajax({
        		 url:'${contextPath}/test/selectByParam.do',
        		 dataType:'json',
        		 type:'post',
        		 data:{
        			 pageNum:1,
        			 pageSize:50
        		 },
        		 async:true,
        		 success:function(data){
        			 debugger;
        			 console.log("--------------------------------------------");
        			 console.log("执行第1步");
        			 console.log("执行第2步");
        			 console.log("执行第3步");
        			 console.log("执行第4步");
        			 console.log("执行第4步");
        			 console.log("--------------------------------------------");
        			 
        			 console.log("小雨妹妹我爱你！");
        			 console.log("--------------------------------------------");
     
        			 console.log("--------------------------------------------");
        			 console.log(data);
        		 }
        	 })
         }
      </script>
      
      
    </div>
    <script>
    
   //初始化加载方法
   function addTab(title, url){
		if ($('#tt').tabs('exists', title)){
			$('#tt').tabs('select', title);
		} else {
			var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
			$('#tt').tabs('add',{
				title:title,
				content:content,
				closable:true
			});
		}
	}
</script>
	
	<!--左侧菜单栏start-->
	<div data-options="region:'west',split:true,title:'菜单栏'" style="width:150px;padding:10px;">
		<ul class="easyui-tree">
        <li>
            <span>车库信息</span>
            <ul>
                 <li><a href="#"  onclick="addTab('google1','http://www.baidu.com')">google1</a></li>
                 <li><a href="#"  onclick="addTab('google2','${contextPath}/test/jqGridTest.do')">ch</a></li>
                 <li><a href="#"  onclick="addTab('google3','http://www.baidu.com')">google2</a></li>
            </ul>
        </li>
        <li>
            <span>Activit</span>
            <ul>
                 <li><a href="#"  onclick="addTab('流程图','')">流程图</a></li>
                 <li><a href="#"  onclick="addTab('消息通知','')">消息通知</a></li>
                 <li><a href="#"  onclick="addTab('待办事项','')">待办事项</a></li>
            </ul>
        </li>
        <li>
            <span>车辆流动信息</span>
            <ul>
                 <li><span>入库车辆</span></li>
                 <li><span>出库车辆</span></li>
                 <li><span>入库未登记车辆</span></li>
                 <li><span>出库未登记车辆</span></li>
                 <li><span>出入均未登记车辆</span></li>
            </ul>
        </li>
        <li>
            <span>盘点记录信息</span>
            <ul>
                 <li><span>盘点人员</span></li>
                 <li><span>盘点记录</span></li>
            </ul>
        </li>
        </ul>
	</div>
	<!--左侧菜单栏end-->
	
	<!--右侧弹出框start-->
	<div data-options="region:'east',split:true,collapsed:true,title:'弹出框'" style="width:100px;padding:10px;">
		
	</div>
	<!--左侧菜单栏end-->
	
	<!--尾部显示层start-->
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">
		
	</div>
	<!--尾部显示层end-->
	
	<!--页面中心显示层start-->
	<div data-options="region:'center'">
		<div id="tt" class="easyui-tabs" fit="true">
			
		</div>
	</div>
	<!--页面中心显示层end-->
	
</body>

</html>
