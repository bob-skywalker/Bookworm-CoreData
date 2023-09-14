//
//  DataController.swift
//  Bookworm
//
//  Created by bo zhong on 9/13/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container: NSPersistentContainer = NSPersistentContainer(name: "Bookworm")
    
    init(){
        self.container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
