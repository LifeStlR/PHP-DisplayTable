<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            * {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            }
        </style>
        <title>Display Data</title>
    </head>
    <body>
        <h2 align="center">Data Table Student</h2>  
        <table border="1" align="center" width="75%">
            <tr bgcolor="blue">
                <th>No</th>
                <th>Student ID</th>
                <th>Name</th>
                <th>Address</th>
            </tr>

                <?php

                include "connection.php";
                $no=1;
                $data= mysqli_query($connection, "Select * from student");
                while ($display = mysqli_fetch_Array($data)) {
                    echo "
                    <tr>
                    <td>$no</td>
                    <td>$display[std_id]</td>
                    <td>$display[name]</td>
                    <td>$display[address]</td>
                    </tr>";

                    $no++;
                }

                ?>
        </table>

        <h2 align="center">Data Grade Student</h2>  
        <table border="1" align="center" width="75%">
            <tr bgcolor="blue">
                <th>No</th>
                <th>Student ID</th>
                <th>Subject Code</th>
                <th>MID</th>
                <th>Final</th>
            </tr>

                <?php
        

                include "connection.php";
                $no=1;
                $data= mysqli_query($connection, "Select * from grade");
                while ($display = mysqli_fetch_Array($data)) {
                    echo "
                    <tr>
                    <td>$no</td>
                    <td>$display[std_id]</td>
                    <td>$display[subject_code]</td>
                    <td>$display[MID]</td>
                    <td>$display[FINAL]</td>
                    </tr>";

                    $no++;
                }

                ?>
                </table>

        <h2 align="center">Data Subject Student</h2>  
        <table border="1" align="center" width="75%">
            <tr bgcolor="blue">
                <th>No</th>
                <th>Subject Code</th>
                <th>Subject Name</th>
                <th>Credit</th>
            </tr>

                <?php

                include "connection.php";
                $no=1;
                $data= mysqli_query($connection, "Select * from subject");
                while ($display = mysqli_fetch_Array($data)) {
                    echo "
                    <tr>
                    <td>$no</td>
                    <td>$display[Subject_code]</td>
                    <td>$display[Subject_name]</td>
                    <td>$display[Credit]</td>
                    </tr>";

                    $no++;
                }

                ?>

        </table>
    </body>
</html>