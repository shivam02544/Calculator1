<%
double n1=Double.parseDouble(request.getParameter("num1"));
String opr = request.getParameter("opr");
double result=0;
if(opr.equals("sqr")){
	result=n1*n1;
}

else if(opr.equals("cube")){
	result=n1*n1*n1;
}

else if(opr.equals("sqrt")){
	result=(Math.sqrt(n1));
}

else if(opr.equals("cbrt")){
	result=(Math.cbrt(n1));
}

else if(opr.equals("fact")){
	long fact = 1;
    for (int i = 2; i <= n1; i++) {
        fact = fact * i;
    }
    result=fact;
}

else if(opr.equals("pie")){
	result=(n1*3.14);
}

else if(opr.equals("sin")){
	result=(Math.sin(Math.toRadians(n1)));
}
else if(opr.equals("cos")){
	result=(Math.cos(Math.toRadians(n1)));
}
else if(opr.equals("tan")){
	result=(Math.tan(Math.toRadians(n1)));
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
	<form action="cal1.jsp" class="form">
		<div class="main-btn">
			<input type="button" onclick="parent.location='index.html'" value="Standard">	
			<input style="background-color: green" type="button" onclick="parent.location='scin.html'" value="Scientific">
		</div>	
		<div class="main-con">
			<label>Value</label>
			<input type="text" name="num1" value="<%=n1%>" required > 
			<label>Result</label>
			<input type="text" name="rst" value="<%=result%>" readonly>
			<label for="opr">Choose an Operator</label>
			<select id="opr" name="opr">
    			<option name="opr" value="sqr">Square</option>
    			<option name="opr" value="cube">Cube</option>
    			<option name="opr" value="sqrt">Square Root</option>
    			<option name="opr" value="cbrt">Cube Root</option>
    			<option name="opr" value="fact">Factorial</option>
    			<option name="opr" value="pie">Pie</option>
    			<option name="opr" value="sin">sin</option>
    			<option name="opr" value="cos">cos</option>
    			<option name="opr" value="tan">tan</option>
    
			</select>
			<input type="submit" value="Calculate" >
			
		</div>
	</form>
</body>
</html>
