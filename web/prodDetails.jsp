<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/9
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Eva咖啡屋</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charFFset=utf-8"/>
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
</head>
<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="header-grid">
            <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 <span>567</span> 892</li>

                    <c:if test="${sessionScope.user != null}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>${sessionScope.user.username}
                        </li>
                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=logout">exit</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=enterLogin">Login</a></li>
                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=register">Register</a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <ul class="social-icons">
                    <li><a href="#" class="facebook"></a></li>
                    <li><a href="#" class="twitter"></a></li>
                    <li><a href="#" class="g"></a></li>
                    <li><a href="#" class="instagram"></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="logo-nav">
            <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                <h1><a href="index.html">Coffee House <span>Shop anywhere</span></a></h1>
            </div>
            <div class="logo-nav-left1">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse"
                                data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li><a href="index.html">Home</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Men's Wear</h6>
                                                <li><a href="products.html">Clothing</a></li>
                                                <li><a href="products.html">Wallets</a></li>
                                                <li><a href="products.html">Shoes</a></li>
                                                <li><a href="products.html">Watches</a></li>
                                                <li><a href="products.html">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Women's Wear</h6>
                                                <li><a href="products.html">Clothing</a></li>
                                                <li><a href="products.html">Wallets,Bags</a></li>
                                                <li><a href="products.html">Footwear</a></li>
                                                <li><a href="products.html">Watches</a></li>
                                                <li><a href="products.html">Accessories</a></li>
                                                <li><a href="products.html">Jewellery</a></li>
                                                <li><a href="products.html">Beauty & Grooming</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Kid's Wear</h6>
                                                <li><a href="products.html">Kids Home Fashion</a></li>
                                                <li><a href="products.html">Boy's Clothing</a></li>
                                                <li><a href="products.html">Girl's Clothing</a></li>
                                                <li><a href="products.html">Shoes</a></li>
                                                <li><a href="products.html">Brand Stores</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Furniture <b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Home Collection</h6>
                                                <li><a href="furniture.html">Cookware</a></li>
                                                <li><a href="furniture.html">Sofas</a></li>
                                                <li><a href="furniture.html">Dining Tables</a></li>
                                                <li><a href="furniture.html">Shoe Racks</a></li>
                                                <li><a href="furniture.html">Home Decor</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Office Collection</h6>
                                                <li><a href="furniture.html">Carpets</a></li>
                                                <li><a href="furniture.html">Tables</a></li>
                                                <li><a href="furniture.html">Sofas</a></li>
                                                <li><a href="furniture.html">Shoe Racks</a></li>
                                                <li><a href="furniture.html">Sockets</a></li>
                                                <li><a href="furniture.html">Electrical Machines</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Decorations</h6>
                                                <li><a href="furniture.html">Toys</a></li>
                                                <li><a href="furniture.html">Wall Clock</a></li>
                                                <li><a href="furniture.html">Lighting</a></li>
                                                <li><a href="furniture.html">Top Brands</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li><a href="short-codes.html">Short Codes</a></li>
                            <li><a href="mail.html">Mail Us</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form>
                            <input class="sb-search-input" placeholder="Enter your search term..." type="search"
                                   id="search">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                    </div>
                </div>
                <!-- search-scripts -->
                <script src="js/classie.js"></script>
                <script src="js/uisearch.js"></script>
                <script>
                    new UISearch(document.getElementById('sb-search'));
                </script>
                <!-- //search-scripts -->
            </div>
            <div class="header-right">
                <div class="cart box_1">
                    <a href="checkout.html">
                        <h3>
                            <div class="total">
                                <span class="simpleCart_total"></span> (<span id="simpleCart_quantity"
                                                                              class="simpleCart_quantity"></span> items)
                            </div>
                            <img src="images/bag.png" alt=""/>
                        </h3>
                    </a>

                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Single Page</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
                <h3>Filter By Price</h3>
                <ul class="dropdown-menu1">
                    <li><a href="">
                        <div id="slider-range"></div>
                        <input type="text" id="amount" style="border: 0"/>
                    </a></li>
                </ul>
                <script type='text/javascript'>//<![CDATA[
                $(window).load(function () {
                    $("#slider-range").slider({
                        range: true,
                        min: 0,
                        max: 1000,
                        values: [100, 600],
                        slide: function (event, ui) {
                            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                        }
                    });
                    $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));


                });//]]>
                </script>
                <script type="text/javascript" src="js/jquery-ui.min.js"></script>
                <!---->
            </div>
            <div class="categories animated wow slideInUp" data-wow-delay=".5s">
                <h3>Categories</h3>
                <ul class="cate">
                    <li><a href="products.html">Best Selling</a> <span>(15)</span></li>
                    <li><a href="products.html">Home Collections</a> <span>(16)</span></li>
                    <ul>
                        <li><a href="products.html">Cookware</a> <span>(2)</span></li>
                        <li><a href="products.html">New Arrivals</a> <span>(0)</span></li>
                        <li><a href="products.html">Home Decore</a> <span>(1)</span></li>
                    </ul>
                    <li><a href="products.html">Decorations</a> <span>(15)</span></li>
                    <ul>
                        <li><a href="products.html">Wall Clock</a> <span>(2)</span></li>
                        <li><a href="products.html">New Arrivals</a> <span>(0)</span></li>
                        <li><a href="products.html">Lighting</a> <span>(1)</span></li>
                        <li><a href="products.html">Top Brands</a> <span>(0)</span></li>
                    </ul>
                </ul>
            </div>
            <div class="men-position animated wow slideInUp" data-wow-delay=".5s">
                <a href="single.html"><img src="images/29.jpg" alt=" " class="img-responsive"/></a>

                <div class="men-position-pos">
                    <h4>Summer collection</h4>
                    <h5><span>55%</span> Flat Discount</h5>
                </div>
            </div>
        </div>
        <div class="col-md-8 single-right">
            <div class="col-md-5 single-right-left animated wow slideInUp" data-wow-delay=".5s">
                <div class="flexslider">
                    <ul class="slides">
                        <c:forEach items="${requestScope.product.paths}" var="path">
                            <li data-thumb="images/products/${path}">
                                <div class="thumb-image"><img style="" src="images/products/${path}"
                                                              data-imagezoom="true"
                                                              class="img-responsive"></div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- flixslider -->
                <script defer src="js/jquery.flexslider.js"></script>
                <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
                <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function () {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                </script>
                <!-- flixslider -->
            </div>
            <div class="col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s">
                <h3>${requestScope.product.productName}</h3>
                <h4><span class="item_price">￥${requestScope.product.price}</span></h4>

                <div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked>
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
                </div>
                <div class="description">
                    <h5><i>描述</i></h5>

                    <p>${requestScope.product.introduction}</p>
                </div>
                <div class="color-quality">
                    <!--
                    <div class="color-quality-left">
                        <h5>Color : </h5>
                        <ul>
                            <li><a href="#"><span></span>Red</a></li>
                            <li><a href="#" class="brown"><span></span>Yellow</a></li>
                            <li><a href="#" class="purple"><span></span>Purple</a></li>
                            <li><a href="#" class="gray"><span></span>Violet</a></li>
                        </ul>
                    </div>
                    -->


                    <div class="color-quality-right">
                        <h5>数量 :</h5>
                        <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                            <option value="null">1 件</option>
                            <option value="null">2 件</option>
                            <option value="null">3 件</option>
                            <option value="null">4 件</option>
                            <option value="null">5 件</option>
                            <option value="null">6 件</option>
                            <option value="null">7 件</option>
                            <option value="null">8 件</option>
                            <option value="null">9 件</option>
                            <option value="null">10 件</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div style="margin-top:-50px;margin-left: 20px" class="occasion-cart">
                    <a class="item_add"
                       href="${pageContext.request.contextPath}/BuyServlet?type=buy&prodId=${requestScope.product.productId}">一键购买 </a>
                </div>
                <br><br>
                <div style="margin-left: 20px" class="occasion-cart">
                    <a class="item_add"
                       href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${requestScope.product.productId}">加入购物车 </a>
                </div>

                <div class="social">
                    <div class="social-left">
                        <p>Share On :</p>
                    </div>
                    <div class="social-right">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook"></a></li>
                            <li><a href="#" class="twitter"></a></li>
                            <li><a href="#" class="g"></a></li>
                            <li><a href="#" class="instagram"></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab"
                                                                  data-toggle="tab" aria-controls="home"
                                                                  aria-expanded="true">简介</a></li>
                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab"
                                                   aria-controls="profile">Reviews(2)</a></li>
                        <li role="presentation" class="dropdown">
                            <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown"
                               aria-controls="myTabDrop1-contents">Information <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                                <li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab"
                                       aria-controls="dropdown1">cleanse</a></li>
                                <li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab"
                                       aria-controls="dropdown2">fanny</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home"
                             aria-labelledby="home-tab">
                            <h5>简介</h5>

                            <p>${requestScope.product.introduction}</p>
                        </div>
                        <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile"
                             aria-labelledby="profile-tab">
                            <div class="bootstrap-tab-text-grids">
                                <div class="bootstrap-tab-text-grid">
                                    <div class="bootstrap-tab-text-grid-left">
                                        <img src="images/4.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div class="bootstrap-tab-text-grid-right">
                                        <ul>
                                            <li><a href="#">Admin</a></li>
                                            <li><a href="#"><span class="glyphicon glyphicon-share"
                                                                  aria-hidden="true"></span>Reply</a></li>
                                        </ul>
                                        <p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                                            suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem
                                            vel eum iure reprehenderit.</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="bootstrap-tab-text-grid">
                                    <div class="bootstrap-tab-text-grid-left">
                                        <img src="images/5.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div class="bootstrap-tab-text-grid-right">
                                        <ul>
                                            <li><a href="#">Admin</a></li>
                                            <li><a href="#"><span class="glyphicon glyphicon-share"
                                                                  aria-hidden="true"></span>Reply</a></li>
                                        </ul>
                                        <p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                                            suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem
                                            vel eum iure reprehenderit.</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="add-review">
                                    <h4>add a review</h4>

                                    <form>
                                        <input type="text" value="Name" onfocus="this.value = '';"
                                               onblur="if (this.value == '') {this.value = 'Name';}" required="">
                                        <input type="email" value="Email" onfocus="this.value = '';"
                                               onblur="if (this.value == '') {this.value = 'Email';}" required="">
                                        <input type="text" value="Subject" onfocus="this.value = '';"
                                               onblur="if (this.value == '') {this.value = 'Subject';}" required="">
                                        <textarea type="text" onfocus="this.value = '';"
                                                  onblur="if (this.value == '') {this.value = 'Message...';}"
                                                  required="">Message...</textarea>
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1"
                             aria-labelledby="dropdown1-tab">
                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's
                                organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify
                                pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy
                                hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
                                pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie
                                etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl
                                craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                        </div>
                        <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2"
                             aria-labelledby="dropdown2-tab">
                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold
                                out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack
                                portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred
                                vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral
                                locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
                                beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //single -->
<!-- single-related-products -->
<div class="single-related-products">
    <div class="container">
        <h3 class="animated wow slideInUp" data-wow-delay=".5s">Related Products</h3>

        <p class="est animated wow slideInUp" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt
            in culpa qui officia
            deserunt mollit anim id est laborum.</p>

        <div class="new-collections-grids">
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="images/8.jpg" alt=" "
                                                                         class="img-responsive"></a>

                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Running Shoes</a></h4>

                    <p>Vel illum qui dolorem eum fugiat.</p>

                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$280</i> <span class="item_price">$150</span><a class="item_add" href="#">加入购物车 </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 new-collections-grid">
                <div class="new-collections-grid1-sub">
                    <div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".6s">
                        <div class="new-collections-grid1-image">
                            <a href="single.html" class="product-image"><img src="images/6.jpg" alt=" "
                                                                             class="img-responsive"></a>

                            <div class="new-collections-grid1-image-pos">
                                <a href="single.html">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="single.html">Wall Lamp</a></h4>

                        <p>Vel illum qui dolorem eum fugiat.</p>

                        <div class="new-collections-grid1-left simpleCart_shelfItem">
                            <p><i>$480</i> <span class="item_price">$400</span><a class="item_add" href="#">add to
                                cart </a></p>
                        </div>
                    </div>
                </div>
                <div class="new-collections-grid1-sub">
                    <div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".7s">
                        <div class="new-collections-grid1-image">
                            <a href="single.html" class="product-image"><img src="images/9.jpg" alt=" "
                                                                             class="img-responsive"></a>

                            <div class="new-collections-grid1-image-pos">
                                <a href="single.html">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4><a href="single.html">Wall Lamp</a></h4>

                        <p>Vel illum qui dolorem eum fugiat.</p>

                        <div class="new-collections-grid1-left simpleCart_shelfItem">
                            <p><i>$280</i> <span class="item_price">$150</span><a class="item_add" href="#">add to
                                cart </a></p>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".8s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="images/11.jpg" alt=" "
                                                                         class="img-responsive"></a>

                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Stones Bangles</a></h4>

                    <p>Vel illum qui dolorem eum fugiat.</p>

                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$340</i> <span class="item_price">$257</span><a class="item_add" href="#">加入购物车 </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //single-related-products -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>About Us</h3>

                <p>The day to enjoy the coffee,refined and cultured leisurely. We have introduced
                    Brazil,Preu,Mocha,Columbia and other coffee raw materials,special processing.</span></p>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
                <h3>Contact Info</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Wuhan
                        <span>Hubei Provance</span></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">info@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 890</li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
                <h3>Flickr Posts</h3>

                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/35.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/36.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/37.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/38.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/39.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".8s">
                <h3>Blog Posts</h3>

                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="images/9.jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">kopi lawak</a></h4>

                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">starbucks</a></h4>

                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
            <h2><a href="index.html">Coffee House <span>shop anywhere</span></a></h2>
        </div>
        <div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
        </div>
    </div>
</div>
<!-- //footer -->
<!-- zooming-effect -->
<script src="js/imagezoom.js"></script>
<!-- //zooming-effect -->


<img src="images/products/${requestScope.product.paths[0]}"/>

<h1>${requestScope.product.productId}</h1>

<h1>${requestScope.product.productName}</h1>

<h1>${requestScope.product.type}</h1>

<h1>${requestScope.product.brand}</h1>

<h1>${requestScope.product.packaging}</h1>

<h1>${requestScope.product.level}</h1>

<h1>${requestScope.product.introduction}</h1>

<h1>${requestScope.product.producingArea}</h1>

<h1>${requestScope.product.quantity}</h1>

<h1>${requestScope.product.price}</h1>

<h1>${requestScope.product.tast}</h1>

<h1>${requestScope.product.cupSize}</h1>

<h1>${requestScope.product.concentrations}</h1>

<h1>${requestScope.product.material}</h1>

<h1>${requestScope.product.weight}</h1>

<h1>${requestScope.product.capacity}</h1>

<h1>${requestScope.product.sugar}</h1>

<h1>${requestScope.product.containsMilk}</h1>

<h1>${requestScope.product.spice}</h1>

<h1>${requestScope.product.makerType}</h1>

<h1>${requestScope.product.power}</h1>

<h1>${requestScope.product.good}</h1>

<h1>${requestScope.product.bad}</h1>

<h1>${requestScope.product.ordinary}</h1>
</body>
</html>
