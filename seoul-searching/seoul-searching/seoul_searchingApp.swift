//
//  seoul_searchingApp.swift
//  seoul-searching
//
//  Created by Jason Yi on 4/15/25.
//

import SwiftUI
import KakaoSDKCommon

@main
struct SeoulSearchingApp: App {
    init() {
        if let path = Bundle.main.path(forResource: "Secrets", ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: path),
           let kakaoKey = dict["KAKAO_NATIVE_APP_KEY"] as? String {
            KakaoSDK.initSDK(appKey: kakaoKey)
        } else {
            print("Kakao App Key not found in Secrets.plist")
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
