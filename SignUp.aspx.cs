using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace WEBProject
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // create connection object
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Project.mdf;Integrated Security=True";

            //Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Project.mdf;Integrated Security=True
            //create insert statment


            // Create sql insert stament
            string strInsert = String.Format("INSERT INTO [dbo].[Person] values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}' , {10} )", TxtFname.Text, txtLname.Text, txtEmail.Text, TxtUser.Text, Calendar1.SelectedDate, rblSex.SelectedValue, ddlCountry.SelectedValue, Txtaddress.Text, TxtPassword.Text, TxtMobile.Text, ddlRole.SelectedValue);


            // create sql command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
            // cmdInsert.Connection = conn;

            //execute the sql command 
            //cmdInsert.ExecuteNonQuery();

            try
            {

                // int x = 0, y = 0 , z;

                conn.Open();
                cmdInsert.ExecuteNonQuery();
                conn.Close();


                //7- Save user picture
                if (fupPic.HasFiles)
                {
                    fupPic.SaveAs(Server.MapPath("userPic") + "\\" + TxtUser.Text + "jpg");
                }



                lblMsg.Text = "Welcome" + " " + TxtFname.Text + "your account has been created successfully";
            }
            catch (SqlException err)
            {
                if (err.Number == 2627)
                {
                    lblMsg.Text = "the username" + TxtUser.Text + " " + "alreaady used , please enter new one";

                }
                else
                {
                    lblMsg.Text = "sorry database problem , please try later";
                }

            }

            catch
            {
                lblMsg.Text = " sorry , system is not available at the moment , you may try later";
            }

        }
    }
}
    
