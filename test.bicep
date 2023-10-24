
param storeName string = 'mine${uniqueString(resourceGroup().id)}'

param location string = resourceGroup().location

@allowed ([
  'prod'
  'noprod'
])
@description('sllslsls')
@metadata({
  nonprod : 'prod'
})

param environmentType string 

var storeAccountSku = (environmentType == 'prod') ? 'Standard_GRS' : 'Standard_LRS'

resource store1 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  
  name: 'mystorewkkwk' 
  location: location
  sku: {
    name: storeAccountSku
  }

  kind: 'StorageV2'
}




