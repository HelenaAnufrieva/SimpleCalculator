<html>
<head>
    <title>Calculator</title>
</head>
<body>
<%
    String num1 = "0",num2 = "0";
    int result = 0;
    String operator = "+";
    char opchar = operator.charAt(0);
    if (request.getParameter("operator") != null){
        operator = request.getParameter("operator");
        opchar = operator.charAt(0);
        num1 = request.getParameter("operand1");
        num2 = request.getParameter("operand2");
        switch(opchar){
            case '0': result = Integer.parseInt(num1) + Integer.parseInt(num2);
                break;
            case '1': result = Integer.parseInt(num1) - Integer.parseInt(num2);
                break;
            case '2': result = Integer.parseInt(num1) * Integer.parseInt(num2);
                break;
            case '3': result = Integer.parseInt(num1) / Integer.parseInt(num2);
                break;
        }
    }
%>
<center>

    <h2>~SIMPLE CALCULATOR~</h2>
    <form method ="get" name ="f1">
        <input type ="text" size ="20" name ="operand1" value = <%= num1 %> />

        <select name = operator size = 1>
            <option value = "0" <% if (opchar == '0') out.print("selected"); %> >+</option>
            <option value = "1" <% if (opchar == '1') out.print("selected"); %> >-</option>
            <option value = "2" <% if (opchar == '2') out.print("selected"); %> >*</option>
            <option value = "3" <% if (opchar == '3') out.print("selected"); %> >/</option>
        </select>

        <input type ="text" size="20" name ="operand2" value = <%= num2 %> />
        <p>
            <input type = submit value = Calculate />

            Result = <%= result + "" %>
    </form>
</center>
</body>

</html>