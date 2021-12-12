//
//  ViewController.swift
//  Sliders
//
//  Created by dasha on 11.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var changeColorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        changeColorView.layer.cornerRadius = 10
        
        redSlider.value = 0.05
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redLabel.text = String(redSlider.value)
        
        greenSlider.value = 0.27
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenLabel.text = String(greenSlider.value)
        
        blueSlider.value = 0.49
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueLabel.text = String(blueSlider.value)
        
        updateChangeColorViewBackgroundColor()
    }
    
    @IBAction func redSliderAction(sender: UISlider) {
        redLabel.text = String(format: "%.2f", redSlider.value)
        updateChangeColorViewBackgroundColor()
    }
 
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        updateChangeColorViewBackgroundColor()
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        updateChangeColorViewBackgroundColor()
    }
    
    func updateChangeColorViewBackgroundColor() {
        changeColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

