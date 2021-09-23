<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
    <link rel="stylesheet" href="/resources/css/mainstyle.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body class="wrap">
<jsp:include page="/WEB-INF/views/include/navbar.jsp"/>

<div class="container">
  <div class="row">
    <div class="col-3 nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical" style="background: #ECE6CC;">
        <a class="nav-link active" id="tab_new" data-toggle="pill"  role="tab" data-value="new"
          aria-controls="v-pills-messages" aria-selected="false" role="tab" data-toggle="pill" >신간</a>
        <a class="nav-link" id="tab_health" data-toggle="pill"  role="tab" data-value="health"
          aria-controls="v-pills-messages" aria-selected="false" role="tab" data-toggle="pill">건강/취미</a>
        <a class="nav-link" id="tab_eco" data-toggle="pill"  role="tab" data-value="eco"
          aria-controls="v-pills-messages" aria-selected="false" >경제/경영</a>
        <a class="nav-link" id="tab_social" data-toggle="pill"  role="tab" data-value="social"
          aria-controls="v-pills-settings" aria-selected="false" >사회/정치</a>
        <a class="nav-link" id="tab_novel" data-toggle="pill"  role="tab" data-value="novel"
          aria-controls="v-pills-settings" aria-selected="false" >소설/시</a>
        <a class="nav-link" id="tab_art" data-toggle="pill"  role="tab" data-value="art"
          aria-controls="v-pills-messages" aria-selected="false" >여행/예술</a>
        <a class="nav-link" id="tab_it" data-toggle="pill" role="tab" data-value="it"
          aria-controls="v-pills-settings" aria-selected="false" >IT모바일</a>
        <a class="nav-link" id="tab_kids" data-toggle="pill" role="tab" data-value="kids"
          aria-controls="v-pills-settings" aria-selected="false">유아</a>
    </div>
      <div class="col-9" style="background: #ECE6CC;">
        <div class="row">
          <div class="custom-control custom-switch col-3">
            <input type="checkbox" class="custom-control-input" id="rental_btn">
            <label class="custom-control-label m-2 " for="rental_btn">대여 가능만</label>
          </div>
          <div class="custom-control custom-switch text-right col-3">
            <input type="checkbox" class="custom-control-input" id="image_btn">
            <label class="custom-control-label m-2 " for="image_btn">펼쳐보기</label>
          </div>
          <!-- // 관리자만 보임 -->
          <button class="btn-primary text-right mt-3 mb-3 rounded" onclick="location.href='/book/write'">책 추가</button>
          
          <div id="book_content">
             <c:choose>
              <c:when test="${ bookCnt gt 0 }">
                <c:forEach items="${ bookList }" var="book">                           
                   <div class="card mb-3">
                     <div class="row no-gutters">
                       <div class="col-md-4">
                         <a href="/book/content?num=${book.bookId}">
                           <img src="/display?fileName=${ book.bookImg }" alt="..." style="max-width: 180px;">
                         </a>
                       </div>
                       <div class="col-md-8">
                         <div class="card-body float-left">
                           <h5 class="card-title">${ book.bookName }</h5>                     
                              <c:if test="${ book.bookIsbn eq 'N' }"><p class="text-right text-primary">대여 가능</p></c:if>
                              <c:if test="${ book.bookIsbn eq 'Y' }"><p class="text-right text-danger">대여 중</p></c:if>
                           <p class="card-text">${book.bookDes}</p>
                         </div>
                       </div>
                     </div>
                   </div>
                </c:forEach>
              </c:when>  
            </c:choose>
          </div>
        </div>

        <nav aria-label="..." class="row" style="float: none; margin:100 auto;">
          <div class="col-md-6" style="margin:0 auto;">
              <ul class="pagination">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item active" aria-current="page">
                  <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item">
                  <a class="page-link" href="#">다음</a>
                </li>
              </ul>
          </div>
        </nav>


      </div>
    </div>
</div>
  <jsp:include page="/WEB-INF/views/include/bottomFooter.jsp"/>
  <script src="/resources/js/bootstrap.js"></script>
    <script src="/resources/js/jquery-3.6.0.js"></script>
</body>
<script>

  
  





</script>
</html>