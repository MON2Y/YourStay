<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YourTrip</title>
<link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="./css/blog.css">
</head>
<body>
	<header class="blog-header py-3" style="margin-bottom: 5%;">
	   <div class="row flex-nowrap justify-content-between align-items-center">
	     <div class="col-4 pt-1">
	     </div>
	     <div class="col-4 text-center">
	       <a class="blog-header-logo text-dark" href="#" style="text-decoration:none">YourTrip</a>
	     </div>
	     <div class="col-4 d-flex justify-content-end align-items-center">
	       <a class="link-secondary" href="#" aria-label="Search">
	         <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img" viewBox="0 0 24 24"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"/><path d="M21 21l-5.2-5.2"/></svg>
	       </a>
	       <a class="btn btn-sm btn-outline-secondary" href="login/loginPage">Sign up</a>
	     </div>
	   </div>
	 </header>
	 
	<main>
	<div style="overflow:scroll; width:800px;height:800px;float:left;">
		<div class="row mb-2">
		   <div class="col-md-6">
		     <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		       <div class="col p-4 d-flex flex-column position-static">
		         <strong class="d-inline-block mb-2 text-primary">ㅇㅇㅇHost의 숙소</strong>
		         <h3 class="mb-0">숙소 이름</h3>
		         <div class="mb-1 text-muted">최대 인원 0 명 방 0개 침대 0 개 화장실 0개</div>
		         <p class="card-text mb-auto">100,000원 / 박</p>
		         <a href="info.jsp" class="stretched-link"></a>
		       </div>
		       <div class="col-auto d-none d-lg-block">
		         <svg class="bd-placeholder-img" width="200" height="250"
		         xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
		         preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect
		         width="200%" height="200%" fill="#55595c"/><text x="100%" y="100%" fill="#eceeef"
		         dy=".3em">Thumbnail</text></svg>
		
		       </div>
		     </div>
    		</div>	
		</div>
	</div>
	
		<div id="map" style="width:700px;height:800px;float:right;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b87f2182c111fec7ca0b3a2aaede2356"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
		    {
		        title: '카카오', 
		        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
		    },
		    {
		        title: '생태연못', 
		        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		    },
		    {
		        title: '텃밭', 
		        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		    },
		    {
		        title: '근린공원',
		        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		    }
		];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		}
		var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다
		var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		iwPosition = new kakao.maps.LatLng(33.450936, 126.569477); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		for (var i = 0; i < iwContent.length; i ++) {
		
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker);
		
		}
		
	</script>
	</main>
	
	<!-- 푸터 -->
      <footer class="py-3 my-4">
      	<div class="container">
         <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a href="#"
               class="nav-link px-2 text-muted">Home</a></li>
            <li class="nav-item"><a href="#"
               class="nav-link px-2 text-muted">Features</a></li>
            <li class="nav-item"><a href="#"
               class="nav-link px-2 text-muted">Pricing</a></li>
            <li class="nav-item"><a href="#"
               class="nav-link px-2 text-muted">FAQs</a></li>
            <li class="nav-item"><a href="#"
               class="nav-link px-2 text-muted">About</a></li>
         </ul>
         <p class="text-center text-muted">© 2021 Company, Inc</p>
         </div>
      </footer>

</body>
</html>