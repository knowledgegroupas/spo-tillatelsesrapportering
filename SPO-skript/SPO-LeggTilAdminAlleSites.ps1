#Variables for processing
$AdminURL = "https://kgkompetanse-admin.sharepoint.com/"
 
#Connect to SharePoint Online
Connect-SPOService -url $AdminURL
 
$Sites = Get-SPOSite -Limit ALL
 
Foreach ($Site in $Sites)
{
    Write-host "Adding Site Collection Admin for:"$Site.URL
    Set-SPOUser -site $Site -LoginName $AdminName -IsSiteCollectionAdmin $True
}


#Read more: https://www.sharepointdiary.com/2015/08/sharepoint-online-add-site-collection-administrator-using-powershell.html#ixzz8cwFacu8d