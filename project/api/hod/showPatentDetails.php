<?php
/*session_start();
if(!isset($_SESSION['hodId']))
  {
    header("Location:hodLogin.html");
    die();
  }
$client = curl_init('http://localhost/project/api/hod/getAllPatent.php?action=encodeData');
curl_setopt($client, CURLOPT_RETURNTRANSFER, 1);
$response = curl_exec($client);
$result = json_decode($response);
$output = '<html lang="en" dir="ltr">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.css">
  <!--Animate CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">

  <link rel="stylesheet" href="css/main.css">
  </head>
    <body class="bg-1">
    <div class="d-flex justify-content-end">
      <button type="button" class="btn btn-danger" id="logout">Log Out</button>
      </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6"></div>
        <div class="">
    <div class = "table">
    <table class = "table-responsive">
    <thead class = "thead-dark">
      <tr>
      <th scope = "col">Faculty ID</th>
      <th scope = "col">Faculty Name</th>
      <th scope = "col">Patent ID</th>
      <th scope = "col">Patent Title</th>
      <th scope = "col">Patent Status</th>
      <th scope = "col">Patent Amount</th>
      <th scope = "col">Patent Filing Date</th>
      </tr>
    </thead>
    <tbody>
    ';
if(count($result) > 0){
    foreach($result as $row){
        $output .=
                '<tr>
                <td class="text-white bg-dark">'.$row->faculty_id.'</td>
                <td class="text-white bg-dark">'.$row->faculty_name.'</td>
                <td class="text-white bg-dark">'.$row->patent_id.'</td>
                <td class="text-white bg-dark">'.$row->patent_title.'</td>
                <td class="text-white bg-dark">'.$row->patent_status.'</td>
                <td class="text-white bg-dark">'.$row->patent_author.'</td>
                <td class="text-white bg-dark">'.$row->patent_filing_date.'</td>
            </tr>';
    }
  $output.= ' </tbody>
    </table>
    </div>
    </center>
    <script type="text/javascript">
      document.getElementById("logout").onclick = function () {
          location.href = "../../logout.php";
      };
        </script>
    </body>
    </html>';

}else{
    $output .= '<tr><td colspan="3" align="center">Not found!</td></tr>';
}
echo $output;
/*$result = file_get_contents("http://localhost/project/api/faculty/getAllFaculty.php?action=encodeData");
// Will dump a beauty json :3
var_dump(json_decode($result, true));*/
ini_set('display_errors',"1");
include_once '../../config/Database.php';
//include_once '../../config/Database.php';

//include_once '../../models/Book.php';
//include_once '../../models/Patent.php';
session_start();
if(!isset($_SESSION['hodId']))
  {
    header("Location:hodLogin.html");
    die();
  }
$conn = new Database();
$connection = $conn->connect();
//$facultyId = 'bks1234';
$query = "SELECT p.id as patent_id, p.title as patent_title, p.status as patent_status, p.author as patent_author, p.filedDate as patent_filing_date, s.id as faculty_id,s.name as faculty_name FROM ((faculty s INNER JOIN patentFaculty pf ON pf.facultyId = s.id)
        INNER JOIN patent p ON p.id = pf.patentId)";

        $stmt = $connection->prepare($query);
        // Execute query
        $stmt->execute();
        $result = $stmt;
        $num = $result->rowCount();
        echo $num;
        if($num == 0)
          {

            echo "You have not added any Patents";
            header("Refresh: 1.5; url= facultyOptions.php");
          //  header("Location:modifyAchievements.php");
          //  die();
        }
          else {
            /*while($row = $result->fetch(PDO::FETCH_ASSOC)) {
              extract($row);*/

?>

          <!DOCTYPE html>
           <html lang="en" dir="ltr">
              <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="css/bootstrap.css">
                <!--Animate CSS -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <link rel="stylesheet" href="css/main.css">
              </head>
                <body class="bg-2">
                  <div class="d-flex justify-content-end">
                    <button type="button" class="btn btn-danger" id="logout">Log Out</button>
                    </div>
                  <div class="container">
                    <div class="row">
                      <div class="col-md-3"></div>
                      <div class="">
                        <br><br>
              <input class="form-control" id="myInput" type="text" placeholder="Search..">

                <div class = "table">
                <table class = "table-responsive" id="t1">
                <thead class = "thead-dark" id="myTable">
                  <tr>
                  <th scope="col">Faculty ID</th>
                  <th scope="col">Faculty Name</th>
                  <th scope = "col">Patent ID</th>
                  <th scope = "col">Patent Title</th>
                  <th scope = "col">Patent Status</th>
                  <th scope = "col">Patent Author</th>
                  <th scope = "col">Patent Filing Date</th>

                </tr>
                  <?php foreach($result as $row){?>

                       <tr>
                              <td class="text-white bg-dark"><?php echo $row['faculty_id'];?></td>
                              <td class="text-white bg-dark"><?php echo $row['faculty_name'];?></td>
                              <td class="text-white bg-dark"><?php echo $row['patent_id'];?></td>
                              <td class="text-white bg-dark"><?php echo $row['patent_title'];?></td>
                              <td class="text-white bg-dark"><?php echo  $row['patent_status'];?></td>
                              <td class="text-white bg-dark"><?php  echo $row['patent_author'];?></td>
                              <td class="text-white bg-dark"><?php echo $row['patent_filing_date'];?></td>
                              

                              </form>
                          </tr>
                  <?php }?>

                </thead>
                <tbody>
              <?php }?>
              <div class="d-flex justify-content-center">
              <button class="btn btn-info" id="tb1"onclick="exportTableToExcel('t1')">Export Table Data To Excel File</button>
              <script>
              function exportTableToExcel(tableID, filename = ''){
  var downloadLink;
  var dataType = 'application/vnd.ms-excel';
  var tableSelect = document.getElementById(tableID);
  var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');

  // Specify file name
  filename = filename?filename+'.xls':'excel_data.xls';

  // Create download link element
  downloadLink = document.createElement("a");

  document.body.appendChild(downloadLink);

  if(navigator.msSaveOrOpenBlob){
      var blob = new Blob(['\ufeff', tableHTML], {
          type: dataType
      });
      navigator.msSaveOrOpenBlob( blob, filename);
  }else{
      // Create a link to the file
      downloadLink.href = 'data:' + dataType + ', ' + tableHTML;

      // Setting the file name
      downloadLink.download = filename;

      //triggering the function
      downloadLink.click();
  }
}
</script>
<script type="text/javascript">
    document.getElementById("logout").onclick = function () {
        location.href = "../../logout.php";
    };
</script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
