using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication8
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-KQJOD42I\\SQLEXPRESS;Initial Catalog=PragammingDB;Persist Security Info=True;User ID=sa;Password=Pass@123");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into StudentInfo_Tab values('"+int.Parse(TextBox2.Text)+"','"+TextBox3.Text+"','"+DropDownList1.SelectedValue+"','"+double.Parse(TextBox4.Text)+"','"+TextBox5.Text+"')",con);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Inserted Successful')</script>");
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("Select * from StudentInfo_Tab", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Update StudentInfo_Tab set StudentName = '"+TextBox3.Text+ "',Address = '" + DropDownList1.SelectedValue + "',Age = '" + double.Parse(TextBox4.Text) + "',Contact = '" + TextBox5 .Text + "' where StudentID='"+TextBox2.Text+"'",con);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Successfully Updated')</script>");
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete StudentInfo_Tab where StudentID='" + TextBox2.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Successfully Deleted')</script>");
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Select * from StudentInfo_Tab where  StudentID='" + TextBox2.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //protected void Button5_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand comm = new SqlCommand("Select * from StudentInfo_Tab where  StudentID='" + TextBox3.Text + "'", con);
        //    SqlDataAdapter r = comm.ExecuteReader();
        //    while (r.Read())
        //    {
        //        TextBox3.Text = r.GetValue(1).ToString();
        //    }
           
        //}

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}