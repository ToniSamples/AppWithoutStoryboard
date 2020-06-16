//
//  SceneDelegate.swift
//  AppWithoutStoryboard
//
//  Created by Anton Paliakou on 6/16/20.
//  Copyright © 2020 Anton Paliakou. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        // Get UIWindowScene
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }
        
        // Create a new window property
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        // Set windowScene for window
        self.window?.windowScene = windowScene
        
        // Set custom LoginViewController as root
        window?.rootViewController = LoginViewController()
        
        // Present the window
        window?.makeKeyAndVisible()
    }


}

