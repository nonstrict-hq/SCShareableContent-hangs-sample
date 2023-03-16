//
//  SCShareableContent_hangs_sampleApp.swift
//  Untitled 1
//
//  Created by Nonstrict on 2023-03-16.
//

import SwiftUI
import ScreenCaptureKit

// IMPORTANT: Make sure this app has screen recording permission

@main
struct SCShareableContent_hangs_sampleApp: App {
    @State var state = "Idle..."
    var body: some Scene {
        WindowGroup {
            Text(state)
                .task {

                    let timeout = Task {
                        do {
                            try await Task.sleep(for: .seconds(3))
                            state = "Timeout accessing SCShareableContent.current"
                        } catch {}
                    }

                    do {
                        state = "Before SCShareableContent.current"
                        let content = try await SCShareableContent.current
                        state = "After SCShareableContent.current → \(content.displays.count)"
                    } catch {
                        state = error.localizedDescription
                    }

                    timeout.cancel()
                }
        }
    }
}
