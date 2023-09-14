//
//  BookwormApp.swift
//  Bookworm
//
//  Created by bo zhong on 9/13/23.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject var dataController: DataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
