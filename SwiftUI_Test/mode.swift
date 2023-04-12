//
//  mode.swift
//  SwiftUI_Test
//
//  Created by Максим Ялынычев on 11.04.2023.
//

import Foundation
import SwiftUI

struct TitleMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .bold(true)
            .background(Color.orange)
    }
}

struct TextMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
    }
}

