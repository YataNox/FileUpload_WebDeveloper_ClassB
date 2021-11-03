<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>productView</title>
		<link rel="stylesheet" type="text/css" href="css/product.css">
	</head>
	<body>
		<div id="wrap" align="center">
			<h1>상품 상세 - 관리자 페이지</h1>
			<table>
				<tr><!-- 1열에는 이미지 -->
					<td width="220">
						<c:choose>
							<c:when test="${empty product.pictureurl}">
								<img src="fileUpload/noname.jpg">
							</c:when>
							
							<c:otherwise>
								<img src="fileUpload/${product.pictureurl}">
							</c:otherwise>
						</c:choose>
					</td>
					
					<td><!-- 2열에는 상품 상세가 표시되는 또 하나의 테이블을 위치시킵니다. -->
						<table>
							<tr>
								<th width="80">상품명</th>
								<th>${Product.name}</th>
							</tr>	
							
							<tr>
								<th>가격</th>
								<th>${Product.price}원</th>
							</tr>	
							
							<tr>
								<th>설명</th>
								<th>
									<div style="height: 220px; width: 100%">
										<pre>${Product.description}</pre>
									</div>
								</th>
							</tr>	
						</table>
					</td>
				</tr>
			</table><br>
			<input type="button" value="목록" onclick="location.href='productlist.do'">
		</div>
	</body>
</html>