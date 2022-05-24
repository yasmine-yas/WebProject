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
            //1- set connction
            SqlConnection cnn = new SqlConnection();
            cnn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Register.mdf;Integrated Security=True";
            //2-create insert statment
            string strInsert = String.Format("INSERT INTO [dbo].[Person] values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}' , {10} )", TxtFname.Text, txtLname.Text, txtEmail.Text, TxtUser.Text, Calendar1.SelectedDate, rblSex.SelectedValue, ddlCountry.SelectedValue, Txtaddress.Text, TxtPassword.Text, TxtMobile.Text, ddlRole.SelectedValue);
            //3-command

            SqlCommand cmdstring = new SqlCommand(strInsert, cnn);

            
           
                // 4- open
                cnn.Open();
                cmdstring.ExecuteNonQuery();
                cnn.Close();

                if (fupPic.HasFiles)
                {
                    fupPic.SaveAs(Server.MapPath("userPic") + "\\" + TxtUser.Text + "jpg");
                }



                lblMsg.Text = "Welcome" + " " + TxtFname.Text + "your account has been created successfully";
            

            


            


        }

    }
}

