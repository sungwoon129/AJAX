<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function() {
		$("#dec").click(function() {
			ajax("ajax/dec");
		});
		
		$("#inc").click(function() {
			ajax("ajax/inc");
		});
	});
	
	function ajax(url) {
		$.ajax(url, {
			method: "POST",
			success: function(result) {
				$("#count").text(result);
			}
		});
	}
</script>
</head>
<body>
	<div>
		<span><img src="resources/hello.jpg"></img></span>
		<span id="count"></span>
	</div>
	<div>
		<span id="dec">감소</span>
		<span id="inc">증가</span>
	</div>
</body>
</html>