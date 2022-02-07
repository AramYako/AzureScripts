
$armTemplatePath = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/quickstarts/microsoft.storage/storage-account-create/azuredeploy.json"
$armTemplateParamterPath = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/quickstarts/microsoft.storage/storage-account-create/azuredeploy.parameters.json"
$rgName ="rg-demo-pw"

New-AzResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName rgName -TemplateUri $armTemplatePath -TemplateParameterUri $armTemplateParamterPath