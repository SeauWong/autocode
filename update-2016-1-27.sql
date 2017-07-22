insert into `t` (`name`, `save_path`, `suffix`, `file_name`, `content`, `back_user`) values('durc-bootstrap-ajax','jsp',NULL,'${context.javaBeanNameLF}.jsp','##请编辑velocity模板\n#set($jq=\"$\")\n<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\"\n    pageEncoding=\"UTF-8\"%>\n<%@ include file=\"taglib.jsp\" %>\n<c:set var=\"bluenile\" value=\"${jq}{res}bluenile/\"/>\n<c:set var=\"bsgrid\" value=\"${jq}{res}bsgrid/\"/>\n<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html lang=\"en\">\n  <head>\n    <meta charset=\"utf-8\">\n    <title>后台管理</title>\n    <meta content=\"IE=edge,chrome=1\" http-equiv=\"X-UA-Compatible\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n	<script type=\"text/javascript\">var ctx = \'${ctx}\';</script>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"${jq}{bluenile}lib/bootstrap/css/bootstrap.min.css\">\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"${jq}{bluenile}stylesheets/theme.css\">\n    <link rel=\"stylesheet\" href=\"${jq}{bluenile}lib/font-awesome/css/font-awesome.css\">\n    <script src=\"${jq}{bluenile}lib/jquery-1.7.2.min.js\" type=\"text/javascript\"></script>\n    <script src=\"${jq}{res}js/common.js\" type=\"text/javascript\"></script>\n    <!-- datepicker -->\n    <script src=\"${jq}{res}My97DatePicker/WdatePicker.js\" type=\"text/javascript\"></script>\n    <!-- validate -->\n	<script src=\"${jq}{res}jqueryValidate/jquery.validate.min.js\" type=\"text/javascript\"></script>\n	<script src=\"${jq}{res}jqueryValidate/localization/messages_zh.min.js\" type=\"text/javascript\"></script>\n    <!-- dialog -->\n	<link rel=\"stylesheet\" href=\"${jq}{res}artDialog/css/ui-dialog.css\">\n	<script src=\"${jq}{res}artDialog/dist/dialog-plus-min.js\"></script>\n	<!-- bsgrid -->\n	<link rel=\"stylesheet\" href=\"${jq}{bsgrid}merged/bsgrid.all.min.css\"/>\n    <script type=\"text/javascript\" src=\"${jq}{bsgrid}js/lang/grid.zh-CN.min.js\"></script>\n    <script type=\"text/javascript\" src=\"${jq}{bsgrid}merged/bsgrid.all.min.js\"></script>\n    \n	<!--[if lt IE 9]>\n		<script type=\"text/javascript\" src=\"${jq}{bluenile}lib/bootstrap/js/respond.min.js\"></script>\n	<![endif]-->\n    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->\n    <!--[if lt IE 9]>\n      <script src=\"${jq}{bluenile}lib/html5.js\"></script>\n    <![endif]-->\n  </head>\n\n  <!--[if lt IE 7 ]> <body class=\"ie ie6\"> <![endif]-->\n  <!--[if IE 7 ]> <body class=\"ie ie7 \"> <![endif]-->\n  <!--[if IE 8 ]> <body class=\"ie ie8 \"> <![endif]-->\n  <!--[if IE 9 ]> <body class=\"ie ie9 \"> <![endif]-->\n  <!--[if (gt IE 9)|!(IE)]><!--> \n  <body class=\"\"> \n  <!--<![endif]-->\n    <div class=\"navbar\">\n        <div class=\"navbar-inner\">\n                <ul class=\"nav pull-right\">\n                    <li><a href=\"#\" class=\"hidden-phone visible-tablet visible-desktop\">设置</a></li>\n                    <li id=\"fat-menu\" class=\"dropdown\">\n                        <a href=\"#\" role=\"button\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n                            <i class=\"icon-user\"></i> admin\n                            <i class=\"icon-caret-down\"></i>\n                        </a>\n                        <ul class=\"dropdown-menu\">\n                            <li><a href=\"#\">我的账号</a></li>\n                            <li class=\"divider\"></li>\n                            <li><a href=\"#\">退出</a></li>\n                        </ul>\n                    </li>\n                </ul>\n                <a class=\"brand\" href=\"#\"><span class=\"first\">后台管理</span></a>\n        </div>\n    </div>\n    \n    <div class=\"sidebar-nav\">\n        <a href=\"#dashboard-menu\" class=\"nav-header\" data-toggle=\"collapse\"><i class=\"icon-dashboard\"></i>基础管理</a>\n        <ul id=\"dashboard-menu\" class=\"nav nav-list collapse in\">\n            <li class=\"active\"><a href=\"orderInfo_bootstrap_ajax.jsp\">订单管理</a></li>\n            \n        </ul>\n    </div>\n    \n    <div class=\"content\">\n        <div class=\"header\">\n            <span class=\"page-title\">订单管理</span>\n        </div>\n\n        <div class=\"container-fluid\">\n            <div class=\"row-fluid\">\n				<div style=\"padding-top: 20px;\">\n				<!-- content here -->\n	<form id=\"schFrm\" class=\"form-inline\" onsubmit=\"return false;\">\n		<table>\n			<tr>\n#foreach($column in $columns)\n    #if(!${column.isIdentityPk})\n            <td>${column.javaFieldName}:</td><td><input name=\"${column.javaFieldName}Sch\" type=\"text\"></td>      \n    #end\n#end\n			</tr>\n	    </table>\n		<button id=\"schBtn\" class=\"btn\"><i class=\"icon-search\"></i>查询</button>\n		<input type=\"reset\" class=\"btn\" value=\"清空\">\n	</form>\n	<hr>\n	<div class=\"btn-toolbar\">\n	    <button id=\"addBtn\" class=\"btn btn-primary\"><i class=\"icon-plus\"></i> 新增订单</button>\n	  <div class=\"btn-group\">\n	  </div>\n	</div>\n	<table id=\"searchTable\">\n        <tr>           \n#foreach($column in $columns)    \n    #if(!${column.isIdentityPk})      \n    <th w_index=\"${column.javaFieldName}\">${column.javaFieldName}</th>\n    #end    \n#end \n<th w_render=\"operate\" width=\"10%;\">操作</th>\n        </tr>\n    </table>\n    \n    <div id=\"crudWin\">\n    	<form id=\"crudFrm\">\n			 <table>\n#foreach($column in $columns)\n    #if(!${column.isIdentityPk})\n        <tr>\n            <td>${column.javaFieldName}:</td><td><input name=\"${column.javaFieldName}\" type=\" required=\"true\"></td>\n        </tr>\n    #end\n#end\n            </table>\n		</form>\n    </div>\n    \n<script type=\"text/javascript\">     \nvar that = this;\n\nvar pk = \'${context.javaPkName}\'; // java类中的主键字段\nvar listUrl = ctx + \'list${context.javaBeanName}.do\'; // 查询\nvar addUrl = ctx + \'add${context.javaBeanName}.do\'; // 添加\nvar updateUrl = ctx + \'update${context.javaBeanName}.do\'; // 修改\nvar delUrl = ctx + \'del${context.javaBeanName}.do\'; // 删除\nvar submitUrl = \'\'; // 提交URL\n\nvar gridObj; // 表格\nvar crudWin; // 窗口\nvar ${jq}schFrm = ${jq}(\'#schFrm\'); // 查询表单\nvar ${jq}crudFrm = ${jq}(\'#crudFrm\'); // 编辑表单\n\nvar ${jq}schBtn = ${jq}(\'#schBtn\'); // 查询按钮\nvar ${jq}addBtn = ${jq}(\'#addBtn\'); // 添加按钮\n\nvar validator; // 验证器\n\nfunction reset() {\n	${jq}crudFrm.get(0).reset();\n	validator.resetForm();\n}\n\n\n// 初始化事件\n${jq}addBtn.click(function() {\n	reset();\n	crudWin.title(\'添加\');\n	crudWin.show();\n	submitUrl = addUrl;\n});\n\n${jq}schBtn.click(function() {\n	search();\n});\n\ngridObj = ${jq}.fn.bsgrid.init(\'searchTable\', {\n	url: listUrl\n	,pageSizeSelect: true\n	,stripeRows: true\n	,pageSize: 10\n});\n\ncrudWin = dialog({\n	title: \'编辑\',\n	width:400,\n	content: document.getElementById(\'crudWin\'),\n	okValue: \'保存\',\n	ok: function () {\n		that.save();\n		return false;\n	},\n	cancelValue: \'取消\',\n	cancel: function () {\n		this.close();\n		return false;\n	}\n});\n\nfunction search(){\n	gridObj.options.otherParames = getFormData(${jq}schFrm);\n	gridObj.gotoPage(1);\n}\n\nfunction operate(row, rowIndex, colIndex, options) {\n	return \'<a href=\"#\" onclick=\"\'\n		+ FunUtil.createFun(that, \'edit\', row)\n		+ \' return false;\">修改</a>\'\n		+ \'&nbsp;&nbsp;\'\n		+ \'<a href=\"#\" onclick=\"\'\n		+ FunUtil.createFun(that, \'del\', row)\n		+ \' return false;\">删除</a>\';\n}\n\n// 保存\nthis.save = function() {\n	var self = this;\n	var data = getFormData(${jq}crudFrm);\n	var validateVal = validator.form();\n	if(validateVal) {\n		Action.post(submitUrl, data, function(result) {\n			Action.execResult(result, function(result) {\n				gridObj.refreshPage();\n				crudWin.close();\n			});\n		});\n	}\n}\n // 编辑\nthis.edit = function(row) {\n	if (row) {\n		reset();\n		crudWin.title(\'修改\');\n		loadFormData(${jq}crudFrm,row);\n		submitUrl = updateUrl + \'?\' + pk + \'=\' + row[pk];\n		crudWin.show();\n	}\n}\n\n// 删除\nthis.del = function(row) {\n	if (row) {\n		var d = dialog({\n			title: \'提示\',\n			width: 200,\n			content: \'确定要删除改记录吗?\',\n			okValue: \'确定\',\n			ok: function () {\n				Action.post(delUrl, row, function(result) {\n					Action.execResult(result, function(result) {\n						gridObj.refreshPage();\n					});\n				});\n			},\n			cancelValue: \'取消\',\n			cancel: function () {}\n		});\n		d.showModal();\n	}\n}\n\nvalidator = ${jq}crudFrm.validate();\n</script>\n				 <footer>\n				     <hr>\n				     <p>&copy; 2016</p>\n				 </footer>\n				 </div>\n            </div>\n        </div>\n    </div>\n\n    <script src=\"${jq}{bluenile}lib/bootstrap/js/bootstrap.min.js\"></script>\n  </body>\n</html>\n','admin');
insert into `t` (`name`, `save_path`, `suffix`, `file_name`, `content`, `back_user`) values('durc_SearchEntityBs','entity',NULL,'${context.javaBeanName}Sch.java','package ${context.packageName}.entity;\n\nimport org.durcframework.core.SearchEntity;\nimport org.durcframework.core.expression.annotation.ValueField;\n\nimport app.common.BsgridSearch;\n\npublic class ${context.javaBeanName}Sch extends BsgridSearch {\n\n#foreach($column in $columns) \n    private ${column.javaTypeBox} ${column.javaFieldName}Sch;\n#end\n\n#foreach(${column} in ${columns}) \n    public void set${column.javaFieldNameUF}Sch(${column.javaTypeBox} ${column.javaFieldName}Sch){\n        this.${column.javaFieldName}Sch = ${column.javaFieldName}Sch;\n    }\n    \n    @ValueField(column = \"${column.columnName}\")\n    public ${column.javaTypeBox} get${column.javaFieldNameUF}Sch(){\n        return this.${column.javaFieldName}Sch;\n    }\n\n#end\n\n}','admin');
insert into `t` (`name`, `save_path`, `suffix`, `file_name`, `content`, `back_user`) values('durc_ControllerBs','controller',NULL,'${context.javaBeanName}Controller','package ${context.packageName}.controller;\n\nimport org.durcframework.core.GridResult;\nimport org.durcframework.core.MessageResult;\nimport org.durcframework.core.controller.CrudController;\nimport ${context.packageName}.entity.${context.javaBeanName};\nimport ${context.packageName}.entity.${context.javaBeanName}Sch;\nimport ${context.packageName}.service.${context.javaBeanName}Service;\nimport org.springframework.stereotype.Controller;\nimport org.springframework.web.bind.annotation.RequestMapping;\nimport org.springframework.web.bind.annotation.ResponseBody;\n\nimport app.common.BsgridController;\n\n@Controller\npublic class ${context.javaBeanName}Controller extends\n		BsgridController<${context.javaBeanName}, ${context.javaBeanName}Service> {\n\n	@RequestMapping(\"/add${context.javaBeanName}.do\")\n	public @ResponseBody\n	MessageResult add${context.javaBeanName}(${context.javaBeanName} entity) {\n		return this.save(entity);\n	}\n\n	@RequestMapping(\"/list${context.javaBeanName}.do\")\n	public @ResponseBody\n	GridResult list${context.javaBeanName}(${context.javaBeanName}Sch searchEntity) {\n		return this.query(searchEntity);\n	}\n\n	@RequestMapping(\"/update${context.javaBeanName}.do\")\n	public @ResponseBody\n	MessageResult update${context.javaBeanName}(${context.javaBeanName} entity) {\n		return this.update(entity);\n	}\n\n	@RequestMapping(\"/del${context.javaBeanName}.do\")\n	public @ResponseBody\n	MessageResult del${context.javaBeanName}(${context.javaBeanName} entity) {\n		return this.delete(entity);\n	}\n	\n}','admin');
