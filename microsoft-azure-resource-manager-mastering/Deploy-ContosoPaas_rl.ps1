### Define Deployment Variables
{
$resourceGroupLocation = 'UK West'
$resourceGroupName = 'contoso-paas'
$resourceDeploymentName = 'contoso-paas-deployment'
$templatePath = $templatePath = $env:SystemDrive + '\' + 'Users\roblaird\source\repos\roblaird-personal\pluralsight\microsoft-azure-resource-manager-mastering'
$templateFile = 'contosoPass_rl.json'
#$templateFile = 'simpleIaas_rl.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $resourceGroupLocation `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}