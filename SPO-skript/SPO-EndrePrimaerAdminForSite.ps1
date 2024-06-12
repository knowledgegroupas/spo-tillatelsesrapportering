#Variables for processing
$AdminURL = "https://crescent-admin.sharepoint.com/"
$AdminName = "salaudeen@crescent.onmicrosoft.com"
$SiteCollURL = "https://crescent.sharepoint.com/sites/Sales"
$NewSiteAdmin = "mark@crescent.onmicrosoft.com"
 
#User Names Password to connect
$SecurePWD = ConvertTo-SecureString "Password1" -asplaintext -force 
$Credential = new-object -typename System.Management.Automation.PSCredential -argumentlist $AdminName, $SecurePWD
  
#Connect to SharePoint Online
Connect-SPOService -url $AdminURL -credential $Credential
 
#Change Site Collection Primary Admin
Set-SPOSite -Identity $SiteCollURL -Owner $NewSiteAdmin -NoWait


#Read more: https://www.sharepointdiary.com/2015/08/sharepoint-online-add-site-collection-administrator-using-powershell.html#ixzz8cwG7ffye