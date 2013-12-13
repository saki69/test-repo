<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>KrishokBondhu</title>

<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/text.css" />
<link rel="stylesheet" href="css/style.css" />
</head>

<body>
<header>
    <div class="Page-Top">
    
        <div class="Logo">
            <a href="#">
            <img src="images/logo.png" />
            </a>
        </div><!--End .Logo--> 
        
        <div class="Top-Right">
        	<form>
            	<input type="text" value="Search" />
                <input type="submit" value="Search" />
            </form><!--End Search Form-->
        	<nav>
                <ul>
                    <li><a href="#">Home</a></li>
                     <li><a href="#">Info Bank</a></li>
                    <li><a href="#">Sign In</a></li>
                </ul>                
            </nav><!--End nav-->
            <div class="clear"></div>
        </div><!--End .Top-Right-->                
    </div><!--End .Page-Top-->
</header><!--End Header-->

<div class="Content-Wrapper">
	<aside>
    	<h3>Crops</h3>
        <div class="crop-unit">
        	<h4>Rice</h4><br />
            <ul>
            	<li><a href="#">
                	<img src="images/rice.jpg" width="80" height="80" align="left" />
                    <h6>Aush</h6>
                    <p>View Details</p>
                    <div class="clear"></div>
                </a></li>
                <li><a href="#">
                	<img src="images/rice.jpg" width="80" height="80" align="left" />
                    <h6>IRRI</h6>
                    <p>View Details</p>
                    <div class="clear"></div>
                </a></li>
            </ul>
            
            <h4>Jute</h4><br />
            <ul>
            	<li><a href="#">
                	<img src="images/jute.jpg" width="80" height="80" align="left" />
                    <h6>Tosha Jute</h6>
                    <p>View Details</p>
                    <div class="clear"></div>
                </a></li>
            </ul>
        </div>
    </aside><!--End: Aside-->
    <div class="Main-Conent">
    	<a href="#" class="notify">
        	<h6>0<img src="images/notify.png" height="15" style="margin-left:10px;" /></h6>
            Post(s)
        </a><!--End: Notify-->
        <a href="#" class="notify">
        	<h6>Add<img src="images/notify2.png" height="15" style="margin-left:10px;" /></h6>
             New Crop
        </a><!--End: Notify-->
        <a href="#" class="notify">
        	<h6>Add<img src="images/notify3.png" height="15" style="margin-left:10px;" /></h6>
             New Pesticide
        </a><!--End: Notify-->
        <a href="#" class="notify">
        	<h6>Add<img src="images/notify4.png" height="15" style="margin-left:10px;" /></h6>
             New Fertilizer
        </a><!--End: Notify-->
        <a href="#" class="notify">
        	<h6>All<img src="images/notify5.png" height="15" style="margin-left:10px;" /></h6>
             User Details
        </a><!--End: Notify-->
    	<h1>Add New Crop</h1>
        <div class="Content-View">
        	<section class="Quick-Links">
            	<a href="#">
                	<div>Diseases</div>
                    <img src="images/quicklink1.png" />
                </a>
                <a href="#">
                	<div>Fertilizers</div>
                    <img src="images/quicklink2.png" />
                </a>
                <a href="#">
                	<div>Pesticides</div>
                    <img src="images/quicklink3.png" />
                </a>
            </section><!-- End .Quick-Links-->
        	<section class="view" style="border:none;background:#eee;">
            		<style>
						.add-crop form input[type=text]{
							width:200px;
							padding:5px 10px;
							border:1px solid #80bb01;							
						}
						.add-crop form input[type=submit]{
							padding:6px;
							background:#80bb01;							
							color:#fff;
							border:none;
							width:60px;
							cursor:pointer;
						}
						.add-crop .varity-unit{
							width: 173px;
							height: 200px;
							border: 1px dashed #80bb01;
							float:left;
							margin: 0 10px 10px 0;
							text-align:center;
						}
					</style>
            	  	<div class="add-crop">
                    	<h2>Add Crop</h2>
                    	<form>
                        	<label>Crop Name</label><br /><br />
                            <input type="text" /><br /><br />
                            <label>Scientific Name</label><br /><br />
                            <input type="text" /><br /><br />
                            <input type="submit" value="Add" />
                        </form>
                        <br />
                        <hr />
                        <br />
                        <h2>Add Variety</h2><br />
                        <div class="varity-unit">
                        	<img src="images/rice.jpg" width="173" />
                            <h6>Rice</h6>
                            <a href="#">Add Variety</a>
                        </div>
                        <div class="varity-unit">
                        	
                        </div>
                        <div class="varity-unit">
                        	
                        </div>
                        <div class="varity-unit">
                        	
                        </div>
                        <div class="clear"></div>
                    </div>
                    
            </section><!-- End .View-->
            <div class="clear"></div>
        </div><!-- .Content-View-->
    </div><!-- .Main-Content-->
    <div class="clear"></div>
</div><!--End .Content-Wrapper-->

<footer>
	&copy; 2013. All rights reserved.
</footer><!--End Footer-->
</body>
</html>