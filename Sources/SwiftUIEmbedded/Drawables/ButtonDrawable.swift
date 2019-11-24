import OpenSwiftUI

struct ButtonDrawable: Drawable {
    public var origin: Point = Point.zero
    public var size: Size = Size.zero
    public var action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public func wantedWidthForProposal(_ proposedWidth: Int) -> Int {
        return proposedWidth
    }
    
    public func wantedHeightForProposal(_ proposedHeight: Int) -> Int {
        return proposedHeight
    }
}

extension ButtonDrawable: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "Button [\(size)]"
    }
}
