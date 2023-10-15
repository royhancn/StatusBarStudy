//
//  AppDelegate.swift
//  StatusBarStudy
//
//  Created by Roy on 2023/10/15.
//

import Foundation
import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {

    // We need to declare NSStatusItem here, otherwise it gets destroyed after
    // applicationDidFinishLaunching is called
    var statusBarItem : NSStatusItem!
    var statusBarMenu : NSMenu!

    func applicationDidFinishLaunching(_ notification: Notification) {

        // Returns the system-wide status bar located in the menu bar.
        let statusBar = NSStatusBar.system

        // Returns a newly created status item that has been allotted a specified space within the status bar.
        self.statusBarItem = statusBar.statusItem(withLength: NSStatusItem.squareLength)
        self.statusBarItem.button?.image = NSImage(systemSymbolName: "star.fill", accessibilityDescription: "Status bar icon")

        // An object that manages an app’s menus.
        self.statusBarMenu = NSMenu()
        self.statusBarMenu.addItem(withTitle: "Hello", action: nil, keyEquivalent: "")

        // Add menu to statusbar
        self.statusBarItem.menu = self.statusBarMenu
    }
}
