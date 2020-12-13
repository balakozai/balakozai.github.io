<% @language="vbscript" %>
<% option explicit %>

<%
  

Dim conn,res
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open "C:\Inetpub\wwwroot\PROJO\DB.mdb"
set res = Server.CreateObject("ADODB.Recordset")
res.Open "Info",conn,0,3,2
%>

<html>

<body>
<%
dim a,b,c,d,e, message

a = Request.Form("fname")
b = Request.Form("lname")
c = Request.Form("usermail")
d = Request.Form("phonenumber")
e = Request.Form("Description")
res.AddNew
res("Name")= a
res("Surname")= b
res("Email")= c

res("Desc")= e
res.Update
res.MoveNext

response.redirect("ty.html")

  
     
%>

</body>
</html>