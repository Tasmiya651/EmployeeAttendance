<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSidePages/adminMaster.Master" AutoEventWireup="true" CodeBehind="manageEmployee.aspx.cs" EnableEventValidation="false" Inherits="employeeAttendanceSystem.AdminSidePages.manageEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="setCph">
      <div class="form-row">
            <div class="form-group col-md-12">
                 <center><h3 class="alert-success">EMPLOYEE MANAGEMENT SHEET</h3></center></div></div>
        <div class="form-row" style="margin-left:3%; margin-right:3%">
            <div class="form-group col-md-4">
                <asp:TextBox ID="fnameBox" runat="server" placeholder="Enter Employee First Name" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fnameBox" ErrorMessage="First Name is Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="fnameBox" ErrorMessage="Only Characters*!" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="Emp"></asp:RegularExpressionValidator>
            
            </div>
            <div class="form-group col-md-4">
                <asp:TextBox ID="lnameBox" runat="server" placeholder="Enter Employee Last Name" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="lnameBox" ErrorMessage="Last Name is Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="lnameBox" ErrorMessage="Only Characters*!" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="Emp"></asp:RegularExpressionValidator>

            </div>
            <div class="form-group col-md-4">
            <asp:DropDownList ID="ddlDesignation" runat="server" CssClass="form-control" Width="5%"></asp:DropDownList></div>
        </div>
        <div class="form-row" style="margin-left:3%; margin-right:3%">

            <div class="form-group col-md-4">
                <asp:TextBox ID="cnicbox" runat="server" placeholder="Enter Employee CNIC" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cnicbox" ErrorMessage="CNIC is Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cnicbox" ErrorMessage="Incorrect Format For CNIC!" ForeColor="Red" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$" ValidationGroup="Emp"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group col-md-4">
             <asp:TextBox ID="addressBox" runat="server" placeholder="Enter Employee Address" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="addressBox" ErrorMessage="Address  Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
            
        </div><div class="form-group col-md-4">
                <asp:TextBox ID="phoneNoBox" runat="server"  placeholder="Enter Employee Phone No." CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phoneNoBox" ErrorMessage="Phone# Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phoneNoBox" ErrorMessage="Incorrect Format for Phone Number" ValidationExpression="^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-row"style="margin-left:3%; margin-right:3%">
            <div class="form-group col-md-4">
            <asp:Label ID="lblGender" runat="server" Text="Select Gender" CssClass="setlbl"></asp:Label>
     <br />
                <asp:RadioButton ID="rdMale" runat="server" GroupName="gender" Text="Male" />
                <asp:RadioButton ID="rdFemale" runat="server" GroupName="gender" Text="Female" />
                <asp:RadioButton ID="rdOther" runat="server" GroupName="gender" Text="Other" />
            </div>
              <div class="from-group col-md-4">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton ID="forFingerprint" runat="server" OnClick="forFingerprint_Click" ForeColor="Black" Font-Bold="True" Font-size="Large" Font-Italic="True">Enroll Fingerprint</asp:LinkButton></div>
           
             
            <div class="form-group col-md-4">
                  <asp:Label ID="lblImage" runat="server" Text="Select Image" CssClass="setlbl"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="297px" />
            
            </div>
            <div class="form-group col-md-4">
                  <asp:TextBox ID="hireDateBox" runat="server" placeholder="Enter Employee Hire Date(mm/dd/yyyy)" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator99" runat="server" ControlToValidate="hireDateBox" ErrorMessage="Hire Date is Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
             
           
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="hireDateBox" ErrorMessage="Incorrect Format For Date!" ForeColor="Red" ValidationGroup="Emp" ValidationExpression="^(?:(?:0?[13578]|1[02])|(?:0?[469]|11)(?!\/31)|(?:0?2)(?:(?!\/3[01]|\/29\/(?:(?:0[^48]|[13579][^26]|[2468][^048])00|(?:\d{2}(?:0[^48]|[13579][^26]|[2468][^048]))))))\/(?:0?[1-9]|[12][0-9]|3[01])\/\d{4}$"></asp:RegularExpressionValidator>
         
            </div>

                <div class="form-group col-md-4">
                 <asp:TextBox ID="txtBankDtls" runat="server" placeholder="Enter Bank Name" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBankDtls" ErrorMessage="Bank detail Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegEXBank" runat="server" ControlToValidate="txtBankDtls" ErrorMessage="Only Characters*!" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="Emp"></asp:RegularExpressionValidator>
       

              
           
            </div>
            <div class="form-group col-md-4">

            <asp:TextBox ID="txtAccountNo" runat="server" placeholder="Enter Account No." CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAccountNo" ErrorMessage="Account# is Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Please Enter Only 4 Numbers!" ControlToValidate="txtAccountNo" ForeColor="#FF3300" ValidationExpression="^\d{4}$" ValidationGroup="Emp"></asp:RegularExpressionValidator>

        </div>

        </div>
        <div class="form-row" style="margin-left:3%; margin-right:3%">
            
            
                <div class="form-group col-md-4">
            <asp:TextBox ID="emailBox" runat="server" placeholder="Enter Employee Email" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="emailBox" ErrorMessage="Email is Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailBox" ErrorMessage="Incorrect Format For Email!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Emp"></asp:RegularExpressionValidator>
         

            </div>
            
                 <div class="form-group col-md-4">
                <asp:TextBox ID="pwd" runat="server" placeholder="Enter Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="pwd" ErrorMessage="Password Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
            </div>
           <div class="form-group col-md-4" style="left: 0px; top: 0px">
                <asp:TextBox ID="cmpwd" runat="server" placeholder="Confirm Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="cmpwd" ErrorMessage="Confirm Password Required!" Font-Italic="True" ForeColor="Red" ValidationGroup="Emp"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does Not Match" ControlToCompare="pwd" ControlToValidate="cmpwd" ForeColor="Red"></asp:CompareValidator>
            </div>
            <asp:TextBox ID="txtdesignation" runat="server" Visible="false"></asp:TextBox>
     
 
        </div>
                <asp:TextBox ID="txtusername" runat="server" Visible="false"></asp:TextBox>
 
        <div class="form-row" style="margin-left:30%; margin-right:3%">

            <div class="form-group col-md-4">

                <asp:Button ID="btnSaveEmployeeInfo" runat="server" CssClass="btn btn-success btn-lg btn-block" Width="250px"  Text="Save" OnClick="btnSaveEmployeeInfo_Click" ValidationGroup="Emp" />
            </div>
            <div class="form-group col-md-4">
                <asp:Button ID="btnViewEmployeeInfo" runat="server" CssClass="btn btn-success btn-lg btn-block" Width="250px"  Text="View" OnClick="btnViewEmployeeInfo_Click" />
            </div>
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="Emp" />
        </div>
   
    <div style="margin-left:3%;margin-right:3%">
        <asp:GridView ID="GridManageEmployee" runat="server" OnRowDeleting="GridManageEmployee_RowDeleting" style="height:400px; max-width:inherit; overflow:scroll;" CssClass="table table-active table-bordered table-responsive" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1460px">

                    <AlternatingRowStyle BackColor="White" />

            <Columns>
              <asp:TemplateField>
                    <HeaderTemplate>
                        Employee ID
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label0" runat="server" Text='<%# Bind("Emp_id") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
               
                <asp:TemplateField>
                    <HeaderTemplate>
                        First Name
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Bind("Emp_FirstName") %>'></asp:Label>
                    </ItemTemplate>
                   
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                       Last Name
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<% #Bind("Emp_LastName")%>'></asp:Label>
                    </ItemTemplate>
                   
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
                  <asp:TemplateField>
                    <HeaderTemplate>
                       Image
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" Height="100px" Width="150px" runat="server" ImageUrl='<%#Bind("Emp_Img")%>' />
                    </ItemTemplate>
                    
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
              
                <asp:TemplateField>
                    
                    <HeaderTemplate>
                      Gender
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<% #Bind("Emp_Gender")%>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                     <asp:TemplateField>
                    <HeaderTemplate>
                       Designation
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%#Bind("Emp_Designation") %>'></asp:Label>
                    </ItemTemplate>
                         
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    
                    <HeaderTemplate>
                       CNIC
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblcnic" runat="server" Text='<% #Bind("Emp_Cnic")%>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                       Address
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Bind("Emp_Address") %>'></asp:Label>
                    </ItemTemplate>
                    
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Contact Number
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%#Bind("Emp_PhoneNo") %>'></asp:Label>
                    </ItemTemplate>
                    
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
                
                  <asp:TemplateField>
                    <HeaderTemplate>
                      Hire Date
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" DataFormatString="{0:d}" HtmlEncode="false"  Text='<%#Bind("Emp_HireDate","{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                      <HeaderTemplate>
                        Bank Details
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%#Bind("Emp_BankDetails") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Account No.
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%#Bind("Emp_AccountNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
   <asp:TemplateField>
                    <HeaderTemplate>
                      Email
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#Bind("Emp_Email") %>'></asp:Label>
                    </ItemTemplate>
                    
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:TemplateField>
               
                <asp:TemplateField>
                    <HeaderTemplate>
                        Employee Password
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%#Bind("Emp_Pwd")%>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:CommandField HeaderText="Actions" ShowDeleteButton="true"/>
            </Columns>
         <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                             
            </asp:GridView>
    </div>

        </div>   
</asp:Content>
