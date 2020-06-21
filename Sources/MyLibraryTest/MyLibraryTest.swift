#if canImport(UIKit)
import UIKit

@IBDesignable
open class MylibraryTest: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        if isCircleView {
            layer.cornerRadius = frame.height / 2
            layer.borderColor = borderColor.cgColor
            layer.borderWidth = borderWidth
            layer.masksToBounds = true
        }
    }
    
    @IBInspectable
    public var isCircleView: Bool = false
    
    @IBInspectable
    public var cornerRadius: CGFloat = 15.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
}
#endif
