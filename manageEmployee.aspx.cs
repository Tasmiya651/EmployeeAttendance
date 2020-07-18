using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;

namespace employeeAttendanceSystem.AdminSidePages
{
    public partial class manageEmployee : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-DF7M7BQT; Database=dbEmployeeAttendance; Integrated Security=true");

        string varid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblDesignation", conn);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;

                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlDesignation.DataSource = dt;
                ddlDesignation.DataValueField = "Designation_No";
                ddlDesignation.DataTextField = "Designation_Name";
                ddlDesignation.DataBind();

                           }
            }

        protected void btnSaveEmployeeInfo_Click(object sender, EventArgs e)
        {
            SqlCommand cm13 = new SqlCommand("Select Top 1 * From tblEmployee Where Designation_FNo IS NULL ORDER BY Emp_Id DESC ", conn);
            conn.Open();
            SqlDataReader reader = cm13.ExecuteReader();
            if (reader.Read())
            {
                varid = reader["Emp_id"].ToString();
                conn.Close();
            }
            else
            {
                conn.Close();
            }
            string path ="";
            txtdesignation.Text = ddlDesignation.SelectedItem.Text;
            try {
                 path = "~/ProjectPictures/" + FileUpload1.FileName;
                string rootPath = Server.MapPath(path);
                FileUpload1.SaveAs(rootPath); }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('First, Enter Image Then Press Save Button ')", true);

            }
            String var = "NULL";
            String gender = "";
            if (rdMale.Checked)
                gender = rdMale.Text;
            else if (rdFemale.Checked)
                gender = rdFemale.Text;
            else if (rdOther.Checked)
                gender = rdOther.Text;


            SqlCommand cmd = new SqlCommand("Update tblEmployee SET Designation_FNo='" + ddlDesignation.SelectedItem.Value + "' ,Emp_FirstName='" + fnameBox.Text + "',Emp_LastName='" + lnameBox.Text + "',Emp_Gender='" + gender + "',Emp_Cnic='" + cnicbox.Text + "',Emp_Address='" + addressBox.Text + "',Emp_Email='" + emailBox.Text + "',Emp_Img='" + path + "',Emp_PhoneNo='" + phoneNoBox.Text + "',Emp_HireDate='" + hireDateBox.Text + "',Emp_BankDetails='" + txtBankDtls.Text + "',Emp_AccountNo='" + txtAccountNo.Text + "',Emp_Designation='" + txtdesignation.Text + "',Emp_Pwd='" + pwd.Text + "' Where username!='"+var+ "' AND Emp_id='" + varid + "'", conn);


            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            fillEmployeeInfo();

        }
        public void fillEmployeeInfo()
        {
            SqlCommand cmd = new SqlCommand("Select * From tblEmployee ORDER BY Emp_Id DESC", conn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataTable dt = new DataTable();
            da.Fill(dt);

            GridManageEmployee.DataSource = dt;
            GridManageEmployee.DataBind();
        }


        protected void GridManageEmployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string ID = ((Label)GridManageEmployee.Rows[e.RowIndex].FindControl("Label0")).Text;

                string IDuser = ((Label)GridManageEmployee.Rows[e.RowIndex].FindControl("Label0")).Text;
                SqlCommand cmd = new SqlCommand("Delete From tblEmployee Where Emp_id='" + ID + "'", conn);

                SqlCommand cmd2 = new SqlCommand("Delete From Users Where UserID='" + IDuser + "'", conn);

                conn.Open();
                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                conn.Close();
                fillEmployeeInfo();
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('First, You Have to Delete from other Tables than you can delete this one ')", true);

            }
        }

        protected void btnViewEmployeeInfo_Click(object sender, EventArgs e)
        {
            fillEmployeeInfo();
        }


        protected void forFingerprint_Click(object sender, EventArgs e)
        {
            ProcessStartInfo info = new ProcessStartInfo();
            info.FileName = @"D:\AddNewEmployeeDesktopApp\BiometricApp\bin\Debug\BiometricApp";
            info.Arguments = "";
            info.WindowStyle = ProcessWindowStyle.Normal;
            Process pro = Process.Start(info);
        }
    }
}