//
//  File.swift
//
//
//  Created by nasrin niazi on 2023-02-07.
//

import UIKit


public protocol Themeable {
    var darkButtonBGColor: UIColor {get}
    var darkButtonTextColor: UIColor {get}
    var lightButtonBGColor: UIColor {get}
    var lightButtonTextColor: UIColor {get}
    var digitButtonBGColor: UIColor {get}
    var digitButtonTextColor: UIColor {get}
    var backgroundColor: UIColor { get }
    var labelColor: UIColor { get }
    var secondaryLabelColor: UIColor { get }
    var switchColor:UIColor {get}
    var thumbnailImage:UIImage? {get}
    var subViewColor:UIColor {get}
    var isSelected:Bool {set get}
}
extension Themeable{
public func apply(for application: UIApplication) {
    
    DarkButton.appearance().backgroundColor = darkButtonBGColor
    DarkButton.appearance().setTitleColor(darkButtonTextColor, for: .normal)
    DarkButton.appearance().setTitleColor(darkButtonBGColor, for: .highlighted)

    RoundButton.appearance().cornerRadius = 14
//    UIButton.appearance().titleLabel?.font = UIFont.systemFont(ofSize: 30)
    LightButton.appearance().backgroundColor = lightButtonBGColor
    LightButton.appearance().setTitleColor(lightButtonTextColor, for: .normal)
    LightButton.appearance().setTitleColor(lightButtonBGColor, for: .highlighted)

    DigitButton.appearance().backgroundColor = digitButtonBGColor
    DigitButton.appearance().setTitleColor(digitButtonTextColor, for: .normal)
    SecondView.appearance().backgroundColor = subViewColor
    MainView.appearance().backgroundColor = backgroundColor
    DisplayLabel.appearance().textColor = labelColor
    SubDisplayLabel.appearance().textColor = secondaryLabelColor
    ToggleSwitch.appearance().tintColor = switchColor
    ToggleSwitch.appearance().onTintColor = switchColor
    
    UITabBar.appearance().backgroundColor = lightButtonBGColor
    UITabBar.appearance().tintColor = darkButtonBGColor
    UITabBar.appearance().unselectedItemTintColor = lightButtonTextColor
    UITableView.appearance().backgroundColor = .systemFill
    application.windows.reload()
}
}





//public class DarkTheme: Themeable {
//    public init(){}
//    public var darkButtonBGColor: UIColor = #colorLiteral(red: 1, green: 0.6001372933, blue: 0, alpha: 1)
//    public var darkButtonTextColor: UIColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
//    public var lightButtonBGColor: UIColor = #colorLiteral(red: 0.3059780598, green: 0.3137316108, blue: 0.372588098, alpha: 1)
//    public var lightButtonTextColor: UIColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
//    public var digitButtonBGColor: UIColor = #colorLiteral(red: 0.1808412671, green: 0.1839406788, blue: 0.2197810411, alpha: 1)
//    public var digitButtonTextColor: UIColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
//    public var backgroundColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//    public var secondaryLabelColor: UIColor = #colorLiteral(red: 0.822642982, green: 0.8276161551, blue: 0.8576098084, alpha: 1)
//    public var switchColor: UIColor = #colorLiteral(red: 0.4521484375, green: 0.4521484375, blue: 0.4521484375, alpha: 1)
//    public var labelColor: UIColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
//
//    public  var barStyle: UIBarStyle = .black
//    }


