<%@ Page language="c#" Inherits="drugsample.Individual_components" CodeFile="Individual_components.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Individual_components</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#669999">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 100; LEFT: 4px; POSITION: absolute; TOP: 56px" runat="server"
				ForeColor="White" NavigateUrl="Individual_details.aspx" Width="44px" Target="main"> MyInfo.</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 128px"
				runat="server" Target="main" Width="112px" NavigateUrl="individual_ drug_trial_information.aspx"
				ForeColor="White">Drug  Trial Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 102; LEFT: 0px; POSITION: absolute; TOP: 96px" runat="server"
				ForeColor="White" NavigateUrl="drug_trail_individual.aspx" Width="76px" Target="main">Drug Details</asp:HyperLink>&nbsp;
		</form>
	</body>
</HTML>
