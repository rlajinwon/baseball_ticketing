<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/boot_css.jsp"></c:import>

<style>
  #wrapper-mainImg {
    height: 300px;
    width: 100%;
    overflow: hidden;
    position: relative;
    background-color: silver;
  }

  .img-slide-container {
    display: flex;
    width: max-content;
    transition: transform 0.5s ease-in-out;
  }

  .movingImg {
    height: 300px;
    width: 100vw; /* 전체 화면 너비 */
    object-fit: cover;
    flex-shrink: 0;
  }

  .slide-btn {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    padding: 12px 18px;
    font-size: 24px;
    cursor: pointer;
    z-index: 99;
    border-radius: 8px;
  }

  .slide-left {
    left: 20px;
  }

  .slide-right {
    right: 20px;
  }
</style>

</head>

<body>

<c:import url="/WEB-INF/views/templates/layout_header.jsp"></c:import>

<div class="content">

	<div class="wrapper-main">
	
		<div id="wrapper-mainImg">
		  <button class="slide-btn slide-left" onclick="slide(-1)">‹</button>
		
		  <div class="img-slide-container" id="imgSlider">
		    
		  </div>
		
		  <button class="slide-btn slide-right" onclick="slide(1)">›</button>
		</div>
		
		<div id="wrapper-section1">
			<div class="sections" id="section1">
				<div id="matchTitle" class="matchTitle">COMING SOON</div>
			</div>
			
			<c:if test="${list.size() != null}">
				<div class="sections" id="section2">
				<div class="matchCards border">
					<div class="topDate">${list.get(0).matchDate}</div>
					  <div class="bottomContainer">
					    <div class="bottomBox">${list.get(0).homeTeamDTO.teamName}</div>
					    <div class="bottomBox">VS</div>
					    <div class="bottomBox">${list.get(0).awayTeamDTO.teamName}</div>
					  </div>
				</div>
				<div class="matchCards">
					<div class="topDate">${list.get(1).matchDate}</div>
					  <div class="bottomContainer">
					    <div class="bottomBox">${list.get(1).homeTeamDTO.teamName}</div>
					    <div class="bottomBox">VS</div>
					    <div class="bottomBox">${list.get(1).awayTeamDTO.teamName}</div>
					  </div>
				</div>
				<div class="matchCards">
					<div class="topDate">${list.get(2).matchDate}</div>
					  <div class="bottomContainer">
					    <div class="bottomBox">${list.get(2).homeTeamDTO.teamName}</div>
					    <div class="bottomBox">VS</div>
					    <div class="bottomBox">${list.get(2).awayTeamDTO.teamName}</div>
					  </div>
				</div>
				
				
			</div>
			</c:if>
			
		</div>
		
			<div id="wrapper-section2">
				
				<c:if test="${list.size() != null}">
				<div class="sections" id="section2">
					
					
					<div class="matchCards">
						<div class="topDate">${list.get(3).matchDate}</div>
						  <div class="bottomContainer">
						    <div class="bottomBox">${list.get(3).homeTeamDTO.teamName}</div>
						    <div class="bottomBox">VS</div>
						    <div class="bottomBox">${list.get(3).awayTeamDTO.teamName}</div>
						  </div>
					</div>
					<div class="matchCards">
						<div class="topDate">${list.get(4).matchDate}</div>
						  <div class="bottomContainer">
						    <div class="bottomBox">${list.get(4).homeTeamDTO.teamName}</div>
						    <div class="bottomBox">VS</div>
						    <div class="bottomBox">${list.get(4).awayTeamDTO.teamName}</div>
						  </div>
					</div>
				</div>
				</c:if>
				
			</div>
			
			
			
		
	</div>


<c:import url="/WEB-INF/views/templates/boot_js.jsp"></c:import>
</div>

<c:import url="/WEB-INF/views/templates/layout_footer.jsp"></c:import>
</body>
</html>






