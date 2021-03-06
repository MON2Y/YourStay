<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>YourTrip</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1"><!-- bootstrap-css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/css/airDnDCSS.css">
<link rel="stylesheet" href="/css/main.css">

<!-- DataTimePicker template -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

<!-- DataTimePicker template -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

<script type="text/javascript">
    $(function () { $('#datetimepicker1').datetimepicker({ format: 'L'});
        $('#datetimepicker2').datetimepicker({ format: 'L', useCurrent: false });
        $("#datetimepicker1").on("change.datetimepicker", function (e) { $('#datetimepicker2').datetimepicker('minDate', e.date); });
        $("#datetimepicker2").on("change.datetimepicker", function (e) { $('#datetimepicker1').datetimepicker('maxDate', e.date); }); });
</script>
<script>
      $(document).ready(function(){         
         var checkShow = false;
         $("#searchSubmitBtn").click(function(){
            //alert($("#city").val() + " , " + $("#datepicker1").val() + " ~ " + $("#datepicker2").val() +" , "+$("#personnel option:selected").val());
            if($("#city").val() == "?????? ??????" || $("#city").val() == ""){
               alert("????????? ????????? ?????????.");
            }else if($("#datepicker1").val() == "?????? ??????" || $("#datepicker1").val() == ""){
               alert("?????? ????????? ????????? ?????????.");
            }else if($("#datepicker2").val() == "?????? ??????" || $("#datepicker2").val() == ""){
               alert("?????? ????????? ????????? ?????????.");
            }else{
               location.href="searchInListFromMainGet.do?city="+$("#city").val()+"&startDate="+$("#datepicker1").val()+"&endDate="+$("#datepicker2").val()+"&person="+$("#personnel").val();
            }
         });
         $("#datepicker1").datepicker({
             dateFormat: 'yy-mm-dd'
         });      
         $("#datepicker2").datepicker({
             dateFormat: 'yy-mm-dd'
         });
         $("#rollDown").hide();
         $("#tempImg").click(function(){
            if(checkShow == false){
               $("#rollDown").show();
               checkShow = true;
            }else{
               $("#rollDown").hide();
               checkShow = false;
            }
         });
         $("#logo").click(function(){
            window.location="index.jsp";
         });
      });
   </script>
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="../css/blog.css" type="text/css" media="all" />
</head>
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
    </style>
  <body>
    
<div class="container">
  <header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="link-secondary" href="#">Subscribe</a>
      </div>
      <div class="col-4 text-center">
        <a class="blog-header-logo text-dark" href="#">Large</a>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
        <a class="link-secondary" href="#" aria-label="Search">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img" viewBox="0 0 24 24"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"/><path d="M21 21l-5.2-5.2"/></svg>
        </a>
        <a class="btn btn-sm btn-outline-secondary" href="login/loginPage">Sign up</a>
      </div>
    </div>
  </header>

  <div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-between">
      <a class="p-2 link-secondary" href="#">World</a>
      <a class="p-2 link-secondary" href="#">U.S.</a>
      <a class="p-2 link-secondary" href="#">Technology</a>
      <a class="p-2 link-secondary" href="#">Design</a>
      <a class="p-2 link-secondary" href="#">Culture</a>
      <a class="p-2 link-secondary" href="#">Business</a>
      <a class="p-2 link-secondary" href="#">Politics</a>
      <a class="p-2 link-secondary" href="#">Opinion</a>
      <a class="p-2 link-secondary" href="#">Science</a>
      <a class="p-2 link-secondary" href="#">Health</a>
      <a class="p-2 link-secondary" href="#">Style</a>
      <a class="p-2 link-secondary" href="#">Travel</a>
    </nav>
  </div>
</div>

<main class="container">
<div id="searchBar">
         <form id="seatrchForm">
            <div id="search" class="radius">
            <p id="indexH1">YourStay ?????? ??????</p>
               <div id="cityDiv">
                  <p class="searchFont">??????</p>
                  <input type="text" id="city" name="city" value="?????? ??????">
               </div>
               <div id="datepickerDiv"/>
                  <div class='col-md-3 col-xs-4'>
                <div class="form-group">
                    <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                        <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" placeholder="Start-date" onkeyup="invalid()" id="startdate" name="startdate">
                        <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
<div class='col-md-3 col-xs-4'>
                <div class="form-group">
                    <div class="input-group date" id="datetimepicker2" data-target-input="nearest">
                        <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker2" placeholder="Deadline" onkeyup="invalid()" id="deadline" name="deadline">
                        <div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               </div>
               <div id="personnelDiv">
               <p class="searchFont">??????</p>
                  <select id="personnel" name="person">
                     <option value=1>?????? 1???</option>
                     <option value=2>?????? 2???</option>
                     <option value=3>?????? 3???</option>
                     <option value=4>?????? 4???</option>
                     <option value=5>?????? 5???</option>
                     <option value=6>?????? 6???</option>
                  </select>
               </div>
               <input type="button" id="searchSubmitBtn" value="??????" style="cursor:pointer;">
            </div>
         </form>
      </div>
<div background-repeat: no-repeat; width: 100%;">
      
      </div>
  <div class=" mb-4 text-white">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic"></h1>
      <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what???s most interesting in this post???s contents.</p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
    </div>
  </div>

  <div class="row mb-2">
    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">World</strong>
          <h3 class="mb-0">Featured post</h3>
          <div class="mb-1 text-muted">Nov 12</div>
          <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="stretched-link">Continue reading</a>
        </div>
        <div class="col-auto d-none d-lg-block">
          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">Design</strong>
          <h3 class="mb-0">Post title</h3>
          <div class="mb-1 text-muted">Nov 11</div>
          <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="stretched-link">Continue reading</a>
        </div>
        <div class="col-auto d-none d-lg-block">
          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

        </div>
      </div>
    </div>
  </div>
</main>
<!-- ?????? -->
   <div class="container">
      <footer class="py-3 my-4">
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
         <p class="text-center text-muted">?? 2021 Company, Inc</p>
      </footer>
   </div>



    
  </body>
</html>
