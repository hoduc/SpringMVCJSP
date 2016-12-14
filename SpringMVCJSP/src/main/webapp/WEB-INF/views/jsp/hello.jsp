<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hello input:</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- jquery -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
<div class="row">
   <div class="form-group">
     <input id="search_field" type="text" name="q" class="form-control" value="">
   </div>
   <div id="hello">
   
   </div>
   <button id="ajaxButton" class="btn btn-default">Search</button>
</div>

<script>
$('#ajaxButton').click(function() { 
	var data =$("#search_field").val();
	
	console.log("hello:" + data)
	//var data = {};
	//data["name"] = $("search_field").val();
	//console.log("button click: sending data:{" + JSON.stringify(data) + "}");
    $.ajax({
        url: 'hello/' + data,
        type: 'GET',
        //data: JSON.stringify(data),
        success: function (result) {
          console.log("success:data=" + result);
          $('#hello').text(result);
        }
    });  

});
</script>
</body>
