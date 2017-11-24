//
//  MainViewController.swift
//  XibTest
//
//  Created by Muvi on 08/06/17.
//  Copyright © 2017 Muvi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UIGestureRecognizerDelegate {
    
    var appd:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    var titleString:String = "Home"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var sideMenuButton:UIBarButtonItem = UIBarButtonItem(image: UIImage(named:"menu"), style: .plain, target: self, action: "sideMenuFunc")
        
        self.navigationItem.leftBarButtonItem = sideMenuButton
        
        self.title = self.titleString
        
        //swipe gesture set here
        var swipeGest = UISwipeGestureRecognizer(target: self, action: "sideMenuFunc")
        swipeGest.direction = .right
        self.view.addGestureRecognizer(swipeGest)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
    }
    
    
    
    func sideMenuFunc()
    {
        //open sidemenuBar VC to see the getMenuList
        
        //register NIb here then called to that class
        let newViewController = SideMenuViewController(nibName: "SideMenuViewController", bundle: nil)
        
        newViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        // Present View "Modally"
        self.present(newViewController, animated: false, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
       
}
