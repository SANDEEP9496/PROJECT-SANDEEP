# Connect to Azure account
Connect-AzAccount -Tenant 74271a2c-26b2-466d-b57b-7d18c07d0b63 

Set-AzContext -SubscriptionId c9a21e48-7c43-4ec1-9b95-eab32a531266

# Set variables
$resourceGroupName = "MyResourceGroup"
$location = "EastUS"
$webAppName = "MyWebApp1208"
$appServicePlanName = "MyAppServicePlan"
$sku = "F1"  # Free tier, change to other SKU for paid plans

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create an App Service Plan
New-AzAppServicePlan -ResourceGroupName $resourceGroupName -Name $appServicePlanName -Location $location -Tier $sku

# Create a Web App
New-AzWebApp -ResourceGroupName $resourceGroupName -Name $webAppName -Location $location -AppServicePlan $appServicePlanName
