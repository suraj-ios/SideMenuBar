# SideMenuBar
suraj-ios-SideMenuBar

Introduction about Project.
This project is done by using **XIB/Nib** and fully customized.

How to use?
1. Appdelegate class.
 //It is for display name in Sidemenubar TableView cell.
 var menuListDisplayName:[String] = ["Home","MenuTitle"] 

 2.// Set the initial NIB/XIB Class in Appdelegate.
    var initialViewController  = MainViewController(nibName:"MainViewController",bundle:nil)
    let frame = UIScreen.main.bounds
    window = UIWindow(frame: frame)
    var navBar = UINavigationController(rootViewController: initialViewController)
    
    window!.rootViewController = navBar
    window!.makeKeyAndVisible()

   3.//MainViewController Class
     var appd:AppDelegate = UIApplication.shared.delegate as! AppDelegate // Appdelegate Object     creation.
     var titleString:String = "" // to display incoming String Variable in Navigation Title.

     // function written for go to SideMenuBarViewcontroller.
      func sideMnuFunc()
    {
    //open SideMenuBarViewController to see the menuListDisplayName
    
    //register NIb here then called to that class
    let newViewController = SideMenuViewController(nibName: "SideMenuViewController", bundle: nil)
    
    newViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
    //presentationStyle set here
    newViewController.modalTransitionStyle = .flipHorizontal
    
    // Present View "Modally"
    self.present(newViewController, animated: true, completion: nil)
    }
  
 4. // SideMenuBarViewController Function here
  // Register NIB/XIB here inside Didload()
   self.tableView.register(UINib(nibName:"TableViewControllerCell",bundle:nil), forCellReuseIdentifier: "TableViewControllerCell")
    //assign string variable to label.
    cell.label.text = self.appd.menuListDisplayName[indexPath.row]
     // Didselect function go to the Respetive Page here by clicking tableView cell.
     var destination = MainViewController(nibName: "MainViewController", bundle: nil)
    destination.titleString = self.appd.menuListDisplayName[indexPath.row]
    destination.modalTransitionStyle = .flipHorizontal
    var navBar = UINavigationController(rootViewController: destination)
    self.present(navBar, animated: true, completion: nil)

  //End here

SideMenuBar
