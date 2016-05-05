<%@ Page Language="C#" AutoEventWireup="true" CodeFile="start.aspx.cs" Inherits="start" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #990000;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            font-weight: normal;
        }
        .style4
        {
            color: #990000;
            font-family: Candara;
            font-size: xx-large;
        }
        .style5
        {
            color: #990000;
            font-family: Arial;
        }
        .style6
        {
            color: #990000;
            font-family: Complex;
            font-size: x-large;
        }
        .style7
        {
            color: #990000;
            font-family: cursive;
            font-size: x-large;
        }
        .style8
        {
            color: #990000;
            font-family: Calibri;
        }
        .style9
        {
            color: #990000;
            font-family: "Fira Sans";
            font-size: xx-large;
        }
        .style10
        {
            color: #990000;
            font-family: Calibri;
            font-size: medium;
        }
    </style>
</head>
<body bgcolor="#ffffcc" style="font-weight: 700; font-style: italic">
    <form id="form1" runat="server">
    <div>
    
        <p class="style2">
            <span class="style3"><span class="style4"><strong>hello guys.....</strong></span><strong><br 
                class="style4" />
            <br class="style4" />
            </strong></span><span class="style5">This is my first work...</span><br 
                class="style5" />
            <br class="style1" />
            <span class="style7">It&#39;s only to test whether my database can be modified from 
            this site.</span><br class="style6" />
            <br class="style1" />
            <span class="style10">nothing more is added...But will be modified soon 
            definitely...</span><br class="style8" />
            <br class="style1" />
            <span class="style9">Do you wanna see what is here...???</span><br 
                class="style9" />
            <br class="style1" />
            <br class="style1" />
            <asp:Button ID="Button1" runat="server" CssClass="style1" ForeColor="#009933" 
                onclick="Button1_Click" Text="YES..I DO." />
            <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button2" runat="server" CssClass="style1" ForeColor="#009933" 
                onclick="Button2_Click" Text="MAY BE LATER" />
        </p>
    
    </div>
    </form>
</body>
</html>
