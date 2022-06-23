<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="url_verify.aspx.cs" Inherits="WebApplication1.url_verify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>test</title>
    <%--<script src="url_verify_js.js" type="text/javascript"></script>--%>
    <script type="text/javascript" 
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
    </script>
    <script>
       // alert("how are you init");
  
        
        function Submit_url() {
             var name = {};
            name.username = $("#username").val();
            $.ajax({
                url: 'http://localhost:52358/api/urlverify/Get',
                type: 'POST',
                dataType: 'json',
                contentType: 'application/json; charset=utf-8',
                data: {strname:'lakshman'},
                success: function (data) {
                    alert(data);
                },
                fail : function( jqXHR, textStatus ) {
          alert( "Request failed: " + textStatus );
                }
            });
        }
                 

  </script>
        
</head>
    
<body>
    <form id="form1" runat="server" onsubmit="Submit_url()">
        <div>
            <input name="username" id="username" type="text">  
            <br/>
            <input type="submit"  value="Submit" />
        </div>
    </form>
</body>
</html>
