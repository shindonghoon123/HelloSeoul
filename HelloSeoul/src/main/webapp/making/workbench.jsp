<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Icon Error Begin-->
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<!-- Icon Error End-->

<title>Hello, Seoul!</title>

<!--JS Section Begin -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script type="text/javascript">
$(function(){
	$('.write').click(function(){
		if($("input#user_id").val()==""){
			alert("login plz");
		}
		else if($("input#user_id").val()!=""){
			location.replace("/web/Final_Pro/ComWrite.jsp");
		}
	});
});
</script>
<!--JS Section End -->

<!-- Style Section Begin -->
<link type="text/css" rel="stylesheet" href="/web/resources/final_style/css/flatly_bootstrap.css">
<style type="text/css">
<<<<<<< HEAD
.infobar{
	font-size: 20px;
}
.titlebar{
	border: solid;
}
.contentsbar > div{
	border: solid;
}
.setbar{
	border: solid;
}
#memberbar{
	font-size: 15px;
}
.photobar > img{
	object-fot:cover;
	width: 100%;
	height: 100%;
}
>>>>>>> branch 'subMain' of https://github.com/chungsuhyeon/HelloSeoul.git
</style>
<!-- Style Section End -->


</head>
<body>
	<jsp:include page="../Final_Pro/header.jsp"></jsp:include>
	<section class='section d-flex justify-content-center bg-info'>
		<div class='col-6 mt-4 mb-4'>
			<div class='infobar bg-light'>
			<c:forEach items="${info}" var="i">
				<div class='titlebar'>
					<input type="hidden" id='com_no' name='com_no' value='${i.com_no}'>
					<input type="hidden" id='user_id' name='user_id' value='${user_id}'>
					<input type="hidden" id='boarduser_id' name='boarduser_id' value='${i.user_id}'>
					<span id='titlespan'>
						<c:choose>
							<c:when test="${i.com_ctg eq 1}">[11111]</c:when>
							<c:when test="${i.com_ctg eq 2}">[2222222]</c:when>
							<c:otherwise>[33333333]</c:otherwise>
						</c:choose>
						${i.com_title}
					</span>
					<br>
					<span id='memberbar'>
						<img alt="user" src="/web/resources/final_style/img/icon/comuser.png"> ${i.user_nick}
						<img alt="reple" src="/web/resources/final_style/img/icon/reple.png"> ${i.reply}
						<img alt="hit" src="/web/resources/final_style/img/icon/hit.png"> ${i.com_hit}
						<img alt="regdate" src="/web/resources/final_style/img/icon/regdate.png"> ${i.com_regdate}
						<img alt="comgood" src="/web/resources/final_style/img/icon/comgood.png"> ${i.good}
						<img alt="combad" src="/web/resources/final_style/img/icon/combad.png"> ${i.bad}
					</span>
				<div class='contentsbar' style="display: inline-flex; width: 100%;">
					<div class='textbar col-6'>
						${i.com_cont}
					</div>
					<div class='photobar col-6'>
						<img alt="test" src="/web/resources/final_style/img/indexFood.jpg">
					</div>
				</div>
				<div class='setbar col-12' style="display: inline-flex;">
					<div class='backbar col-4'>
					<button type="button" class="btn btn-primary">List</button>
					</div>
					<div class='goodbad col-4'>
					<button type="button" class="btn btn-success">
					<img alt="like" src="/web/resources/final_style/img/icon/like.png">
					Good ${i.good}
					</button>
					<button type="button" class="btn btn-warning">
					<img alt="dislike" src="/web/resources/final_style/img/icon/dislike.png">
					Bad ${i.bad}
					</button>
					</div>
					<div class='settingbar col-4' style="display: inline-flex;">
					<button type="button" class="btn btn-danger">Report</button>
					<button type="button" class="btn btn-primary">Modify</button>
					<button type="button" class="btn btn-primary">Delete</button>
					<img alt="reple" src="/web/resources/final_style/img/icon/replebt.png">
					<img alt="scrap" src="/web/resources/final_style/img/icon/scrapbt.png">
					</div>
				</div>
			</c:forEach>	
			<div class='replebar mt-4 bg-light'>
				<div class='col-12' style="text-align: center;">All Reple</div>
				<div class='replein col-12' style="display: inline-flex;">
					<div class='col-10'>
						<textarea style="width: 95%; height: 100px; margin-left: 10px; margin-right: 10px;"></textarea>
					</div>
					<div class='col-2'>
						<button type="button" class="btn btn-primary" style="width: 100%; height: 100%;">Apply</button>
					</div>
				</div>
				
				<div class='replyboard col-10' style="margin-left: 10px;">
					<div class='replecontents'>
						<span>Nick|Regdate</span>
						<br>
						<span>Contents</span>
					</div>
					<div class='repleabar'>
						<a href='#'>reple</a>|
						<a href='#'>modi</a>|
						<a href='#'>delete</a>|
						<a href='#'>report</a>
					</div>
					
				</div>
<!--
						<strong class="screen_out">전체 댓글</strong>
		<input type="hidden" value="${i.rep_no }" id="rep_no">
		<div id="replyboard">
			<c:forEach items="${reply }" var="i">
					<input type="hidden" value="${i.user_id }" id="rep_user_id">
				<div class="list_cmt">
					<div class="cmt_head"></div>
					<div class="cmt_body">
										
						<span class="info_append"> <span class="txt_name">${i.user_nick }</span>
							<span class="txt_bar">|</span> <span class="txt_time">${i.rep_regdate }
						</span>
						</span>
						<p class="txt_desc">${i.rep_cont }</p>
					</div>
					<div class="cmt_foot">
						<a href="#none">답글</a><span class="txt_bar">|</span>
						<a href="/web/replyMo">수정</a><span class="txt_bar">|</span>
							<a href="/web/deleteReplyMain?no=${i.rep_no }&boardno=${i.com_no}&user_id=${user_id}"  onclick="confirm('정말로 삭제하겠습니까?')">삭제</a>
							<span class="txt_bar">|</span><a href="#none">신고</a>
					</div>
				</div>
		</c:forEach>
 -->
			</div>
		</div>
	</section>
	<footer>
	<jsp:include page="../Final_Pro/footer.jsp"></jsp:include>
	</footer>
</body>
</html>