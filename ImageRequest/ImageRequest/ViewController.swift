//
//  ViewController.swift
//  ImageRequest
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // store url image in some variable
        
        let imageURL = URL(string: "http://wallpaper-gallery.net/images/image/image-18.png")
        
        // creating url session(GET request)
        let task = URLSession.shared.dataTask(with: imageURL!) { (data, response, error) in
            
            if error == nil{
                let dlImage = UIImage(data : data!)
                
                // let image to automatic without leaving to home page then re-open
                performUIUpdatesOnMain {
                    
                    // generate image to screen
                    self.imageView.image = dlImage

                }
            }
            
            
            
            print("DONE")
        }
     
      
        task.resume()
    }
}
