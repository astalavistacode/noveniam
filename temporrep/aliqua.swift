import SwiftUI

struct BackgroundStyleModifier: ViewModifier {
    var backgroundStyle: AnyShapeStyle?

    func body(content: Content) -> some View {
        content
            .background(
                backgroundStyle.map { style in
                    Rectangle().fill(style)
                }
            )
    }
}

extension View {
    func backgroundStyle(_ style: AnyShapeStyle?) -> some View {
        self.modifier(BackgroundStyleModifier(backgroundStyle: style))
    }
}
