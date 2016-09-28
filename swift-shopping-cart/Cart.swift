//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart{
    
    var items: Array = [Item]()
    
    func totalPriceInCents() -> Int {
        
        var totalCost = 0
        
        for item in items {
            
            totalCost += item.priceInCents
        }
        
        return totalCost
    }
    
    func add(item: Item) {
        
        items.append(item)
        
    }
    
    func remove(item: Item) {
        
        if let index = items.index(of: item) {
                
                items.remove(at: index)

        }

    }
    
    
    func items(withName name: String) -> [Item] {
        
        var nameArray = [Item]()
        
        for item in items {
            
            if item.name == name {
                
                nameArray.append(item)
            }
        }
        return nameArray
    }
    
    
    func items(withMinPrice price: Int) -> [Item] {
        
        var minItemsArray = [Item]()
        
        for item in items {
            
            if item.priceInCents >= price {
                
                minItemsArray.append(item)
            }
        }
        
        
        return minItemsArray
    }
    
    
    func items(withMaxPrice price: Int) -> [Item] {
    
    var maxItemsArray = [Item]()
    
    
        for item in items {
            if item.priceInCents <= price {
                
                maxItemsArray.append(item)
            }
            
        }
    
    return maxItemsArray
        
    }
    
    
}
