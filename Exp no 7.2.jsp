<%
String name=request.getParameter("name");
int hours=Integer.parseInt(request.getParameter("hours"));
double rate=Double.parseDouble(request.getParameter("rate"));
double federal=Double.parseDouble(request.getParameter("federal"));
double state=Double.parseDouble(request.getParameter("state"));
double grossPay= rate * hours;
double tax1=federal/100;
double federalTax= tax1 * grossPay;
double tax2=state/100;
double stateTax=tax2 * grossPay;
double deduction= federalTax + stateTax;
double netPay = (grossPay) - deduction;
%>
<html>
<table>
<tr><td>Employee Name:</td><td><input type="text" name="name" value="<%=name%>" disabled="disabled">
<tr><td>Number of Hours Worked:</td><td><input type="text" name="hours" value="<%=hours%>" disabled="disabled">
<tr><td>Hourly Rate:</td><td><input type="text" name="rate" value="<%=rate%>" disabled="disabled">
<tr><td>Enter federal tax withholding rate:</td><td><input type="text" name="federal" value="<%=federal%>" disabled="disabled"></td></tr>
<tr><td>Enter state tax withholding rate:</td><td><input type="text" name="state" value="<%=state%>" disabled="disabled"></td></tr>
<tr><td>Gross Pay:</td><td><input type="text" value="<%=grossPay%>" ></td></tr>
<tr><td>Total Deduction:</td><td><input type="text" value="<%=deduction%>" ></td></tr>
<tr><td>Net Pay (After Deductions):</td><td><input type="text" value="<%=netPay%>"></td></tr>
</table>
</html>
