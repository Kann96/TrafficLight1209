//
//  ViewController.swift
//  TrafficLight1209
//
//  Created by Анастасия Кучер on 12.09.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 100
        yellowView.layer.cornerRadius = 100
        greenView.layer.cornerRadius = 100
        
        startButton.layer.cornerRadius = 10
    }


    @IBAction func startButtonTupped() {
        if redView.alpha == 0.5 && yellowView.alpha == 0.5 && greenView.alpha == 0.5 {
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
        } else if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.5
            redView.alpha = 1
        }
    }
}

