using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegDatabaseConnectionString"].ConnectionString);
            con.Open();
            string user = "select count(*) from logintable where username='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(user,con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("user exists already...!!!");
            }

            con.Close();
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newguid = Guid.NewGuid();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegDatabaseConnectionString"].ConnectionString);
            con.Open();
            string insert = "insert into logintable(id,username,email,password) values(@id,@uname,@email,@password)";
            SqlCommand com = new SqlCommand(insert, con);
            com.Parameters.AddWithValue("@id", newguid.ToString());
            com.Parameters.AddWithValue("@uname", TextBox1.Text);
            com.Parameters.AddWithValue("@email", TextBox2.Text);
            com.Parameters.AddWithValue("@password", TextBox3.Text);
            com.ExecuteNonQuery();
            Response.Write("Registration Successful...!!");
            Response.Redirect("default.aspx");
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
}