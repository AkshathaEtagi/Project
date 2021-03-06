<%@ include file="header.jsp"%>

<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<div id="all">

	<div id="content">
		<div class="container">

			<div class="col-md-12">

				<ul class="breadcrumb">
					<li><a href="home.do">Home</a></li>

					<li>Farmer</li>
				</ul>

			</div>

			<div class="col-md-3">
				<!-- *** CUSTOMER MENU ***
 _________________________________________________________ -->
				<div class="panel panel-default sidebar-menu">

					<div class="panel-heading">
						<h3 class="panel-title">Farmer section</h3>
					</div>

					<div class="panel-body">

						<ul class="nav nav-pills nav-stacked">
							<li><a href="addproduct.do"><i class="fa fa-list"></i>
									Add Products</a></li>

							<li><a href="updateproduct.do"><i class="fa fa-list"></i>
									Manage Products</a></li>
							<li class="active"><a href="removeproduct.do"><i
									class="fa fa-list"></i> Remove Products</a></li>
							<li><a href="index.jsp"><i class="fa fa-sign-out"></i>
									Logout</a></li>
						</ul>
					</div>

				</div>
				<!-- /.col-md-3 -->
			</div>
			<!-- *** CUSTOMER MENU END *** -->
			<div class="col-md-9">

				<ul class="breadcrumb">
					<li><a href="farmer.jsp">Home</a></li>
					<li>My Products</li>
				</ul>


			</div>

			<div class="col-md-9" id="customer-order">
				<div class="box">
					<h1>Product Details</h1>

					<hr>
					<div class="table-responsive">
						<table class="table">
							<div id="hot">
								<div class="box">
									<div class="container">
										<div class="col-md-8">
											<h2>Remove Your Product Here</h2>
										</div>
									</div>
								</div>

								<html:form action="productremove.do" method="post">


									<div class="col-sm-6">
										<div class="form-group">
											<label for="product_name">Product Name</label>
											<html:select styleClass="form-control" styleId="productName"
												property="productName">
												<c:forEach items="${sessionScope.productList}" var="product">

													<html:option value="${product.productId}">${product.productName}</html:option>
												</c:forEach>
											</html:select>
										</div>
									</div>

									<div class="col-sm-12 text-center">
										<button type="submit" class="btn btn-primary"
											onclick="myFunction()">
											<i class="fa fa-save"></i> Remove Product
										</button>

									</div>
								</html:form>
							</div>
						</table>
					</div>

					<div class="table-responsive">
						<table class="table">
							<div id="hot">

								<div class="box">
									<div class="container">
										<div class="col-md-8">
											<h2>Your Products</h2>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="col-md-8">
										<div class="product-slider">
											<%
												int index = -1;
											%>
											<c:forEach items="${sessionScope.productList}" var="product">
												<div class="item">
													<div class="product">
														<div class="flip-container">
															<div class="flipper">
																<div class="front">
																	<a href="detail.html"> <img
																		src="image?type=product&index=<%=(++index)%>"
																		alt="No Image" class="img-responsive"></img>
																	</a>
																</div>
																<div class="back">
																	<a href="detail.html"> <img
																		src="image?type=product&index=<%=index%>"
																		alt="No Image" class="img-responsive">
																	</a>
																</div>
															</div>
														</div>
														<a href="detail.html" class="invisible"> <img
															src="img/product6.jpg" alt="" class="img-responsive">
														</a>
														<div class="text">
															<h3>
																<a href="detail.html">${product.productName}</a>
															</h3>
															<p class="price">&#8377;${product.minBidPrice}</p>
														</div>
														<!-- /.text -->

														<div class="ribbon gift">

															<div class="ribbon-background"></div>
														</div>
														<!-- /.ribbon -->

													</div>
													<!-- /.product -->
												</div>
											</c:forEach>
										</div>
									</div>

								</div>
								<!-- /.product-slider -->
							</div>
							<!-- /.container -->
							<!-- /#hot -->
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>