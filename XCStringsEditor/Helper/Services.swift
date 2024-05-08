//
//  Services.swift
//  XCStringsEditor
//
//  Created by Michal on 07.05.2024.
//

import Foundation

enum Services : String, CaseIterable, Identifiable {
    case google
    case deepl
    
    var id: Self { self }
    
    var description: String {
      get {
        switch self {
          case .google:
            return "Google Translate"
          case .deepl:
            return "DeepL"
        }
      }
    }
    
}

