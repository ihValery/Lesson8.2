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
        setColor()                                                      //что бы сразу цвета и значения подгрузились
        setValueForLabel()
        setValueForTextField()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        switch sender.tag {                                                //выделяем Slider -> Attributes inspector -> View -> Tag
        case 0:
            redLabel.text = strRound(from: sender)
            redTextField.text = strRound(from: sender)
        case 1:
            greenLabel.text = strRound(from: sender)
            greenTextField.text = strRound(from: sender)
        case 2:
            blueLabel.text = strRound(from: sender)
            blueTextField.text = strRound(from: sender)
        default:
            break
        }
        setColor()
    }
    
    
    func setMyDesign() {
        colorView.layer.cornerRadius = 15                                   //закругление краев
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green

        redSlider.value = 0.3
        greenSlider.value = 0.5
        blueSlider.value = 0.7
    }
    
    //из другого класса не вызываем поэтому private
    private func setColor() {                                                  //установка цвета View
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }

    func setValueForLabel() {                                               //установка значения для лейбла
        redLabel.text = strRound(from: redSlider)
        greenLabel.text = strRound(from: greenSlider)
        blueLabel.text = strRound(from: blueSlider)
    }

    func setValueForTextField() {                                           //установка значения для текстового поля
        redTextField.text = strRound(from: redSlider)
        greenTextField.text = strRound(from: greenSlider)
        blueTextField.text = strRound(from: blueSlider)
    }
    
    //преоброзование в строку и сразу округление что бы не писать каждый раз
    func strRound(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

