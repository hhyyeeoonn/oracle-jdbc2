<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<!-- 부트스트랩 css 사용 -->
<link rel = "stylesheet"
	href = "${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!--  부트스트랩 js 사용 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
	.cotn_principal {
	  position: absolute;
	  width: 100%;
	  display: flex;
	  height: 100%;
	  /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#cfd8dc+0,607d8b+100,b0bec5+100 */
	  background: #cfd8dc; /* Old browsers */
	  background: -moz-linear-gradient(
	    -45deg,
	    #cfd8dc 0%,
	    #607d8b 100%,
	    #b0bec5 100%
	  ); /* FF3.6-15 */
	  background: -webkit-linear-gradient(
	    -45deg,
	    #cfd8dc 0%,
	    #607d8b 100%,
	    #b0bec5 100%
	  ); /* Chrome10-25,Safari5.1-6 */
	  background: linear-gradient(
	    135deg,
	    #cfd8dc 0%,
	    #607d8b 100%,
	    #b0bec5 100%
	  ); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cfd8dc', endColorstr='#b0bec5',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
	}
	
	.cont_centrar {
	  display: flex;
	  align-self: center;
	  width: 100%;
	}
	
	.cont_login {
	  position: relative;
	  width: 640px;
	}
	
	.cont_back_info {
	  position: relative;
	  float: left;
	  width: 640px;
	  height: 280px;
	  overflow: hidden;
	  background-color: #fff;
	  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
	}
	
	.cont_forms {
	  position: absolute;
	  overflow: hidden;
	  top: 0px;
	  left: 0px;
	  width: 320px;
	  height: 280px;
	  background-color: #eee;
	  -webkit-transition: all 0.5s;
	  -moz-transition: all 0.5s;
	  -ms-transition: all 0.5s;
	  -o-transition: all 0.5s;
	  transition: all 0.5s;
	}
	
	.cont_forms_active_login {
	  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
	  height: 420px;
	  top: -60px;
	  left: 0px;
	  -webkit-transition: all 0.5s;
	  -moz-transition: all 0.5s;
	  -ms-transition: all 0.5s;
	  -o-transition: all 0.5s;
	  transition: all 0.5s;
	}
	
	.cont_forms_active_sign_up {
	  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
	  height: 420px;
	  top: -60px;
	  left: 320px;
	  -webkit-transition: all 0.5s;
	  -moz-transition: all 0.5s;
	  -ms-transition: all 0.5s;
	  -o-transition: all 0.5s;
	  transition: all 0.5s;
	}
	
	.cont_img_back_grey {
	  position: absolute;
	  width: 950px;
	  top: -80px;
	  left: -116px;
	}
	
	.cont_img_back_grey > img {
	  width: 100%;
	  -webkit-filter: grayscale(100%);
	  filter: grayscale(100%);
	  opacity: 0.2;
	  animation-name: animar_fondo;
	  animation-duration: 20s;
	  animation-timing-function: linear;
	  animation-iteration-count: infinite;
	  animation-direction: alternate;
	}
	
	.cont_img_back_ {
	  position: absolute;
	  width: 950px;
	  top: -80px;
	  left: -116px;
	}
	
	.cont_img_back_ > img {
	  width: 100%;
	  opacity: 0.3;
	  animation-name: animar_fondo;
	  animation-duration: 20s;
	  animation-timing-function: linear;
	  animation-iteration-count: infinite;
	  animation-direction: alternate;
	}
	
	.cont_forms_active_login > .cont_img_back_ {
	  top: -20px;
	  -webkit-transition: all 0.5s;
	  -moz-transition: all 0.5s;
	  -ms-transition: all 0.5s;
	  -o-transition: all 0.5s;
	  transition: all 0.5s;
	}
	
	.cont_forms_active_sign_up > .cont_img_back_ {
	  top: -20px;
	  left: -435px;
	  -webkit-transition: all 0.5s;
	  -moz-transition: all 0.5s;
	  -ms-transition: all 0.5s;
	  -o-transition: all 0.5s;
	  transition: all 0.5s;
	}
	
	.cont_info_log_sign_up {
	  position: absolute;
	  width: 640px;
	  height: 280px;
	  top: 0px;
	  z-index: 1;
	}
	
	.col_md_login {
	  position: relative;
	  float: left;
	  width: 50%;
	}
	
	.col_md_login > h2 {
	  font-weight: 400;
	  margin-top: 70px;
	  color: #757575;
	}
	
	.col_md_login > p {
	  font-weight: 400;
	  margin-top: 15px;
	  width: 80%;
	  color: #37474f;
	}
	
	.btn_login {
	  background-color: #26c6da;
	  border: none;
	  padding: 10px;
	  width: 200px;
	  border-radius: 3px;
	  box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
	  color: #fff;
	  margin-top: 10px;
	  cursor: pointer;
	}
	
	.col_md_sign_up {
	  position: relative;
	  float: left;
	  width: 50%;
	}
	
	.cont_ba_opcitiy > h2 {
	  font-weight: 400;
	  color: #fff;
	}
	
	.cont_ba_opcitiy > p {
	  font-weight: 400;
	  margin-top: 15px;
	  color: #fff;
	}
	/* ----------------------------------
	background text    
	------------------------------------
	 */
	.cont_ba_opcitiy {
	  position: relative;
	  background-color: rgba(120, 144, 156, 0.55);
	  width: 80%;
	  border-radius: 3px;
	  margin-top: 60px;
	  padding: 15px 0px;
	}
	
	.btn_sign_up {
	  background-color: #ef5350;
	  border: none;
	  padding: 10px;
	  width: 200px;
	  border-radius: 3px;
	  box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
	  color: #fff;
	  margin-top: 10px;
	  cursor: pointer;
	}
	.cont_forms_active_sign_up {
	  z-index: 2;
	}
	
	@-webkit-keyframes animar_fondo {
	  from {
	    -webkit-transform: scale(1) translate(0px);
	    -moz-transform: scale(1) translate(0px);
	    -ms-transform: scale(1) translate(0px);
	    -o-transform: scale(1) translate(0px);
	    transform: scale(1) translate(0px);
	  }
	  to {
	    -webkit-transform: scale(1.5) translate(50px);
	    -moz-transform: scale(1.5) translate(50px);
	    -ms-transform: scale(1.5) translate(50px);
	    -o-transform: scale(1.5) translate(50px);
	    transform: scale(1.5) translate(50px);
	  }
	}
	@-o-keyframes identifier {
	  from {
	    -webkit-transform: scale(1);
	    -moz-transform: scale(1);
	    -ms-transform: scale(1);
	    -o-transform: scale(1);
	    transform: scale(1);
	  }
	  to {
	    -webkit-transform: scale(1.5);
	    -moz-transform: scale(1.5);
	    -ms-transform: scale(1.5);
	    -o-transform: scale(1.5);
	    transform: scale(1.5);
	  }
	}
	@-moz-keyframes identifier {
	  from {
	    -webkit-transform: scale(1);
	    -moz-transform: scale(1);
	    -ms-transform: scale(1);
	    -o-transform: scale(1);
	    transform: scale(1);
	  }
	  to {
	    -webkit-transform: scale(1.5);
	    -moz-transform: scale(1.5);
	    -ms-transform: scale(1.5);
	    -o-transform: scale(1.5);
	    transform: scale(1.5);
	  }
	}
	@keyframes identifier {
	  from {
	    -webkit-transform: scale(1);
	    -moz-transform: scale(1);
	    -ms-transform: scale(1);
	    -o-transform: scale(1);
	    transform: scale(1);
	  }
	  to {
	    -webkit-transform: scale(1.5);
	    -moz-transform: scale(1.5);
	    -ms-transform: scale(1.5);
	    -o-transform: scale(1.5);
	    transform: scale(1.5);
	  }
	}
	.cont_form_login {
	  position: absolute;
	  opacity: 0;
	  display: none;
	  width: 320px;
	  -webkit-transition: all 0.5s;
	  -moz-transition: all 0.5s;
	  -ms-transition: all 0.5s;
	  -o-transition: all 0.5s;
	  transition: all 0.5s;
	}
	
	.cont_forms_active_login {
	  z-index: 2;
	}
	
	.cont_form_sign_up {
	  position: absolute;
	  width: 320px;
	  float: left;
	  opacity: 0;
	  display: none;
	  -webkit-transition: all 0.5s;
	  -moz-transition: all 0.5s;
	  -ms-transition: all 0.5s;
	  -o-transition: all 0.5s;
	  transition: all 0.5s;
	}
</style>
<script>
	/* ------------------------------------ Click on login and Sign Up to  changue and view the effect
	---------------------------------------
	*/
	
	function cambiar_login() {
		  document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";  
		document.querySelector('.cont_form_login').style.display = "block";
		document.querySelector('.cont_form_sign_up').style.opacity = "0";               
	
	setTimeout(function(){  document.querySelector('.cont_form_login').style.opacity = "1"; },400);  
	  
	setTimeout(function(){    
		document.querySelector('.cont_form_sign_up').style.display = "none";
	},200);  
	  }
	
	function cambiar_sign_up(at) {
		document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
		document.querySelector('.cont_form_sign_up').style.display = "block";
		document.querySelector('.cont_form_login').style.opacity = "0";
	  
		setTimeout(function(){  document.querySelector('.cont_form_sign_up').style.opacity = "1";
		},100);  
	
		setTimeout(function(){   document.querySelector('.cont_form_login').style.display = "none";
		},400);  
	}    
	
	
	
	function ocultar_login_sign_up() {
	
		document.querySelector('.cont_forms').className = "cont_forms";  
		document.querySelector('.cont_form_sign_up').style.opacity = "0";               
		document.querySelector('.cont_form_login').style.opacity = "0"; 
		
		setTimeout(function(){
		document.querySelector('.cont_form_sign_up').style.display = "none";
		document.querySelector('.cont_form_login').style.display = "none";
	},500);  
	  
	  }
</script>
</head>
<body>
<div class="cotn_principal">
	<div class="cont_centrar">

  		<div class="cont_login">
			<div class="cont_info_log_sign_up">
      			<div class="col_md_login">
					<div class="cont_ba_opcitiy">
        
    					<h2>LOGIN</h2>  
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p> 
							<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
  					</div>
  				</div>
				<div class="col_md_sign_up">
					<div class="cont_ba_opcitiy">
  						<h2>SIGN UP</h2>
  							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
  							<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
					</div>
  				</div>
       		</div>

    
    <div class="cont_back_info">
       <div class="cont_img_back_grey">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
       
    </div>
<div class="cont_forms" >
    <div class="cont_img_back_">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
 <div class="cont_form_login">
<a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
   <h2>LOGIN</h2>
 <input type="text" placeholder="Email" />
<input type="password" placeholder="Password" />
<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
  </div>
  
   <div class="cont_form_sign_up">
<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
     <h2>SIGN UP</h2>
<input type="text" placeholder="Email" />
<input type="text" placeholder="User" />
<input type="password" placeholder="Password" />
<input type="password" placeholder="Confirm Password" />
<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>

  </div>

    </div>
    
  </div>
 </div>
</div>

</body>
</html>