<%
double n1=Double.parseDouble(request.getParameter("num1"));
double n2=Double.parseDouble(request.getParameter("num2"));
String opr = request.getParameter("opr");
double result=0;
if(opr.equals("+")){
	result=(n1+n2);
}

else if(opr.equals("-")){
	result=(n1-n2);
}

else if(opr.equals("*")){
	result=(n1*n2);
}

else if(opr.equals("/")){
	result=(n1/n2);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="./index.css">
<body>
	<h1>Calculator</h1>
	<form action="cal.jsp" class="form" method="post">
		<div class="main-btn">
			<input style="background-color: green" type="button" onclick="parent.location='index.html'" value="Standard">	
			<input  type="button" onclick="parent.location='scin.html'" value="Scientific">
		</div>	
		<div class="main-con">
			<label>First Number</label>
			<input type="text" name="num1" value="<%=n1%>" required >
			<label>Second Number</label>
			<input type="text" name="num2" value="<%=n2%>" required>
			<label>Result</label>
			<input type="text" name="rst" value="<%=result%>" readonly>
			<label for="opr">Choose an Operator</label>
			<select id="opr" name="opr">
    			<option name="opr" value="+">Addition</option>
    			<option name="opr" value="-">Subtraction</option>
    			<option name="opr" value="*">Multiply</option>
    			<option name="opr" value="/">Divide</option>
    
			</select>
			<input type="submit" value="Calculate" >
			
		</div>
	</form>
</body>
</html>

