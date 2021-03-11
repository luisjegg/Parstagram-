//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Luis Carrillo on 3/1/21.
//

import UIKit
import Parse


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Parse.initialize(with: ParseClientConfiguration(block: { ( configuration: ParseMutableClientConfiguration) -> Void in configuration.applicationId = "Parstagram"
            configuration.server = "https://whispering-stream-51370.herokuapp.com/parse"
        })
        
        )
        
        
        
        /* let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "7ydmhgZw6GRvxbmJUbFbCUemP79hGcHCnW08o4Zd" // <- UPDATE
                    $0.clientKey = "LAEKfaShtCYbJ64nYYISIVcnJlS1T9z0gCJOsE6I" // <- UPDATE
                    $0.server = "https://parseapi.back4app.com/"
            }*/
            //Parse.initialize(with: parseConfig)
        if PFUser.current() != nil {
            let main = UIStoryboard(name: "Main", bundle: nil)
            let feedNavigationController = main.instantiateViewController(identifier: "FeedNavigationController")
            
            window?.rootViewController = feedNavigationController
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

