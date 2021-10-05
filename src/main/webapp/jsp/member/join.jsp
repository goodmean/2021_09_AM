<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1 onclick="alert('hi'); return false;">회원가입</h1>

	<!--<a href="https://www.naver.com" onclick="if( confirm('이동 할래??') == false) return false;">naver</a>-->

	<script>
		var JoinForm__submitDone = false;
		function JoinForm__submit(form) {
			if (JoinForm__submitDone) {
				alert('처리중 입니다.');
				return;
			}
			form.loginId.value = form.loginId.value.trim();
			if (form.loginId.value.length == 0) {
				alert('로그인 아이디를 입력해주세요.');
				form.loginId.focus();
				return;
			}
			form.loginPw.value = form.loginPw.value.trim();
			if (form.loginPw.value.length == 0) {
				alert('로그인 비밀번호를 입력해주세요.');
				form.loginPw.focus();
				return;
			}
			form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
			if (form.loginPwConfirm.value.length == 0) {
				alert('로그인 비밀번호 확인을 입력해주세요.');
				form.loginPwConfirm.focus();
				return;
			}
			if (form.loginPw.value != form.loginPwConfirm.value) {
				alert('비밀번호가 일치하지 않습니다.');
				form.loginPw.focus();
				return;
			}
			form.name.value = form.name.value.trim();
			if (form.name.value.length == 0) {
				alert('이름을 입력해주세요.');
				form.name.focus();
				return;
			}
			form.submit();
			JoinForm__submitDone = true;
		}
	</script>


	<form action="doJoin" method="POST"
		onsubmit="JoinForm__submit(this); return false;">

		<div>
			로그인 아이디 : <input placeholder="로그인 아이디를 입력해주세요." name="loginId"
				type="text" />
		</div>
		<div>
			로그인 비밀번호 : <input placeholder="로그인 비밀번호를 입력해주세요." name="loginPw"
				type="password" />
		</div>
		<div>
			로그인 비밀번호 확인 : <input placeholder="로그인 비밀번호 확인을 입력해주세요."
				name="loginPwConfirm" type="password" />
		</div>
		</div>
		<div>
			이름 : <input placeholder="이름을 입력해주세요." name="name" type="text" />
		</div>
		<div>
			<!-- <input type="submit" value="작성" /> -->
			<button type="submit">가입</button>
			<button type="button">
				<a href="../home/main">취소</a>
			</button>
		</div>
	</form>
</body>
</html>