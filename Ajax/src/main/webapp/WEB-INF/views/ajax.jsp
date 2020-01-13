<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script>
	function dec() {
		ajax("ajax/dec");
	}
	
	function inc() {
		ajax("ajax/inc");
	}
	
	function ajax(url) {
		var xhttp = new XMLHttpRequest();
		//XMLHttpRequest라는 객체가 http에 만들어져서 ajax란 기술이 태어났다
		
		xhttp.open("POST", url, true); // true - 비동기, false - 동기 방식으로 동작
		// 기본적으로 정보를 줌 ,서버에 접속할 주소, 동기 비동기
		xhttp.onreadystatechange = function () { 
		//서버에 요청한 일이 끝나면 실행한다
			if(xhttp.readyState === 4)
			//서버에 리퀘스트가 갔다오면 4 
				if(xhttp.status === 200) {
				//200은 성공, 300은 리다이렉션, 400은 요청오류(BadRequest), 500은 서버에 없다
					console.log(xhttp.responseText);
					//서버에서 잘 받아온값 responseText : 서버응답에 반환된 본문 콘텐츠
					
					var count = document.getElementById("count");
					count.textContent = xhttp.responseText;
				}
		}
		
		xhttp.send();
		//리퀘스트를 보냄
	}
	
	
</script>
</head>
<body>
	<div>
		<span><img src="resources/hello.jpg"></img></span>
		<span id="count">${count}</span>
	</div>
	<div>
		<span onclick="dec()">감소</span>
		<span onclick="inc()">증가</span>
	</div>
</body>
</html>