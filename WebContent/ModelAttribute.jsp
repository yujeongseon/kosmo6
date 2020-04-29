<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ModelAttribute.jsp</title>
</head>
<body>
	<fieldset>
		<legend>@ModelAttribute 어노테이션 결과 페이지</legend>
		<table bgcolor="gray" cellspacing="1" width="60%">
			<tr bgcolor="white">
				<td>이름</td>
				<td><input type="text" name="name" value="${name }${cmd.name}"/></td>
			</tr>
			<tr bgcolor="white">
				<td>나이</td>
				<td><input type="text" name="years" value="${years }${cmd.years }"/></td>
			</tr>
			<tr bgcolor="white">
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="남자" <c:if test="${gender=='남자' or cmd.gender=='남자' }">checked</c:if> />남자 
					<input type="radio" name="gender" value="여자" <c:if test="${gender=='여자' or cmd.gender=='여자' }">checked</c:if> />여자
				</td>
			</tr>
			<tr bgcolor="white">
				<td>관심사항</td>
				<td>
					<input type="checkbox" name="inters" value="정치" <c:if test="${fn:contains(inters,'정치') or fn:contains(cmd.inters,'정치')  }">checked</c:if> />정치 
					<input type="checkbox" name="inters" value="경제" <c:if test="${fn:contains(inters,'경제') or fn:contains(cmd.inters,'경제') }">checked</c:if>/>경제 
					<input type="checkbox" name="inters" value="스포츠" <c:if test="${fn:contains(inters,'스포츠') or fn:contains(cmd.inters,'스포츠') }">checked</c:if>/>스포츠
				</td>
			</tr>
			<tr bgcolor="white">
				<td>학력</td>
				<td>
					<select name="grade">
						<option value="초등학교" <c:if test="${grade=='초등학교' or cmd.grade=='초등학교' }">selected</c:if>>초등학교</option>
						<option value="중학교" <c:if test="${grade=='중학교' or cmd.grade=='중학교'}">selected</c:if>>중학교</option>
						<option value="고등학교" <c:if test="${grade=='고등학교' or cmd.grade=='고등학교'}">selected</c:if>>고등학교</option>
						<option value="대학교" <c:if test="${grade=='대학교' or cmd.grade=='대학교'}">selected</c:if>>대학교</option>
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<td>자기소개</td>
				<td><textarea name="self" cols="30" rows="10">${self }${cmd.self }</textarea></td>
			</tr>
			
		</table>
	
	</fieldset>
	




</body>
</html>
