//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by D KONDROV on 19.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    private let user = DataManager.shared.fetchUser()

    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
