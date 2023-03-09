//
//  HideRowSeparatorModifier.swift
//  GradeCalc
//
//  Created by Justice Amofa on 12.03.22.
//  Copyright © 2022 Justice Amofa. All rights reserved.
//

import Foundation
import SwiftUI

struct HideRowSeparatorModifier: ViewModifier {

    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content.listRowSeparator(.hidden)
        } else {
            content
        }
    }
}

extension View {
    func hideRowSeparator() -> some View {
        modifier(HideRowSeparatorModifier())
    }
}
