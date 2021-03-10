<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidWithExp.aspx.cs" Inherits="validator.ValidWithExp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> 
    <link href="Content/bootstrap.css" rel="stylesheet" /> 
    <style> 
        .c1{
            color:red; 
            font-family:arial;
            font-weight:bold;
        }
    </style>
</head>
<body style="height: 336px; width: 801px">
    <form id="form1" runat="server">
    <div>
        
    </div>
        <asp:Label ID="Label1" runat="server" Text="Real Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 35px" Width="157px" Height="23px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="c1" ErrorMessage="Name is obligation" ValidationGroup="g"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" CssClass="c1" ErrorMessage="name is incorect" ValidationExpression="[a-zA-Z]{3,}" ValidationGroup="g"></asp:RegularExpressionValidator>
        <br />
        <p>
            <asp:Label ID="Label2" runat="server" Text="username"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 41px" Width="157px" Height="22px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="c1" ErrorMessage="username is obligation" ValidationGroup="g"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" CssClass="c1" ErrorMessage="user name incorrevt" ValidationExpression="[a-z0-9]{3,}" ValidationGroup="g"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 69px" Width="164px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="c1" ErrorMessage="Email is obligate" ValidationGroup="g"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="c1" ErrorMessage="Email Format is incorect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="MAR Phone"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 26px" Width="166px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="c1" ErrorMessage="Phone is obligate " ValidationGroup="g"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" CssClass="c1" ErrorMessage="phone Format is  incorrect" ValidationExpression="(\+212|00212|0)(7|6)[0-9]{8}" ValidationGroup="g"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 147px" Text="login" Width="95px" CssClass="btn-danger active" Height="44px" ValidationGroup="g" />
        </p>
        <p>
            Errour that you made is :</p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="panel-success" Height="179px" ValidationGroup="g" />
    </form>
</body>
</html>
