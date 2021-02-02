//
//  ViewController.swift
//  RGBColor
//
//  Created by Валерий Игнатьев on 01.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    override func viewDidLoad() {
        
        setMyDesign()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        switch sender.tag {                                                //выделяем Slider -> Attributes inspector -> View -> Tag
        case 0:
            redLabel.text = String(sender.value)
            redTextField.text = String(sender.value)
        case 1:
            greenLabel.text = String(sender.value)
            greenTextField.text = String(sender.value)
        case 2:
            blueLabel.text = String(sender.value)
            blueTextField.text = String(sender.value)
        default:
            break
        }
        
        
    }
    
    
    func setMyDesign() {
        colorView.layer.cornerRadius = 15                                   //закругление краев
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
//        blueSlider.tintColor = .systemBlue
    }
    
    
//    func setColor() {                                                       //установка цвета
//        <#function body#>
//    }
//
//    func setValueForLabel() {                                               //установка значения для лейбла
//        <#function body#>
//    }
//
//    func setValueForTextField() {                                           //установка значения для текстового поля
//        <#function body#>
//    }
    
}

