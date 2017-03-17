//
//  ViewController.swift
//  Core Animation en IOS
//
//  Created by alumno on 16/03/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwVista: UIView!
    
    @IBOutlet weak var txtPrueba: UITextField!
    @IBOutlet weak var btnAnimar: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //vwVista.layer.cornerRadius = 30.0
        btnAnimar.layer.cornerRadius = 10.0
        //vwVista.layer.borderWidth = 2.0
        vwVista.layer.borderColor = UIColor.red.cgColor
        
        vwVista.layer.shadowColor = UIColor.black.cgColor
        
        vwVista.layer.shadowOffset = CGSize(width: 10, height: 10)
        vwVista.layer.shadowRadius = 5.0
        vwVista.layer.shadowOpacity = 0.5
        
        txtPrueba.layer.cornerRadius = 20.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animar(_ sender: UIButton) {
        let widthFinal = self.vwVista.frame.size.width / 2
        let heightFinal = self.vwVista.frame.size.height / 2
        //cornerRadius
        //CaAnimation
        let animacion = CABasicAnimation(keyPath: "cornerRadius")
        animacion.fromValue = 10
        animacion.toValue = widthFinal / 2
        animacion.duration = 2.0
        animacion.beginTime = CACurrentMediaTime() + 1.0
        animacion.fillMode = kCAFillModeBackwards
        animacion.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        vwVista.layer.add(animacion, forKey: "cornerRadius")
        vwVista.layer.cornerRadius = widthFinal / 2
        
        let animacionBorder = CABasicAnimation (keyPath: "borderWidth")
        animacionBorder.fromValue = 2
        animacionBorder.toValue = 10
        animacionBorder.duration = 1.0
        vwVista.layer.add(animacionBorder, forKey: "borderWidth")
        vwVista.layer.borderWidth = 10
        
        let animacionColorBorder = CABasicAnimation(keyPath: "borderColor")
        animacionColorBorder.fromValue = vwVista.layer.borderColor
        animacionColorBorder.toValue = UIColor.blue.cgColor
        animacionColorBorder.duration = 2.0
        vwVista.layer.add(animacionColorBorder, forKey: "borderColor")
        vwVista.layer.borderColor = UIColor.blue.cgColor
        
        //uiView.animateDuration
        
        /*UIView.animate(withDuration: 4.0){
            self.vwVista.alpha = 0.0
        }*/
        
        /*UIView.animate(withDuration: 3.0, animations: {
                self.vwVista.alpha = 0.0
        }) { (completion) in print("termino")    }*/
        
        /*UIView.animate(withDuration: 3.0, delay: 1.0, options: UIViewAnimationOptions.curveEaseOut, animations: { self.vwVista.alpha = 0.0 }) {(completion) in print("hola") }*/
        
        let animacionFondo = CABasicAnimation(keyPath: "backgroundColor")
        animacionFondo.fromValue = vwVista.layer.backgroundColor
        animacionFondo.toValue = UIColor.red.cgColor
        animacionFondo.duration = 2.0
        animacionFondo.beginTime = CACurrentMediaTime() + 1.0
        animacionFondo.fillMode = kCAFillModeBackwards
        animacionFondo.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        vwVista.layer.add(animacionFondo, forKey: "backgroundColor")
        vwVista.layer.backgroundColor = UIColor.red.cgColor
        
        UIView.animate(withDuration: 3.0){
            self.vwVista.frame = CGRect(x: self.vwVista.frame.origin.x , y: self.vwVista.frame.origin.y, width: widthFinal, height: heightFinal)
        }
        
        let animationRotacion = CABasicAnimation(keyPath: "transform.rotation")
        animationRotacion.fromValue = 0.0
        animationRotacion.toValue = M_PI
        animationRotacion.duration = 5.0
        
        vwVista.layer.add(animationRotacion, forKey: "transform.rotation")
        
    }
}

