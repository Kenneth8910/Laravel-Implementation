<?php
$host = 'localhost';
$db = 'onlineresume';
$user = 'root';
$pass = '';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM information";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Fetch the first row
    $row = $result->fetch_assoc();
    ?>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <style>
            img{
                float: right;
                height: 140px;
                width: 140px;
            }
            .container{
                margin: 0 auto;
                max-width: 50%;
                border: 1px solid black;
                box-shadow: 0 0 10px;
                padding: 30px;

            }
        </style>
    </head>
        <body>
            <div class="container">

            <h2><?php echo $row["name"] ?></h2>

            <p><b>Address: </b>
                <?php echo $row["address"]?></p>

            <p><b>Cellphone No.: </b> 
                <?php echo $row["cellphone"]?></p>

            <p><b>Email Address:</b> <u style="color: blue">
                <?php echo $row["email"]?></u></p>
            
            <hr style="height: 1px;" color="black">

            <p><b><u>CAREER OBJECTIVE</u></b></p>
            <p><?php echo $row["objective"]?>
            </p>

            <hr style="height: 1px;" color="black">

            <p><b><u>PERSONAL INFORMATION</u></b></p>
            <p><b>Date of Birth:</b> <?php echo $row["birthdate"]?></p>
            <p><b>Age:</b> <?php echo $row["age"]?></p>
            <p><b>Civil Status:</b> <?php echo $row["civil_status"]?></p>
            <p><b>Religion:</b> <?php echo $row["religion"]?></p>
            <p><b>Gender:</b> <?php echo $row["gender"]?></p>
            <hr style="height: 1px;" color="black">
            <p><b><u>EDUCATIONAL ATTAINMENT</u></b></p>

            <p><b>Tertiary Education</b></p>
            <p><?php echo $row["tertiary"]?></p>
            <p><?php echo $row["tertiary_address"]?></p>
            <p><?php echo $row["tertiary_course"]?></p>

            <p><b>Secondary Education</b></p>
            <p><?php echo $row["secondary"]?></p>
            <p><?php echo $row["secondary_address"]?></p>
            <p><?php echo $row["secondary_course"]?></p>

            <hr style="height: 1px;" color="black">
            <p><b><u>WORK EXPERIENCE</u></b></p>
            <p><?php echo $row["work_exp"]?></p>
            <p><?php echo $row["company"]?></p>
            <p><?php echo $row["years"]?></p>

            </div>

        </body>
</html>

<?php
} else {
    echo "0 results";
}

// Close the connection
$conn->close();
?>