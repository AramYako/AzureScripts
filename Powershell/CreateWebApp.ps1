$rg_location = "swedencentral"
$rgName ="rg-demo-pw"
$app_plan = "demo-plan-free-pw"; 
$web_app_name = "demo-app$(Get-Random)"

$subscriptionId = ""; 

#Login
Connect-AzAccount


#Set subscription
Set-AzContext -Subscription $subscriptionId

#Create resource-group
New-AzResourceGroup -Name $rgName -Location $rg_location

#App service plan
New-AzAppServicePlan -Location "norwayeast" -Tier "F1" -Name $app_plan -ResourceGroupName $rgName

#Web app
New-AzWebApp -ResourceGroupName $rgName -Name $web_app_name -Location "norwayeast"