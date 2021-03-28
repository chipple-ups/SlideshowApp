//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 岡澤宏 on 2021/03/22.
//

import UIKit

let image0 = UIImage(named: "peach")
let image1 = UIImage(named: "banana")
let image2 = UIImage(named: "ichigo")
let image_array = [image0,image1,image2]

var count = 0
var startstop = false
var timer:Timer!
var timercount = 0





class ViewController: UIViewController {


    @IBOutlet weak var ImageView: UIImageView!
    
    @IBAction func next(_ sender: Any) {
        if startstop == true {
        } else {
        if count == 2 {
            count = -1
        }
        count += 1
        ImageView.image = image_array[count]
        }}
    
    
    @IBAction func prev(_ sender: Any) {
        if startstop == true {
        } else {
        if count == 0 {
            count = 3
        }
        count -= 1
        ImageView.image = image_array[count]
        }}
    
    
    @IBAction func start(_ sender: Any) {
        
        if startstop == false {
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.countTimer(_:)), userInfo: nil, repeats: true)
        startstop = true
        } else {
        
        timer.invalidate()
        startstop = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = image_array[count]
    }
    
    @objc func countTimer(_ sender: Timer){
        timercount = 1
        if count == 2 {
            count = -1
        }
        count += timercount % 3
        ImageView.image = image_array[count]
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let zoomController:zoom = segue.destination as! zoom
        zoomController.x = count
        timer.invalidate()
        startstop = false
        
    }
    

}
