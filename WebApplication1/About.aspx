<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>

    <asp:TextBox ID ="txtNumber" type="text" class="form-control" runat="server" autocomplete="off" placeholder="Number to encode"/>
    <asp:TextBox id="txtcodded" type="text" class="form-control" runat="server" autocomplete="off" placeholder="Number encoded"/>    
    
    <asp:Button ID="Btncode" runat="server" Text="CODE" CssClass="btn btn-primary"  onclick="btncoded_Click" />  


    <asp:TextBox ID ="txtFirstByte" type="text" class="form-control" runat="server" autocomplete="off" placeholder="first byte to decode"/>
    <asp:TextBox id="txtLastByte" type="text" class="form-control" runat="server" autocomplete="off" placeholder="last byte to decode"/>

    <asp:TextBox id="txtdecoded" type="text" class="form-control" runat="server" autocomplete="off" placeholder="Number"/>    
    
    <asp:Button ID="Btndecode" runat="server" Text="DECODE" CssClass="btn btn-primary" onclick="btndecoded_Click"  />
</asp:Content>
