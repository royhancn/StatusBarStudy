//
//  StatusBarStudyApp.swift
//  StatusBarStudy
//
//  Created by Roy on 2023/10/15.
//

import SwiftUI

@main
struct StatusbarApp: App {

    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings { // Dont forget to change this line to Settings
            ContentView()
        }
    }
}
