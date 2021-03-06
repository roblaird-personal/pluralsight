﻿### Define Deployment Variables
{
$location = 'UK West'
$resourceGroupName = 'contoso-simple-iaas-template'
$resourceDeploymentName = 'contoso-iaas-template-deployment'
$templatePath = $env:SystemDrive + '\' + '\Users\roblaird\source\repos\roblaird-personal\pluralsight\microsoft-azure-resource-manager-mastering'
#$templateFile = 'simpleIaas.json'
$templateFile = 'contosoPass_rl.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
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