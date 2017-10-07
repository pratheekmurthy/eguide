<%-- 
    Document   : login
    Created on : Sep 27, 2017, 9:26:35 AM
    Author     : PRATHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
#pee,#pdd,#cpd,#fnr,#lnr,#dobr,#usr
{
color: black;
visibility:hidden;
}
#q,#p
{
text-decoration: underline;
text-shadow: 2px 2px yellow;
}

#login
{
height:400;
width:500;
border: 2px solid;
padding-left: 36px;
padding-right:0px;
padding-top:5px;
padding-bottom:5px;
background:white;
border-radius:10px;
}
#register
{
border: 2px solid;
background:white;
border-radius:10px;
}
#body
{
zIndex:5;
background-image:url("1.JPG");
}

#pe,#pd
{
display:none;
}
</style>
<script>

function validate()
{
if(document.getElementById("be").value=="")
{
document.getElementById("pe").style.display="block";
}
if(document.getElementById("bp").value=="")
{
document.getElementById("pd").style.display="block";
}

}
function pop()
{
login.style.zIndex = 5;
body.style.zIndex = 0;
register.style.zIndex = 0;

}
function pop1()
{
login.style.zIndex = 0;
body.style.zIndex = 0;
register.style.zIndex = 5;
}


function goback()
{
login.style.zIndex = 0;
body.style.zIndex = 5;
register.style.zIndex = 0;
}
function goback1()
{
login.style.zIndex = 0;
body.style.zIndex = 5;
register.style.zIndex = 0;
}
function validate1()
{

if(document.getElementById("fn").value=="")
{
document.getElementById("fnr").style.visibility="visible";
}
if(document.getElementById("ln").value=="")
{
document.getElementById("lnr").style.visibility="visible";
}
if(document.getElementById("dob").value=="")
{
document.getElementById("dobr").style.visibility="visible";
}
if(document.getElementById("re").value=="")
{
document.getElementById("pee").style.visibility="visible";
}
if(document.getElementById("cp").value=="")
{
document.getElementById("cpd").style.visibility="visible";
}
if(document.getElementById("pd1").value=="")
{
document.getElementById("pdd").style.visibility="visible";
}
if(document.getElementByTag("select").option.value=="1")
{
document.getElementById("usr").style.visibility="visible";
}
if(document.register.cnt.value == "-1")
{
alert("please select the type of user");
return false;
}
validateemail();
alert(" i am in");

}
function validateemail()
{
alert(" i am in");
em=document.getElementById("re").value;
regex=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

if(em.test(regx))
{
return true;
}
else
{
alert("enter correct email id");
return false;
}
}

</script>
    </head>
    <body>
        <div id="register"style="top:80px; left:400px; position: absolute;">
<table border="0"  height="500" cellpadding="2" >
<form method="post" action="userreg.jsp">
<tr>
<th> Type of user </th>
<td> <select name="cnt">
     <option value="-1"> select type of user </option>
     <option value="0"> CUSTOMER </option>
     <option value="1"> ADMIN </option> </select> </td> </tr>
<tr>
<th> First Name : </th>
<td> <input type="text" name="firstname" id="fn"  placeholder="first name"/> <label id="fnr"> <sup>*</sup>filling First Name field is mandatory</label></td> </tr>
<tr>
<th> Last Name : </th>
<td> <input type="text" name="lastname" id="ln" placeholder="last name"/><label id="lnr"> <sup>*</sup>filling Last Name field is mandatory</label> </td> </tr>
<tr> 
<th> Date of Birth : </th>
<td> <input type="date" name="dob" id="dob" placeholder="DD/MM/YYYY"  /><label id="dobr"><sup>*</sup> filling DOB id field is mandatory</label> </td></tr>
<tr>
<th> Email id : </th>
<td> <input type="text" name="emailid" id="re" placeholder="Email id" /><label id="pee"> <sup>*</sup>filling E-mail id field is mandatory</label>  </td></tr>
<tr>
<th> Password: </th>
<td> <input type="password" name="password" id="pd1" placeholder="Password" /><label id="pdd"><sup>*</sup>filling password field is mandatory</label> </td></tr>
<tr>
<th> Confirm Password: </th>
<td> <input type="password" name="confirmpassword" id="cp" placeholder=" Confirm Password" /><label id="cpd"><sup>*</sup>Confirming password field is mandatory</label> </td></tr>	
<tr>
<th> </th>
<td> <input style="border-radius:20px; width:70px;background-color:green;" type="submit" value="submit"  onsubmit="validate1()" /> 
 <input style="border-radius:20px; width:70px;background-color:green;"type="reset" value="clear" /> </td> </tr> </table>
</form> 
<pre>                                                                       <input style="border-radius:10px; width:100px;background-color:green;"type="button" value="close"  onclick="goback1()"/> </pre> 

</div>
<div id= "login"  style="top:150px; left:400px; position: absolute;"
<form method="post" action ="reg.jsp">
<h2  align="center">Login </h2>
<table  height="200" cellpadding="10">
<tr>
<th> E-mail id :</th><td><input type="text" name="" placeholder=" email"  id="be"/><label id="pe"><sup>*</sup> filling E-mail id field is mandatory</label></td></tr> 
<tr>
<th> Password : </th> <td> <input type="PASSWORD" name="pwd" placeholder="password" id="bp" /><label id="pd"><sup>*</sup> filling password field is mandatory</label> </td></tr>
<tr>
<td><input style="border-radius:10px; width:50px;" type="button" value="login" onclick="validate()" /></td> 
<td><input style="border-radius:10px; width:50px;" type="reset" name="clear" /></td>

</tr>

</form></table >

 <pre>                                       <input style="border-radius:10px; width:100px;background-color:green;"type="button" value="close"  onclick="goback()"/> </pre> 

 </div> 
<div id="body" height="1000" width="1000" style="top:0; left:0;position:absolute;">
<h1 id="p" align="center">  E-GUIDE SERVICES </H1> <pre>                                                                                   <input style="border-radius:10px; width:100px;background-color:green;" type="button" value="login" onclick="pop()" />  <input style="border-radius:10px; width:100px;background-color:green;" type="button" value="Register" onclick="pop1()" /></pre>

<div>
<video height="360" width="1360" controls >
<source src ="1st.mp4 "/>
</video>
<div/>


<H2 id="q"> INDIAN TOURISM </H2>

<P> Tourism in India is economically important and is growing rapidly. The World Travel & Tourism Council calculated that tourism generated ?14.02 lakh crore (US$220 billion) or 9.6% of the nation's GDP in 2016 and supported 40.343 million jobs, 9.3% of its total employment. The sector is predicted to grow at an annual rate of 6.8% to ?28.49 lakh crore (US$440 billion) by 2027 (10% of GDP). In October 2015, India's medical tourism sector was estimated to be worth US$3 billion. It is projected to grow to $7–8 billion by 2020.In 2014, 184,298 foreign patients traveled to India to seek medical treatment.</P>

<P>About 88.90 lakh (8.89 million) foreign tourists arrived in India in 2016 compared to 80.27 lakh (8.027 million) in 2015, recording a growth of 10.7%. Domestic tourist visits to all states and Union Territories numbered 1,036.35 million in 2012, an increase of 16.5% from 2011.In 2014, Tamil Nadu, Maharashtra and Uttar Pradesh were the most popular states for tourists.Delhi, Mumbai, Chennai, Agra and Jaipur have been the five most visited cities of India by foreign tourists during the year 2015. Worldwide, Delhi is ranked at 28 by the number of foreign tourist arrivals, while Mumbai is ranked at 30, Chennai at 43, Agra at 45, Jaipur at 52 and Kolkata at 90.</P>

<P>The Travel & Tourism Competitiveness Report 2017 ranks India 40th out of 136 countries overall. The report ranks the price competitiveness of India's tourism sector 10th out of 136 countries. It mentions that India has quite good air transport (ranked 32nd), particularly given the country’s stage of development, and reasonable ground transport infrastructure (ranked 29th). The country also scores high on natural and cultural resources (ranked 9th).Some other aspects of its tourism infrastructure remain somewhat underdeveloped however. The nation has very few hotel rooms per capita by international comparison and low ATM penetration. The World Tourism Organization reported that India's receipts from tourism during 2012 ranked 16th in the world, and 7th among Asian and Pacific countries.</P>
        
    </body>
</html>
