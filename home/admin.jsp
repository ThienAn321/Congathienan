<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN PAGE</title>
<!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <!--<title>Admin Dashboard Panel</title>-->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <style type="text/css">
    	/* ===== Google Font Import - Poppins ===== */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
form {
  margin: 35px 30px;
}
form.disabled {
  pointer-events: none;
  opacity: 0.7;
}
form .dbl-field {
  display: flex;
  margin-bottom: 25px;
  justify-content: space-between;
}
.dbl-field .field {
  height: 50px;
  display: flex;
  position: relative;
  width: calc(100% / 2 - 13px);
}
.wrapper form i {
  position: absolute;
  top: 50%;
  left: 18px;
  color: #ccc;
  font-size: 17px;
  pointer-events: none;
  transform: translateY(-50%);
}
form .field input,
form .message textarea {
  width: 100%;
  height: 100%;
  outline: none;
  padding: 10px 50px;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid #ccc;
}
.field input::placeholder,
.message textarea::placeholder {
  color: #ccc;
}
.field input:focus,
.message textarea:focus {
  padding-left: 47px;
  border: 2px solid #0d6efd;
}
.field input:focus ~ i,
.message textarea:focus ~ i {
  color: #0d6efd;
}
form .message {
  position: relative;
}
form .message i {
  top: 30px;
  font-size: 20px;
}
form .message textarea {
  min-height: 130px;
  max-height: 230px;
  max-width: 100%;
  min-width: 100%;
  padding: 15px 20px 0 48px;
}
form .message textarea::-webkit-scrollbar {
  width: 0px;
}
.message textarea:focus {
  padding-top: 14px;
}
form .button-area {
  margin: 25px 0;
  display: flex;
  align-items: center;
}
.button-area button {
  color: #fff;
  border: none;
  outline: none;
  font-size: 18px;
  cursor: pointer;
  height: 30px;
  border-radius: 5px;
  background: #0d6efd;
  transition: background 0.3s ease;
}
.button-area button:hover {
  background: #025ce3;
}
.button-area span {
  font-size: 17px;
  margin-left: 30px;
  display: none;
}
@media (max-width: 600px) {
  .wrapper header {
    text-align: center;
  }
  .wrapper form {
    margin: 35px 20px;
  }
  form .dbl-field {
    flex-direction: column;
    margin-bottom: 0px;
  }
  form .dbl-field .field {
    width: 100%;
    height: 45px;
    margin-bottom: 20px;
  }
  form .message textarea {
    resize: none;
  }
  form .button-area {
    margin-top: 20px;
    flex-direction: column;
  }
  .button-area button {
    width: 100%;
    font-size: 16px;
  }
  .button-area span {
    margin: 20px 0 0;
    text-align: center;
  }
}
:root {
  /* ===== Colors ===== */
  --primary-color: #0e4bf1;
  --panel-color: #fff;
  --text-color: #000;
  --black-light-color: #707070;
  --border-color: #e6e5e5;
  --toggle-color: #ddd;
  --box1-color: #4da3ff;
  --box2-color: #ffe6ac;
  --box3-color: #e7d1fc;
  --title-icon-color: #fff;

  /* ====== Transition ====== */
  --tran-05: all 0.5s ease;
  --tran-03: all 0.3s ease;
  --tran-03: all 0.2s ease;
}

body {
  min-height: 100vh;
  background-color: var(--primary-color);
}
body.dark {
  --primary-color: #3a3b3c;
  --panel-color: #242526;
  --text-color: #ccc;
  --black-light-color: #ccc;
  --border-color: #4d4c4c;
  --toggle-color: #fff;
  --box1-color: #3a3b3c;
  --box2-color: #3a3b3c;
  --box3-color: #3a3b3c;
  --title-icon-color: #ccc;
}
/* === Custom Scroll Bar CSS === */
::-webkit-scrollbar {
  width: 8px;
}
::-webkit-scrollbar-track {
  background: #f1f1f1;
}
::-webkit-scrollbar-thumb {
  background: var(--primary-color);
  border-radius: 12px;
  transition: all 0.3s ease;
}

::-webkit-scrollbar-thumb:hover {
  background: #0b3cc1;
}

body.dark::-webkit-scrollbar-thumb:hover,
body.dark .activity-data::-webkit-scrollbar-thumb:hover {
  background: #3a3b3c;
}

nav {
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 250px;
  padding: 10px 14px;
  background-color: var(--panel-color);
  border-right: 1px solid var(--border-color);
  transition: var(--tran-05);
}
nav.close {
  width: 73px;
}
nav .logo-name {
  display: flex;
  align-items: center;
}
nav .logo-image {
  display: flex;
  justify-content: center;
  min-width: 45px;
}
nav .logo-image img {
  width: 40px;
  object-fit: cover;
  border-radius: 50%;
}

nav .logo-name .logo_name {
  font-size: 22px;
  font-weight: 600;
  color: var(--text-color);
  margin-left: 14px;
  transition: var(--tran-05);
}
nav.close .logo_name {
  opacity: 0;
  pointer-events: none;
}
nav .menu-items {
  margin-top: 40px;
  height: calc(100% - 90px);
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.menu-items li {
  list-style: none;
}
.menu-items li a {
  display: flex;
  align-items: center;
  height: 50px;
  text-decoration: none;
  position: relative;
}
.nav-links li a:hover:before {
  content: "";
  position: absolute;
  left: -7px;
  height: 5px;
  width: 5px;
  border-radius: 50%;
  background-color: var(--primary-color);
}

body.dark li a:hover:before {
  background-color: var(--text-color);
}
.menu-items li a i {
  font-size: 24px;
  min-width: 45px;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--black-light-color);
}
.menu-items li a .link-name {
  font-size: 18px;
  font-weight: 400;
  color: var(--black-light-color);
  transition: var(--tran-05);
}
nav.close li a .link-name {
  opacity: 0;
  pointer-events: none;
}
.nav-links li a:hover i,
.nav-links li a:hover .link-name {
  color: var(--primary-color);
}
body.dark .nav-links li a:hover i,
body.dark .nav-links li a:hover .link-name {
  color: var(--text-color);
}
.menu-items .logout-mode {
  padding-top: 10px;
  border-top: 1px solid var(--border-color);
}
.menu-items .mode {
  display: flex;
  align-items: center;
  white-space: nowrap;
}
.menu-items .mode-toggle {
  position: absolute;
  right: 14px;
  height: 50px;
  min-width: 45px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.mode-toggle .switch {
  position: relative;
  display: inline-block;
  height: 22px;
  width: 40px;
  border-radius: 25px;
  background-color: var(--toggle-color);
}
.switch:before {
  content: "";
  position: absolute;
  left: 5px;
  top: 50%;
  transform: translateY(-50%);
  height: 15px;
  width: 15px;
  background-color: var(--panel-color);
  border-radius: 50%;
  transition: var(--tran-03);
}
body.dark .switch:before {
  left: 20px;
}

.dashboard {
  position: relative;
  left: 250px;
  background-color: var(--panel-color);
  min-height: 100vh;
  width: calc(100% - 250px);
  padding: 10px 14px;
  transition: var(--tran-05);
}
nav.close ~ .dashboard {
  left: 73px;
  width: calc(100% - 73px);
}
.dashboard .top {
  position: fixed;
  top: 0;
  left: 250px;
  display: flex;
  width: calc(100% - 250px);
  justify-content: space-between;
  align-items: center;
  padding: 10px 14px;
  background-color: var(--panel-color);
  transition: var(--tran-05);
  z-index: 10;
}
nav.close ~ .dashboard .top {
  left: 73px;
  width: calc(100% - 73px);
}
.dashboard .top .sidebar-toggle {
  font-size: 26px;
  color: var(--text-color);
  cursor: pointer;
}
.dashboard .top .search-box {
  position: relative;
  height: 45px;
  max-width: 600px;
  width: 100%;
  margin: 0 30px;
}
.top .search-box input {
  position: absolute;
  border: 1px solid var(--border-color);
  background-color: var(--panel-color);
  padding: 0 25px 0 50px;
  border-radius: 5px;
  height: 100%;
  width: 100%;
  color: var(--text-color);
  font-size: 15px;
  font-weight: 400;
  outline: none;
}
.top .search-box i {
  position: absolute;
  left: 15px;
  font-size: 22px;
  z-index: 10;
  top: 50%;
  transform: translateY(-50%);
  color: var(--black-light-color);
}
.top img {
  width: 40px;
  border-radius: 50%;
}
.dashboard .dash-content {
  padding-top: 50px;
}
.dash-content .title {
  display: flex;
  align-items: center;
  margin: 60px 0 30px 0;
}
.dash-content .title i {
  position: relative;
  height: 35px;
  width: 35px;
  background-color: var(--primary-color);
  border-radius: 6px;
  color: var(--title-icon-color);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 24px;
}
.dash-content .title .text {
  font-size: 24px;
  font-weight: 500;
  color: var(--text-color);
  margin-left: 10px;
}
.dash-content .boxes {
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
}
.dash-content .boxes .box {
  display: flex;
  flex-direction: column;
  align-items: center;
  border-radius: 12px;
  width: calc(100% / 3 - 15px);
  padding: 15px 20px;
  background-color: var(--box1-color);
  transition: var(--tran-05);
}
.boxes .box i {
  font-size: 35px;
  color: var(--text-color);
}
.boxes .box .text {
  white-space: nowrap;
  font-size: 18px;
  font-weight: 500;
  color: var(--text-color);
}
.boxes .box .number {
  font-size: 40px;
  font-weight: 500;
  color: var(--text-color);
}
.boxes .box.box2 {
  background-color: var(--box2-color);
}
.boxes .box.box3 {
  background-color: var(--box3-color);
}
.dash-content .activity .activity-data {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
}
.activity .activity-data {
  display: flex;
  overflow-x: scroll;
}
.activity-data .data {
  display: flex;
  flex-direction: column;
  margin: 0 15px;
}
.activity-data .data-title {
  font-size: 20px;
  font-weight: 500;
  color: var(--text-color);
}
.activity-data .data .data-list {
  font-size: 18px;
  font-weight: 400;
  margin-top: 20px;
  white-space: nowrap;
  color: var(--text-color);
}

button {
  background-color: #2454da;
  width: 70px;
  border-radius: 5px;
  color: white;
}
button:hover {
  background-color: rgb(153, 216, 246);
}

@media (max-width: 1000px) {
  nav {
    width: 73px;
  }
  nav.close {
    width: 250px;
  }
  nav .logo_name {
    opacity: 0;
    pointer-events: none;
  }
  nav.close .logo_name {
    opacity: 1;
    pointer-events: auto;
  }
  nav li a .link-name {
    opacity: 0;
    pointer-events: none;
  }
  nav.close li a .link-name {
    opacity: 1;
    pointer-events: auto;
  }
  nav ~ .dashboard {
    left: 73px;
    width: calc(100% - 73px);
  }
  nav.close ~ .dashboard {
    left: 250px;
    width: calc(100% - 250px);
  }
  nav ~ .dashboard .top {
    left: 73px;
    width: calc(100% - 73px);
  }
  nav.close ~ .dashboard .top {
    left: 250px;
    width: calc(100% - 250px);
  }
  .activity .activity-data {
    overflow-x: scroll;
  }
}

@media (max-width: 780px) {
  .dash-content .boxes .box {
    width: calc(100% / 2 - 15px);
    margin-top: 15px;
  }
}
@media (max-width: 560px) {
  .dash-content .boxes .box {
    width: 100%;
  }
}
@media (max-width: 400px) {
  nav {
    width: 0px;
  }
  nav.close {
    width: 73px;
  }
  nav .logo_name {
    opacity: 0;
    pointer-events: none;
  }
  nav.close .logo_name {
    opacity: 0;
    pointer-events: none;
  }
  nav li a .link-name {
    opacity: 0;
    pointer-events: none;
  }
  nav.close li a .link-name {
    opacity: 0;
    pointer-events: none;
  }
  nav ~ .dashboard {
    left: 0;
    width: 100%;
  }
  nav.close ~ .dashboard {
    left: 73px;
    width: calc(100% - 73px);
  }
  nav ~ .dashboard .top {
    left: 0;
    width: 100%;
  }
  nav.close ~ .dashboard .top {
    left: 0;
    width: 100%;
  }
}
    	
    </style>
</head>
<body>
<nav>
        <div class="logo-name">
            <div class="logo-image">
                <!--<img src="images/logo.png" alt="">-->
            </div>

            <span class="logo_name">Admin</span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="#">
                    <i class='bx bx-bar-chart-alt'></i>
                        <span class="link-name">Statistics</span>
                    </a></li>
                <li><a href="#product">
                    <i class='bx bx-box' ></i>
                        <span class="link-name">Product</span>
                    </a></li>
                <li><a href="#user">
                    <i class='bx bx-user'></i>
                        <span class="link-name">User</span>
                    </a></li>
            </ul>

            <ul class="logout-mode">
                <li><a href="#">
                        <i class="uil uil-signout"></i>
                        <span class="link-name">Back</span>
                    </a></li>

                <li class="mode">
                    <a href="#">
                        <i class="uil uil-moon"></i>
                        <span class="link-name">Dark Mode</span>
                    </a>

                    <div class="mode-toggle">
                        <span class="switch"></span>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

           

            <!--<img src="images/profile.jpg" alt="">-->
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class='bx bx-bar-chart-alt' ></i>
                    <span class="text">Statistics</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class='bx bx-money' ></i>
                        <span class="text">Turnover</span>
                        <span class="number">10,000,000</span>
                    </div>
                    <div class="box box2">
                        <i class='bx bx-home-smile' ></i>
                        <span class="text">Depot</span>
                        <span class="number">500</span>
                    </div>
                    <div class="box box3">
                        <i class='bx bx-cart-download' ></i>
                        <span class="text">Sold</span>
                        <span class="number">200</span>
                    </div>
                </div>
            </div>

            <div class="activity">
                <div class="title">
                    <i class='bx bx-receipt'></i>
                    <span class="text">Bill</span>
                </div>
                <div class="activity-data">
                    <div class="data names">
                        <span class="data-title">OrderID</span>
                        <span class="data-list">${userr.id}</span>
                        <span class="data-list">2</span>
                        <span class="data-list">3</span>
                        <span class="data-list">4</span>
                        <span class="data-list">5</span>
                    </div>
                    <div class="data email">
                        <span class="data-title">User Name</span>
                        <span class="data-list">Duy An</span>
                        <span class="data-list">Tien Thinh</span>
                        <span class="data-list">Dat Van</span>
                        <span class="data-list">Thien An</span>
                        <span class="data-list">Gia Khang</span>
                    </div>
                    <div class="data joined">
                        <span class="data-title">Date</span>
                        <span class="data-list">2022-06-14</span>
                        <span class="data-list">2022-06-14</span>
                        <span class="data-list">2022-06-14</span>
                        <span class="data-list">2022-06-14</span>
                        <span class="data-list">2022-06-14</span>
                    </div>
                    <div class="data type">
                        <span class="data-title">Address</span>
                        <span class="data-list">Quan 12</span>
                        <span class="data-list">Quan 12</span>
                        <span class="data-list">Quan 12</span>
                        <span class="data-list">Quan 12</span>
                        <span class="data-list">Quan 12</span>
                    </div>
                    <div class="data status">
                        <span class="data-title">Note</span>
                        <span class="data-list">khong biet ghi gi het</span>
                        <span class="data-list">khong biet ghi gi het</span>
                        <span class="data-list">khong biet ghi gi het</span>
                        <span class="data-list">khong biet ghi gi het</span>
                        <span class="data-list">khong biet ghi gi het</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="dash-content" id="product">
            <div class="activity">
                <div class="title">
                    <i class='bx bx-box' ></i>
                    <span class="text">Product</span>
                </div>
                <div class="activity-data">
                
				
					<div class="data names">
					
                    <span class="data-title" style="width: 120px;" >Product ID</span>
                    <c:forEach var="product" items="${products}">
                        <span class="data-list">${product.id}</span>
                        </c:forEach>
                    </div>             
                    
                    <div class="data email">
                        <span class="data-title">Name</span>
                        <c:forEach var="product" items="${products}">
                        <span class="data-list">${product.name}</span>
                        </c:forEach>
                    </div>
                    
                    	<div class="data joined">
                        <span class="data-title">Image1</span>
                        <c:forEach var="product" items="${products}">
                        <img src="../images/product/${product.image1}"/>
                        </c:forEach>
                    </div>
                    
                    <div class="data type">
                        <span class="data-title">Image2</span>
                        <c:forEach var="product" items="${products}">
                        	<img src="../images/product/${product.image2}"/>
                        </c:forEach>
                    </div>
                    <div class="data status">
                    	<span class="data-title">Image3</span>
                        <c:forEach var="product" items="${products}">
                        	<img src="../images/product/${product.image3}"/>
                        </c:forEach>
                        
                    </div>
                    <div class="data status">
                        <span class="data-title">Image4</span>
                        <c:forEach var="product" items="${products}">
                        	<img src="../images/product/${product.image4}"/>
                        </c:forEach>
                    </div>
                    <div class="data status">
                        <span class="data-title">Color</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list">${product.color}</span>
                        </c:forEach>
                    </div>
                    <div class="data status">
                        <span class="data-title">Price</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list">${product.price}</span>
                        </c:forEach>
                    </div>
                    <div class="data status">
                        <span class="data-title">Quantity</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list">${product.quantity}</span>
                        </c:forEach>
                    </div>
                    <div class="data status">
                        <span class="data-title">Manufactor</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list">${product.manufactor}</span>
                        </c:forEach>
                    </div>
                    <div class="data status">
                        <span class="data-title">Description</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list">${product.description}</span>
                        </c:forEach>
                    </div>
                    <div class="data status">
                        <span class="data-title">Discount</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list">${product.discount}</span>
                        </c:forEach>
                    </div>
                    
                    <div class="data status">
                        <span class="data-title">Category_Id</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list">${product.category.id}</span>
                        </c:forEach>
                    </div>
                    <div class="data status">
                        <span class="data-title">Edit</span>
                        <c:forEach var="product" items="${products}">
                        <span class="data-list"><button>S???a</button></span>
                        </c:forEach>
                        
                        
                        
                    </div>
                    <div class="data status">
                        <span class="data-title">Delete</span>
                        <c:forEach var="product" items="${products}">
                        	<span class="data-list"><button>Delete</button></span>
                        </c:forEach>
                    </div>
                    
                </div>
                
            </div>
            <div class="activity">
                <div class="title">
                    <i class='bx bxl-dropbox' ></i>
                    <span class="text">Th??m s???n ph???m</span>
                </div>
                <div class="activity-data">
                    <form action="#">
                        <label for="">Product ID</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="ProductID" placeholder="Product ID" >
                                <i class='fas fa-user'></i>
                            </div>
                        </div>
                        <label for="">Name</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="Name" placeholder="Name">
                                <i class='fas fa-envelope'></i>
                            </div>
                        </div>
                        <label for="">Image1</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="file" name="Image1" placeholder="Image1">
                                
                            </div>
                        </div>
                        <label for="">Image2</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="file" name="Image2" placeholder="Image2">
                                
                            </div>
                        </div>
                        <label for="">Image3</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="file" name="Image3" placeholder="Image3">
                                
                            </div>
                        </div>
                        <label for="">Image4</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="file" name="Image4" placeholder="Image4">
                                
                            </div>
                        </div>
                        <label for="">Color</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="Color" placeholder="Color">
                                
                            </div>
                        </div>
                        <label for="">Price</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="Price" placeholder="Price">
                               
                            </div>
                        </div>
                        <label for="">Quantity</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="Quantity" placeholder="Quantity">
                                
                            </div>
                        </div>
                        <label for="">Manufactor</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="Manufactor" placeholder="Manufactor">
                                
                            </div>
                        </div>
                        <label for="">Discount</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="Discount" placeholder="Discount">
                                
                            </div>
                        </div>
                        <label for="">Available</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="Available" placeholder="Available">
                                
                            </div>
                        </div>
                        <label for="">Category Id</label>
                        <div class="dbl-field">
                            <div class="field">
                                <input type="text" name="CategoryId" placeholder="Category Id">
                                
                            </div>
                        </div>
                        <label for="">Description</label>
                        <div class="message">
                            <textarea placeholder="Description" name="Description"></textarea>
                        </div>
                        <div class="button-area">
                            <button type="submit">Th??m</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="dash-content" id="user">


                <div class="activity">
                    <div class="title">
                        <i class='bx bx-user' ></i>
                        <span class="text">User</span>
                    </div>
    
                    <div class="activity-data">
                        <div class="data names">
                            <span class="data-title">Username</span>
                            <span class="data-list">Duy An</span>
                            <span class="data-list">Dat Van</span>
                            <span class="data-list">Tien Thinh</span>
                            <span class="data-list">Gia Khang</span>
                            <span class="data-list">Thien An</span>
                            <span class="data-list">Chi Pheo</span>
                            <span class="data-list">Thi No</span>
                            <span class="data-list">Lao Hat</span>
                            <span class="data-list">Cau Vang</span>
                            <span class="data-list">Naruto</span>
                        </div>
                        <div class="data email">
                            <span class="data-title">Password</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                            <span class="data-list">123</span>
                        </div>
                        <div class="data joined">
                            <span class="data-title">Fullname</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                            <span class="data-list">Nguyen Van A</span>
                        </div>
                        <div class="data type">
                            <span class="data-title">Phonenumber</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                            <span class="data-list">0123456</span>
                        </div>
                        <div class="data status">
                            <span class="data-title">Email</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                            <span class="data-list">emai@gmail.com</span>
                        </div>
                        <div class="data status">
                            <span class="data-title">Photo</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                            <span class="data-list">avatar.png</span>
                        </div>
                        <div class="data status">
                            <span class="data-title">Admin</span>
                            <span class="data-list">true</span>
                            <span class="data-list">true</span>
                            <span class="data-list">false</span>
                            <span class="data-list">false</span>
                            <span class="data-list">false</span>
                            <span class="data-list">true</span>
                            <span class="data-list">true</span>
                            <span class="data-list">false</span>
                            <span class="data-list">false</span>
                            <span class="data-list">false</span>
                        </div>
                        
                </div>
    </section>
</body>
<script type="text/javascript">
const body = document.querySelector("body"),
modeToggle = body.querySelector(".mode-toggle");
sidebar = body.querySelector("nav");
sidebarToggle = body.querySelector(".sidebar-toggle");

let getMode = localStorage.getItem("mode");
if(getMode && getMode ==="dark"){
body.classList.toggle("dark");
}

let getStatus = localStorage.getItem("status");
if(getStatus && getStatus ==="close"){
sidebar.classList.toggle("close");
}

modeToggle.addEventListener("click", () =>{
body.classList.toggle("dark");
if(body.classList.contains("dark")){
  localStorage.setItem("mode", "dark");
}else{
  localStorage.setItem("mode", "light");
}
});

sidebarToggle.addEventListener("click", () => {
sidebar.classList.toggle("close");
if(sidebar.classList.contains("close")){
  localStorage.setItem("status", "close");
}else{
  localStorage.setItem("status", "open");
}
})

</script>
</html>