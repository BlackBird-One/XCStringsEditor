//
//  SettingsPane.swift
//  XCStringsEditor
//
//  Created by JungHoon Noh on 1/26/24.
//

import SwiftUI


struct SettingsView: View {
    @AppStorage("GoogleTranslateAPIKey") var googleTranslateAPIKey = ""
    @AppStorage("DeeplAPIKey") var deeplAPIKey = ""
    
    @AppStorage("SelectedAPI") var selectedAPI : Services = .google
    
    @State private var selectedOption: Services = .google

    var body: some View {
        Form {
            Picker("Selected service", selection: $selectedOption) {
                ForEach(Services.allCases) { option in
                    Text(String(describing: option))
                }
            }
            TextField("Google Translate API Key", text: $googleTranslateAPIKey)
            TextField("DeepL API Key", text: $deeplAPIKey)
        }
        .onAppear{
            selectedOption = selectedAPI
        }
        .onChange(of: selectedOption, {
            selectedAPI = selectedOption
        })
        .padding()
        .frame(width: 500, height: 250)
    }
}

#Preview {
    SettingsView()
}
