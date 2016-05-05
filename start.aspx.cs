using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    Page.ClientScript.RegisterOnSubmitStatement(typeof(Page), "closePage", "window.onunload = CloseWindow();");
}
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("pagelogin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // Response.Write("Hope you will check it out later");
//
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.open('close.html', '_self', null);", true);
    }
    
}