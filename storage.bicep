param RGLocation string = 'WestEurope'

var saname = 'sa${uniqueString(resourceGroup().id)}'

resource mysa 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: saname
  location: RGLocation
  sku: {
    name:  'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource mypip 'Microsoft.Network/publicIPAddresses@2024-05-01' = {
  name: 'mypip1'
  location: RGLocation
  sku: {
    name: 'Standard'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
  }
}

