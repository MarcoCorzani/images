//
//  ViewController.swift
//  images
//
//  Created by Marco F.A. Corzani on 07.01.15.
//  Copyright (c) 2015 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var alien: UIImageView!
    
    
    @IBOutlet weak var text: UITextView!
    
    var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(sender: AnyObject) {
    
        counter++
        
        
        alien.image = UIImage(named: "frame\(counter).png")
        
        if counter == 5 {
        
            counter = 1
        }
    }

    override func viewDidLayoutSubviews() {
      
        alien.center = CGPointMake(alien.center.x - 400, alien.center.y)
        text.center = CGPointMake(text.center.x - 400, text.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(2, animations: {
         
         self.alien.center = CGPointMake(self.alien.center.x + 400, self.alien.center.y)
            
        })
        
        UITextView.animateWithDuration(4, animations: {
            
            self.text.center = CGPointMake(self.text.center.x + 400, self.text.center.y)
            
        })

    
    
    }
}

