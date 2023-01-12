//
//  BorderedRoundedButtonStyle.swift
//  ButtonStyle
//
//  Created by 董 亜飛 on 2023/01/12.
//

import SwiftUI

/// 枠線のある角丸なボタンスタイル
struct BorderedRoundedButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    var color: Color = .blue
    private let disabledColor: Color = .init(uiColor: .lightGray)
    private let backgroundColor: Color = .white
    private let cornerRadius: CGFloat = 8.0
    private let lineWidth: CGFloat = 2.0
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .fontWeight(.bold)
            // 有効無効でカラーを変更
            .foregroundColor(isEnabled ? color : disabledColor)
            .background(backgroundColor)
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(isEnabled ? color : disabledColor, lineWidth: lineWidth))
            // 押下時かどうかで透明度を変更
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}
