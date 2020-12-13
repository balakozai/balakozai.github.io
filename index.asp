<%@language=vbscript%>
<%Option explicit%>
<%
dim obj
set obj=server.CreateObject("mswc.adrotator")
%>
<html>
   <head>
             <title>Home</title>

       <meta http-equiv="refresh" content="26">
       <link type="text/css" rel="stylesheet" href="stylesheet.css"/>

</head>


<body>
    <div id="header">
    
        <ul id="hul">
                 
                <li class="hli"><a href="Support.html">SUPPORT</a></li>
                <li class="hli"><a href="cars.html">CARS</a></li>    
                <li class="hli"><a href="Home.asp"><span id="spanheader">HOME </span></a></li>         
                <li class="hli"><a href="About us.html">ABOUT US</a></li>
                <li class="hli"><a href="Contact us.html">CONTACT US</a></li> 
         </ul>



<!-- <p id="Head">Cars Empire</p> -->
<img id="Head" src="IMG/logo2.jpg"/>
</div>
<div id="left">

   <ul>
       <li id="lihead"><a href="cars.html" class="linav">CARS</a></li>
       <li class="li"><a href="suv.html"  class="linav">SUV</a></li>
       <li class="li"><a href="luxury.html"  class="linav">Luxury</a></li>
       <li class="li"><a href="sedan.html"  class="linav">Sedan</a></li>
       <li class="li"><a href="hatch-back.html"  class="linav">Hatch-Back</a></li>
      
   </ul>  
     
</div>



<p class="bodyhead"></p>





<div class="content">
<img class="photo1" src="IMG/slider/s1.jpg" alt="" width="780" height="350"/>
<img class="photo2" src="IMG/slider/s2.jpg" alt="" width="780" height="350">
<img class="photo3" src="IMG/slider/s3.jpg" alt="" width="780" height="350">
<img class="photo4" src="IMG/slider/s4.jpg" alt="" width="780" height="350">
<img class="photo5" src="IMG/slider/s5.jpg" alt="" width="780" height="350">
</div>



<hr>
<div>
<div  id=adrotator>
<%
=obj.GetAdvertisement("Adlist.txt")
%>
<%
Response.write (obj.GetAdvertisement("Adlist.txt"))
set Obj=Nothing
%>
</div>


<table id="shop" border="0">

<tr>
<td class="option"><img src="IMG/shop/emi2.jpg" alt="" height="100" width="100"></td>
<td class="options"><img src="IMG/shop/save.jpg" alt="" height="100" width="100"></td>
<td class="option"><img src="IMG/shop/service.png" alt="" height="100" width="100"></td>
</tr>

<tr>
<td><p class="para">EMI options Available <br>on 0% Interest, Buy Now.</p></td>
<td class="options"><p class="para">Lots of offers and discounts on <br>various segments, Save More.</p></td>
<td><p class="para">Free service,<br>for 1 year<br>just a Click Away!</td>
</tr>


</table>



<div id="footer">

<p id="foot1" align="center">HTML CSS Design by Karan Dave</p>  

</div>
</body>
</html>








