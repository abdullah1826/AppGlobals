//  AppGlobals.swift
//  Created by Muhammad Abdullah on 19/12/2018.
//  Copyright © 2018 Muhammad Abdullah - twaintec. All rights reserved.

import UIKit

class AppGlobals: NSObject {
    
    static let shared = AppGlobals()
    
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    static let greenColor = UIColor(red:  CGFloat(RED),
                             green: CGFloat(GREEN),
                             blue: CGFloat(BLUE),
                             alpha: CGFloat(ALPHA))
    
    static let darkGreenColor = UIColor(red: 17.0/255.0, green: 82.0/255.0, blue: 16.0/256.0, alpha: 1.0)
    
    static let customFont = UIFont(name: "Arvo-Bold", size: 14)!
    static let customNormalFont = UIFont(name: "Arvo", size: 12)!

    static let customFontWith20 = UIFont(name: "Arvo-Bold", size: 20)!

    static let FULL_SCREEN_WIDTH: CGFloat = CGFloat(UIScreen.main.bounds.width)
    static let FULL_SCREEN_HEIGHT: CGFloat = UIScreen .main.bounds.height
    
    
    private override init() {
        
        super.init()
        
      //  self.checkFontFamilyName()
        
    }
    
    //Accessible: can access easily by shared.methodName()
    func checkFontFamilyName(){
    
        for family: String in UIFont.familyNames
        {
            print("\(family)")
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                print("== \(names)")
            }
        }
    }
    
    //Unaccessible: can't access class functions with shared word, it's can be accessible by class name.
    class func checkFontFamily() {
        
        for family: String in UIFont.familyNames
        {
            print("\(family)")
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                print("== \(names)")
            }
        }

        
    }

    func customNavBarColor(){
        
    UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Arvo-Bold", size: 17) as Any,NSAttributedString.Key.foregroundColor : AppGlobals.greenColor]
        
    }
    
    class func keypad(display:Bool, vu: UIView){
        
        if display == true {
            
            vu.endEditing(true)
            
        } else {
            
            vu.endEditing(false)
            
        }
        
    }
 
    class func instantiateStoryBoard(storyboardname: String, identifier: String){
        
        let storyboard = UIStoryboard(name: storyboardname, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: identifier)
        
        controller.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    class func isTextfieldEmpty(txtfld: UITextField) -> Bool {
        
        var value = Bool()
        
        if txtfld.text == "" {
            
            value = false
        
        } else {
            
            value = true
        }
        
        return value
    }
    
    class func isValid(name: String) -> Bool {
        
        // check the name is between 4 and 16 characters
        
        if !(4...16 ~= name.characters.count) {
            
            return false
        }
        
        return true
    }
    
    func signInApi(username: String, password: String){
        
        
    }
    
    func changeTintColor(imageName: String, color: UIColor){
        
        let origImage = UIImage(named: imageName);
        _ = origImage?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
        
    }


    func collectionViewWidth(collectionVu: UICollectionView) -> CGFloat {
        
        let collectionViewSize = collectionVu.bounds.size
        let width = collectionViewSize.width
        
        return width
        
    }
    
    func collectionViewHeight(collectionVu: UICollectionView) -> CGFloat {
        
        let collectionViewSize = collectionVu.bounds.size
        let height = collectionViewSize.height
        
        return height
        
    }
    
    

    
}
