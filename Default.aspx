<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication8._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 73px">
        <div style="font-size:x-large" align="center"> Student Information-Manage Form<table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 269px">&nbsp;</td>
                <td class="text-left" style="width: 446px">StudentID</td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px; height: 42px"></td>
                <td class="text-left" style="width: 446px; height: 42px">StudentName</td>
                <td class="text-left" style="height: 42px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px">&nbsp;</td>
                <td class="text-left" style="width: 446px">Address</td>
                <td class="text-left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>London</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px">&nbsp;</td>
                <td class="text-left" style="width: 446px">Age</td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="3" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px; height: 42px"></td>
                <td class="text-left" style="width: 446px; height: 42px">Contact</td>
                <td class="text-left" style="height: 42px">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px">&nbsp;</td>
                <td class="text-left" style="width: 446px">&nbsp;</td>
                <td class="text-left">
                    <asp:Button ID="Button1" runat="server" BackColor="#9933FF" OnClick="Button1_Click" Text="Insert" />
                    <asp:Button ID="Button2" runat="server" BackColor="#9933FF" OnClick="Button2_Click" Text="Update" />
                    <asp:Button ID="Button3" runat="server" BackColor="#9933FF" OnClick="Button3_Click" Text="Delete" />
                    <asp:Button ID="Button4" runat="server" BackColor="#9933FF" OnClick="Button4_Click" Text="Search" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px">&nbsp;</td>
                <td class="text-left" style="width: 446px">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px">&nbsp;</td>
                <td class="text-left" style="width: 446px">&nbsp;</td>
                <td class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 269px">&nbsp;</td>
                <td style="width: 446px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="854px">
                    </asp:GridView>
                </td>
            </tr>
            </table>
        </div>
    </div>

</asp:Content>
