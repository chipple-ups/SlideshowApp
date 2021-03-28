//
//  zoom.swift
//  SlideshowApp
//
//  Created by 岡澤宏 on 2021/03/26.
//

import UIKit




class zoom: UIViewController {
    
    var x: Int = 0
    
    @IBOutlet weak var zoomview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zoomview.image = image_array[x]

        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
