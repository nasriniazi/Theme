//
//  File.swift
//
//
//  Created by nasrin niazi on 2023-02-08.
//

import UIKit

public class DisplayLabel:UILabel  {
}
open class RoundButton:UIButton{
    @objc dynamic var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set (newValue) { layer.cornerRadius = newValue }
    }
}
open class DarkButton:RoundButton{
}
open class LightButton:RoundButton{
}
open class DigitButton:RoundButton{
}
public class SubDisplayLabel:UILabel{
}
public class MainView:UIView{
}
public class SecondView:MyRoundCornerView{
}
public class ToggleSwitch :UISwitch{
}
public class MyRoundCornerView : UIView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    internal func setup(){
        self.layer.cornerRadius = cornerRadius
    }
    @IBInspectable var cornerRadius : CGFloat = 20.0 {
        didSet {
            if cornerRadius > 0 {
                setup()
            }
        }
    }
}
public class CustomEmptyView: UIView {
    public init(delegate:UIViewController,message:String){
        super.init(frame: delegate.view.frame)
        self.backgroundColor = backgroundColor
        let subView = SecondView(frame: .zero)
        subView.translatesAutoresizingMaskIntoConstraints = false
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        titleLabel.textColor = .systemRed
        titleLabel.text = "Inactive Feature Alert"
        titleLabel.font = .preferredFont(forTextStyle: .headline)
        subView.addSubview(titleLabel)
        NSLayoutConstraint(item: subView, attribute: .centerX, relatedBy: .equal, toItem: titleLabel, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        let label = DisplayLabel(frame: CGRect(x: 0, y: 0, width: 300, height: 150))
        label.numberOfLines = 3
        label.text = message
        subView.addSubview(label)
        NSLayoutConstraint(item: subView, attribute: .centerX, relatedBy: .equal, toItem: label, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        self.addSubview(subView)
        NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: subView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: subView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 120).isActive = true
        NSLayoutConstraint(item: label, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 100).isActive = true
    }
    required init?(coder aDecoder :NSCoder){
        fatalError("init coder  not implemeted")
    }
}
open class MessageDisplay: NSObject, UIAlertViewDelegate {
    public class func displaySimpleMessage(titleStr: String , txtMessage: String, owner: UIViewController, buttonTitle:String?="OK") {
        let alert = UIAlertController(title: titleStr, message: txtMessage, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: .cancel, handler: nil))
        owner.present(alert, animated: true)
    }
}
