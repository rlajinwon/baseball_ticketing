<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/boot_css.jsp"></c:import>
</head>
<body>
<c:import url="/WEB-INF/views/templates/layout_header.jsp"></c:import>

<div class="container my-5">
	<div class="row col-md-8 offset-md-2" style="min-height: 60vh">
		<!-- contents 내용 작성 -->
		
		<h1>${kind} 작성 페이지</h1>
		
		<form action="" method="post" enctype="multipart/form-data">
		  <input type="hidden" name="boardNum" value="${dto.boardNum}">
		  		  
		  <div class="mb-3">
		    <label for="boardTitle" class="form-label">제목</label>
		    <input type="text" value="${dto.boardTitle}" name="boardTitle" placeholder="글제목" class="form-control" id="boardTitle">
		  </div>
		  
		  <div class="mb-3">
			<label for="boardContents" class="form-label">내용</label>
			<textarea class="form-control" name="boardContent" id="boardContent" rows="10">${dto.boardContent}</textarea>
		   </div>
		   
		   <!-- dto 안에 있는 boardFileDTO들을 뿌려줌 -->
		   <div class="mb-3">
		   	<c:forEach items="${dto.boardFileDTOs}" var="f">
		   		<div class="alert alert-success" role="alert">
  					${f.originalName} <button type="button" data-file-num="${f.fileNum}" data-kind="${kind}" class="btn btn-outline-light badge text-bg-secondary file-delete">X</button>
				</div>
		   	</c:forEach>
		   </div>
		   
		   <div id="files" class="mb-3" data-files-size="${dto.boardFileDTOs.size()}">
				<div class="mb-3">
					<button class="btn btn-success" type="button" id="add_file">파일추가</button>
				</div>
		   </div>

		  <button type="submit" class="btn btn-primary">글 작성</button>
		</form>
		
	</div>
</div>

<script src="/resources/js/files/fileManager.js"></script>
<script src="/resources/js/files/fileDelete.js"></script>

<c:import url="/WEB-INF/views/templates/layout_footer.jsp"></c:import>
<c:import url="/WEB-INF/views/templates/boot_js.jsp"></c:import>
</body>
</html>