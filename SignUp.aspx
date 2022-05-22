<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WEBProject.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 347px;
        }
        .auto-style9 {
            width: 326px;
        }
        .auto-style13 {
            width: 240px;
        }
        .auto-style17 {
            width: 208px;
        }
        .auto-style7 {
            width: 347px;
            height: 51px;
        }
        .auto-style10 {
            height: 51px;
            width: 326px;
        }
        .auto-style14 {
            height: 51px;
            width: 240px;
        }
        .auto-style18 {
            height: 51px;
            width: 208px;
        }
        .auto-style8 {
            height: 51px;
        }
        .auto-style3 {
            width: 347px;
            height: 73px;
        }
        .auto-style12 {
            height: 73px;
            width: 326px;
        }
        .auto-style16 {
            height: 73px;
            width: 240px;
        }
        .auto-style20 {
            height: 73px;
            width: 208px;
        }
        .auto-style4 {
            height: 73px;
        }
        .auto-style5 {
            width: 347px;
            height: 56px;
        }
        .auto-style11 {
            height: 56px;
            width: 326px;
        }
        .auto-style15 {
            height: 56px;
            width: 240px;
        }
        .auto-style19 {
            height: 56px;
            width: 208px;
        }
        .auto-style6 {
            height: 56px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="background-color: #808080; background-image: none;">
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Blackadder ITC" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#990000" Text="Sign UP Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtFname" runat="server" OnTextChanged="TxtFname_TextChanged"></asp:TextBox>
                    <br />
                    <font color="#00FF00" face="arial" size="-1">Example:Ahmed or Abdel Rahman</font>
                    <br />
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtFname" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtFname" ErrorMessage="Invalid first name format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                    <br />
                    <font color="#00FF00" face="arial" size="-1">Example:Ahmed or Abdel Rahman</font>
                    <br />
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style18">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last name format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label12" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="E-mail"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                    <font color="#00FF00" face="arial" size="-1">Example:User@fue.edu.eg</font>
                    <br />
                    <br />
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtUser" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtUser" ErrorMessage="Invalid User Name format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label14" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Date of Birth"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    <br />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label21" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Sex"></asp:Label>
                    <br />
                </td>
                <td class="auto-style11">
                    <asp:RadioButtonList ID="rblSex" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#006666" RepeatDirection="Horizontal">
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Country"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddlCountry" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#006666">
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>England </asp:ListItem>
                        <asp:ListItem>Sudan</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label16" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Address"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="Txtaddress" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label17" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Password"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtPassword" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Should be between 8 and 16" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label18" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="Txtpassword1" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtpassword1" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="Txtpassword1" ErrorMessage="No matching password" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label19" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Mobile Number"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
                    <br />
                    <font color="#00FF00" face="arial" size="-1">Example:0122 1234567</font>
                    <br />
                    <br />
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtMobile" ErrorMessage="RequiredFieldValidator" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon">This is a required field</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Invalid mobile number format" Font-Names="Arial" Font-Size="Small" ForeColor="Maroon" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label23" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Upload Profile Pic :"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:FileUpload ID="fupPic" runat="server" />
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label24" runat="server" BackColor="#006666" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Text="Department"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlRole" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#006666">
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Assistant</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#006666" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#006666"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
