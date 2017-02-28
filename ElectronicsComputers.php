<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Electroics and Computers</title>
    </head>
    <body>
        <?php

            $servername = "127.0.0.1";
            $username = "root";
            $password = "";
            $dbname = "kgdatabase";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
            }			
	?>

        <div id="container" >
		<div id="header">
        	<h1>Business<span class="off">Assist</span></h1>
            <h2>Welcome to Business Assist</h2>
        </div>

        <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="index.php">Home</a></li>
                <li class="menuitem"><a href="about.php">About</a></li>
                <li class="menuitem"><a href="products.php">Products</a></li>
                <li class="menuitem"><a href="services.php">Services</a></li>
              <li class="menuitem"><a href="contact.php">Contact</a></li>
            </ul>
        </div>

        <div id="leftmenu">

        <div id="leftmenu_top"></div>

        <div id="leftmenu_main">

            <h3>Links</h3>

            <ul>
                <li><a href="ElectronicsComputers.php">Electronics & Computers</a></li>
                <li><a href="fashionBeauty.php">Fashion & Beauty</a></li>
                <li><a href="hobbies.php">Hobbies & Interests</a></li>
                <li><a href="homegarden.php">Home Garden & Tools</a></li>
                <li><a href="officeBusiness.php">Office & Business</a></li>
                <li><a href="kidsBabies.php">Kids & Baby</a></li>
                <li><a href="sportsOutdoors.php">Sports & Outdoors</a></li>
                <li><a href="foodDrinks.php">Food & Drinks</a></li>
                <li><a href="vehicles.php">Vehicles</a></li>
            </ul>
        </div>


        <div id="leftmenu_bottom"></div>
        </div>

	<div id="content" >
        <div id="content_top"></div>
        <div id="content_main">
            <h2 style="padding: 0px 180px 0px 180px;">Electronics and Computers </h2><br/><br/>
            
            <form action="ElectronicsComputers.php" method ="POST">
              <div>
                <select name="province" value = "" size =""  style="glow:green 1px;float:right; padding :5px 45px 5px 10px; margin: 7.5px;">
                    <option>Select product size</option>
                <?php
                        $conn2 = new mysqli($servername, $username, $password, $dbname);
                        $query2 ="SELECT prod_size FROM products";
                        $result = mysqli_query($conn2,$query2);
                        while (@$row = mysqli_fetch_row($result)){
                           echo "<option value =".  $row[0] .">" . $row[0] . "</option>";
                        }

                ?>
                </select><br/>
               </div>

               <div>
                <select name="city" value = "select your location" style="padding :5px 20px 5px 20px;">
                    <option>Select your province</option>
                <?php
                        $conn2 = new mysqli($servername, $username, $password, $dbname);
                        $query2 ="SELECT province FROM products";
                        $result = mysqli_query($conn2,$query2);
                        while (@$row = mysqli_fetch_row($result)){
                           echo "<option value =".  $row[0] .">" . $row[0] . "</option>";
                        }

                ?>
                </select> <br/>
               </div>

            <div>
            <select name="name" class = "" style="float:right; padding :5px 10px 5px 10px; margin: 15px">
                <option value="default">Select product name</option>
                <?php
                        $conn2 = new mysqli($servername, $username, $password, $dbname);
                        $query2 ="SELECT prod_name FROM products";
                        $result = mysqli_query($conn2,$query2);
                        while (@$row = mysqli_fetch_row($result)){
                           echo "<option value =".  $row[0] .">" . $row[0] . "</option>";
                        }

                ?>

            </select><br/>
            </div>
           

            <div>
            <select name="size" class = "" style="padding :5px 22px 5px 25px;" >
                <option value="default">Select your city</option>
                <?php
                        $conn2 = new mysqli($servername, $username, $password, $dbname);
                        $query2 ="SELECT city FROM products";
                        $result = mysqli_query($conn2,$query2);
                        while (@$row = mysqli_fetch_row($result)){
                                echo "<option value =".  $row[0] .">" . $row[0] . "</option>";
                        }

                ?>

            </select><br/>
            </div>
             <br/><input type="submit" value="search" name="search" style="padding :5px 70px 5px 70px;" /><br/>
             <br/><table style = "border: inset 1px black; width: 100%" class="table">
        <thead>
          <tr style = "color: green ; width: 100%; font-size: 12px;" class = "">
            <th>Product Name</th>
            <th>Product Size</th>
            <th>Product Make</th>
            <th>Product Color</th>
            <th>Product Supplier</th>
            <th>Product Description</th>
            <th>Supplier Info</th>

          </tr>

          <?php

            if ($_SERVER['REQUEST_METHOD'] === 'POST') { //something posted
                if (isset($_POST['search'])) {// button pressed
                    $conn2 = new mysqli($servername, $username, $password, $dbname);
                    $query2 ="SELECT * FROM PRODUCTS WHERE prod_name = '". $_POST['name']."'";
                    $result = mysqli_query($conn2,$query2);
                    
                    while (@$row = mysqli_fetch_row($result)){//taking data from database to views the form table
                       $prodID=$row[0];
                      //$colour=$row[11];
                      echo "<tr class ='' style = 'color :black;font-size: 12px;' >";
                      echo"<th>";
                      echo $row[2];
                      echo"</th><th>";
                      echo $row[3];
                      echo"</th><th>";
                      echo $row[4];
                      echo"</th><th>";
                      echo $row[5];
                      echo"</th><th>";
                      echo$row[7];
                     // $supp = $row[7];
                      echo "</th><th>";
                      echo $row[6];
                      echo"</th><th>";
                      echo $row[10];
                      echo "</th></tr>";






                }
                }
                }

                ?>

</thead>
 </tbody>

     </table>
        </div>
        </form>
            
        <div id="content_bottom"></div>

            <div id="footer"><h3><a href="http://www.google.com"> BMangoale </a></h3></div>
      </div>
   </div>

    
    </body>
</html>
