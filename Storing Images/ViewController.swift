//
//  ViewController.swift
//  Storing Images
//
//  Created by Justin Vallely on 5/21/15.
//  Copyright (c) 2015 JMVapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var internetImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let url = NSURL(string: "http://www.brainlesstales.com/images/2009/Oct/greatest-thing-ever.jpg")
        
        let urlRequest = NSURLRequest(URL: url!)
        
        // Make an asynchronous request
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
            response, data, error in
            
            if error != nil {
                
                println("There was an error")
                
            } else {
                
                let image = UIImage(data: data)
                
                // Set the image directly
                //self.internetImage.image = image
                
                // Save the file and then set the image to the saved file
                var documentsDirectory:String?
                
                // Return an array of folder paths that we can store our documents in. Normally only 1 value.
                var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                
                if paths.count > 0 {
                    
                    documentsDirectory = paths[0] as? String
                    
                    var savePath = documentsDirectory! + "/filename.jpg"
                    
                    // Save the file
                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    
                    self.internetImage.image = UIImage(named: savePath)
                    
                }
            }
            
        })*/
        
        
        // Un-comment the above to download a file, save it, and display it.
        // Code below is the same as above for loading a saved file
        var documentsDirectory:String?
        
        var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        
        if paths.count > 0 {
            
            documentsDirectory = paths[0] as? String
            
            var savePath = documentsDirectory! + "/filename.jpg"
            
            self.internetImage.image = UIImage(named: savePath)
        }
        
    }
        
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

