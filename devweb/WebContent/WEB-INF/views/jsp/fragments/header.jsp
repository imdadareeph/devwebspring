<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<head>
<title>devweb</title>
<link rel="shortcut icon" href="/images/favicon.ico"> 
<link rel="icon" href="<%=request.getContextPath() %>/images/animated_favicon1.gif" type="image/gif" >


<link href="/css/custom.css" type="text/css" rel="stylesheet">

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<style type="text/css">
            /* bootstrap 3 helpers */
.bodypart{
	
  	background-color: rgba(202, 206, 210, 0.34);
  	padding-right: 0px !important;
    padding-left: 0px !important;
}
.devwebcontent{
background-color: white;
padding: 40px;

}


.navbar-form input, .form-inline input {
	width:auto;
}

/* end */

/* custom theme + Bootstrap resets */
@import url('http://fonts.googleapis.com/css?family=Open+Sans:300,400');

header {
	min-height:180px;
  	margin-bottom:5px;
}

/* only apply sticky columns on wider screens */
@media (min-width: 1200px) {
  #sidebar {
 	margin-left:15px;
  }

  #content {
 	padding-right:15px;
  }

  #sidebar.affix-top {
      position: static;
  }
  
  #sidebar.affix {
      position: fixed !important;
      top: 20px;
      width:200px;
  }

  #midCol.affix-top {
      position: static;
  }

  #midCol.affix-bottom {
      padding-top:0;
  }
  
  #midCol.affix {
      position:fixed !important;
  	  top: 20px;
  	  width:292px;
  }
}

.affix {
      position:static;
}

body {
  font-family: 'Open Sans',Arial,Helvetica,Sans-Serif;
  font-weight:300;
  color:#676767;
  background-color:#efefef;
}

a,a:hover {
	color:#77CCDD;
  	text-decoration:none;
}

.highlight-bk {
	background-color:#77CCDD;
    padding:1px;
    width:100%;
}

.highlight {
	color:#77CCDD;
}
  
h3.highlight  {
	padding-top:13px;
    padding-bottom:14px;
  	border-bottom:2px solid #77CCDD;
}

.navbar {
	background-color:#77CCDD;
  	color:#ffffff;
  	border-radius:0;
}
.navbar-nav > li > a {
  	color:#fff;
  	padding-left:20px;
  	padding-right:20px;
  	border-left:1px solid #66BBCC;
}
.navbar-nav > li:last-child > a {
  	border-right:1px solid #66BBCC;
}

.navbar-nav li a:hover {
  	background-color:#66BBCC;
}

.navbar-nav > .open > a, .navbar-nav > .open > a:hover, .navbar-nav > .open > a:focus {
	color: #000;
  	opacity:.9;
}

.navbar-brand {
	color:#fff;
}

.accordion-group {
	border-width:0;
}

.dropdown-menu {
	min-width: 250px;
}

.caret {
	color:#fff;
}

.navbar-toggle {
	color:#fff;
    border-width:0;
}
  
.navbar-toggle:hover {
	background-color:#fff;
}

.panel,.panel-heading {
  	border-radius:0;
  	border-width:0;
  	-webkit-box-shadow: 0 3px 3px rgba(0, 0, 0, 0.09);
	box-shadow: 0 3px 3px  rgba(0, 0, 0, 0.09);
}

.thumbnail {
	margin-bottom:8px;
	border-radius:0;
}

.well {
  	border-radius:0;
}

.accordion-heading .accordion-toggle, .accordion-inner, .nav-stacked li > a {
	padding-left:1px;
}

footer {
	height:30px;
  	/* background-color:#dfdfdf; 
  	color:#888; */
  	
  	vertical-align: middle;
  	text-align: center;
  	 background-color: #77CCDD;   
    color: #ffffff;
    border-radius: 0;
}

@media (min-width: 992px) {
  .no-gutter.row > div[class*='col-md'] {
    padding-left: 0;
    padding-right: 0;
  }
  .no-gutter.row > .col-md-12 {
    width: 99.99999999999999%;
    *width: 99.93055555555554%;
  }
  .no-gutter.row .col-md-11 {
    width: 91.66666666666666%;
    *width: 91.59722222222221%;
  }
  .no-gutter.row > .col-md-10 {
    width: 83.33333333333331%;
    *width: 83.26388888888887%;
  }
  .no-gutter.row > .col-md-9 {
    width: 74.99999999999999%;
    *width: 74.93055555555554%;
  }
  .no-gutter.row > .col-md-8 {
    width: 66.66666666666666%;
    *width: 66.59722222222221%;
  }
  .no-gutter.row > .col-md-7 {
    width: 58.33333333333333%;
    *width: 58.263888888888886%;
  }
  .no-gutter.row > .col-md-6 {
    width: 49.99999999999999%;
  }
  .no-gutter.row > .col-md-4 {
    width: 33.33333333333333%;
  }
  .no-gutter.row > .col-md-3 {
    width: 24.999999999999996%;
    *width: 24.930555555555554%;
  }
  .no-gutter.row > .col-md-2 {
    width: 16.666666666666664%;
    *width: 16.59722222222222%;
  }
  .no-gutter.row > .col-md-1 {
    width: 8.333333333333332%;
    *width: 8.263888888888888%;
  }
}

/* end custom theme */
        </style>
</head>
 
<spring:url value="/" var="urlHome" />
<spring:url value="/users/add" var="urlAddUser" />
 
 
 <nav class="navbar navbar-static">
   <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="${urlHome}" target="ext"><b>devweb</b></a>
      <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="glyphicon glyphicon-chevron-down"></span>
      </a>
    </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">  
          <li class="active"><a  href="${urlHome}">List <span class="sr-only">(current)</span></a></li>
        <li><a href="${urlAddUser}">Add</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Developers</a>
            <ul class="dropdown-menu">
              <li><a href="#">Manjunath</a></li>
              <li><a href="#">Imdad</a></li>
              <li><a href="#">Nagarjun</a></li>
              <li><a href="#">Others</a></li>
              
            </ul>
          </li>
        </ul>
        <ul class="nav navbar-right navbar-nav">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-search"></i></a>
            <ul class="dropdown-menu" style="padding:12px;">
                <form class="form-inline">
     				<button type="submit" class="btn btn-default pull-right"><i class="glyphicon glyphicon-search"></i></button><input type="text" class="form-control pull-left" placeholder="Search">
                </form>
             </ul>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> <i class="glyphicon glyphicon-chevron-down"></i></a>
            <ul class="dropdown-menu">
              <li><a href="#">Login</a></li>
              <li><a href="#">Profile</a></li>
              <li class="divider"></li>
              <li><a href="#">About</a></li>
             </ul>
          </li>
        </ul>
      </div>
    </div>
</nav><!-- /.navbar -->
 
 <!-- old navigation -->
 <%-- 
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">App</a>
    </div>
 
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a  href="${urlHome}">List <span class="sr-only">(current)</span></a></li>
        <li><a href="${urlAddUser}">Add</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Login</a></li>
        <li><a href="#">Register</a></li>      
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
 --%>


<!-- original navigation -->
<%-- <nav class="navbar navbar-inverse ">
       <div class="container">
              <div class="navbar-header">
                     <a class="navbar-brand" href="${urlHome}">App Home</a>
              </div>
              <div id="navbar">
                     <ul class="nav navbar-nav navbar-right">
                           <li class="active"><a href="${urlAddUser}">Add User</a></li>
                     </ul>
              </div>
       </div>
</nav> --%>