<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="images/logo.gif" rel="SHORTCUT ICON">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>文章显示页</title>
	
	<script src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<!-- Bootstrap -->
    <link href="<c:url value='/jsps/css/bootstrap/bootstrap.min.css'/>" rel="stylesheet">
	<!--my-style-->
	<link href="<c:url value='/jsps/css/main.css'/>"  rel="stylesheet">
	<link href="<c:url value='/jsps/css/left.css'/>"  rel="stylesheet">
	<link href="<c:url value='/jsps/css/right.css'/>"  rel="stylesheet">
	<link href="<c:url value='/jsps/css/blog/article.css'/>" rel="stylesheet">

	<script src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script src="<c:url value='/jsps/js/method.js'/>"></script>
</head>
<body>
	<!--  
		标题 -- 时间 阅读量 -- 文章内容 -- 标签
	-->
	<%@ include file="/jsps/top.jsp" %>
	
	<!-- 页面主体 -->
	<div class="container layout">
		<div class="row">
			<div class="col-sm-2 col-md-2 sidebar">
				<!-- left.jsp -->
				<ul class="list-group" id="leftlist">
				    <li class="list-group-item">
				    <img src="<c:url value='/jsps/images/p27017001.jpg'/>" width="100" height="100" class="img-responsive img-circle" alt="Generic placeholder thumbnail">
				      <h4>CXMM</h4>
				      <span class="text-muted">demmo@163.com</span>
				    </li>
				    <li class="list-group-item">
				        <a href="#main"  data-toggle="tab" onclick="tomain();">
				        	<span class="glyphicon glyphicon-home">&nbsp;&nbsp;主页</span>
				        </a>
				    </li>
				    <li class="list-group-item">
				    	<a href="#blog"  data-toggle="tab" onclick="tomain();">
				      		<span class="glyphicon glyphicon-book">&nbsp;&nbsp;文章</span>
				      	</a>
				    </li>
				    <li class="list-group-item">
				          <a href="#tag"  data-toggle="tab" onclick="tomain();">
				          	<span class="glyphicon glyphicon-tags" onclick="findAllTag();">&nbsp;&nbsp;标签 </span>
				          </a>
				    </li>
				    <li class="list-group-item">
						<a href="#aboutme"  data-toggle="tab" onclick="tomain();">
				          <span class="glyphicon glyphicon-user">&nbsp;&nbsp;关于我</span>
				        </a>
				    </li>  
				  </ul>
        	</div>
			<div class="col-sm-10 col-sm-offset-2 col-md-10 col-md-offset-2 tab-content">
				
					<div class="panel-body article">
						<h2 class="blogTitle ">${blog.blogTitle}</h2>
					    <span class="blogTime">${blog.blogTime}  &nbsp;&nbsp;&nbsp;&nbsp;</span>
					    <span class="viewNumber glyphicon glyphicon-eye-open text-success">&nbsp;{阅读量}</span>
					    
					    <div class="blogContent font-size-large" id="minheight">${blog.blogContent}</div>
					    <hr>
					    <div class="blogtags ">
					    <c:forEach items="${blog.tags}" var="tag">		
							<a href="<c:url value='/BlogServlet?method=findByTagId&tagId=${tag.tagId }'/>" class="label label-warning">${tag.tagname}</a>
						</c:forEach>
					    </div>
					</div>
						
			</div>	
		</div>
	</div>
	<%@ include file="/jsps/foot.jsp" %>

	<script src="<%=request.getContextPath() %>/jquery/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    
    <script src="<%=request.getContextPath() %>/jquery/bootstrap.min.js"></script>
	<script type="text/javascript">
		function tomain(){
			location.href="<c:url value='/index.jsp'/>";
		}
	</script>
</body>
</html>