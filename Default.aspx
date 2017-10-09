<%@ Page Title="" Language="C#" MasterPageFile="~/Common/WebSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PRO_Kabaddi.Default" %>


<asp:Content ID="Content11" ContentPlaceHolderID="pc" runat="server" Visible="false">

    <div class="divTable">

        <div class="divRow">
            <div class="divCell2">
                <asp:Label ID="lblMatches" runat="server" Text="Enter No. of Matches per Day: "></asp:Label> 
                <asp:TextBox ID="txtMatchNumber" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator runat="server" id="reqMatchesNumber" ControlToValidate="txtMatchNumber" 
                    errormessage="Please enter number of teams!" />

                <asp:RegularExpressionValidator ID="vldMatchesNumber" ControlToValidate="txtMatchNumber"
                    Display="Dynamic" ErrorMessage="Not a number" ValidationExpression="(^([0-9]*\d*\d{1}?\d*)$)" Runat="server"/>

                <asp:RangeValidator runat="server" id="rngMatchesNumber" controltovalidate="txtMatchNumber" type="Integer" minimumvalue="1" 
                    maximumvalue="5" errormessage="Please enter a valid number 1-5!" />
            </div>

            <div class="divCell2">
                <asp:Label ID="Label1" runat="server" Text="Enter No. of Teams: "></asp:Label> 
                <asp:TextBox ID="txtTeamNumber" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator runat="server" id="reqTeamNumber" ControlToValidate="txtTeamNumber" 
                    errormessage="Please enter number of teams!" />

                <asp:RegularExpressionValidator ID="vldTeamNumber" ControlToValidate="txtTeamNumber"
                    Display="Dynamic" ErrorMessage="Not a number" ValidationExpression="(^([0-9]*\d*\d{1}?\d*)$)" Runat="server"/>

                <asp:RangeValidator runat="server" id="rngTeamNumber" ControlToValidate="txtTeamNumber" type="Integer" minimumvalue="3" 
                    maximumvalue="25" errormessage="Please enter a valid number 3-25!" />
            </div>
            
        </div>

        <div class="NewLine">
            <asp:Button ID="btnTeams" runat="server" Text="Teams" OnClick="btnTeams_Click" />
        </div>
    </div>

    <div class="SectionHeader">
        <span>Teams</span>
    </div> 
    
    <div>
            <asp:GridView ID="gvTeams" runat="server" AutoGenerateColumns="False" BackColor="White"  
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  > 
            <RowStyle BackColor="White" ForeColor="#000" /> 
                <Columns> 
                    <asp:BoundField DataField="Id" HeaderText="Team Number" ItemStyle-Width="150px" /> 
                    <asp:TemplateField HeaderText="Team Name" ItemStyle-Width="450px">
                        <ItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>' Width="430px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns> 
            </asp:GridView> 
    </div>

    <div class="NewLine">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
       
    <div class="SectionHeader">
        <span>Match Schedule</span>
    </div> 
    
    <div>
            <asp:GridView ID="gvSchedule" runat="server" AutoGenerateColumns="False" BackColor="White"  
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" > 
            <RowStyle BackColor="White" ForeColor="#000" /> 
                <Columns> 
                    <asp:BoundField DataField="Day" HeaderText="Day" ItemStyle-Width="100px" /> 
                    <asp:BoundField DataField="Round" HeaderText="Round" ItemStyle-Width="100px" /> 
                    <asp:BoundField DataField="Team1" HeaderText="Team1" ItemStyle-Width="200px" /> 
                    <asp:BoundField DataField="Team2" HeaderText="Team2" ItemStyle-Width="200px" /> 
                </Columns> 
            </asp:GridView> 
    </div>

        
</asp:Content>