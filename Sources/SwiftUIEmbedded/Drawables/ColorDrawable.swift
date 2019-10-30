import OpenSwiftUI

public struct ColorDrawable: Drawable {
    public var origin: Point = Point.zero
    public var size: Size = Size.zero
    
    public var offeredSize: Size = Size.zero
    
    let color: Color
    public init(color: Color) {
        self.color = color
    }
    
    public func wantedWidthForProposal(_ proposedWidth: Int) -> Int {
        return proposedWidth
    }
    
    public func wantedHeightForProposal(_ proposedHeight: Int) -> Int {
        return proposedHeight
    }
}

extension ColorDrawable: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "Color [\(size)] {color: \(color)}"
    }
}
