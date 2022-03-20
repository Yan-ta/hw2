//
//  ViewController.swift
//  hw2
//
//  Created by Ян Таше on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewForChangeColor: UIView!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    private let minValue: Float = 1
    private let maxValue: Float = 255
    var redValue: CGFloat = 0/255
    var greenValue: CGFloat = 0/255
    var blueValue: CGFloat = 0/255
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewForChangeColor.layer.cornerRadius = 20
        sliderRed.value = 1
        sliderRed.minimumValue = minValue
        sliderRed.maximumValue = maxValue
        sliderRed.tintColor = .red
        sliderGreen.value = 1
        sliderGreen.minimumValue = minValue
        sliderGreen.maximumValue = maxValue
        sliderGreen.tintColor = .green
        sliderBlue.value = 1
        sliderBlue.minimumValue = minValue
        sliderBlue.maximumValue = maxValue
        sliderBlue.tintColor = .blue
    }
    
    @IBAction func sliderRedAction(_ sender: Any) {
        redValue = CGFloat(sliderRed.value)
        viewForChangeColor.backgroundColor = UIColor(red: redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0, alpha: 1)
    }
    
    @IBAction func sliderGreenAction(_ sender: Any) {
        greenValue = CGFloat(sliderGreen.value)
        viewForChangeColor.backgroundColor = UIColor(red: redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0, alpha: 1)
    }
    
    @IBAction func sliderBlueAction(_ sender: Any) {
        blueValue = CGFloat(sliderBlue.value)
        viewForChangeColor.backgroundColor = UIColor(red: redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0, alpha: 1)
    }
}
   
