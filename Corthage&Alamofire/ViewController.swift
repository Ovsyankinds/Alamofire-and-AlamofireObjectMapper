//
//  ViewController.swift
//  Corthage&Alamofire
//
//  Created by Ovsyankinds on 25/08/2017.
//  Copyright © 2017 Ovsyankinds. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {
    
    @IBOutlet weak var requestParamField: UITextField!
    @IBOutlet weak var multLabel: UILabel!
    @IBOutlet weak var powLabel: UILabel!
        
    @IBAction func requestOnButton(_ sender: Any){
        //let URL = "http://d.handh.ru/test.php"
        let URL = "https://swapi.co/api/people/2"
        
        /*let param = Int(requestParamField.text ?? "0") ?? 0
        let params: Parameters = ["data": param]
        
        Alamofire.request(URL, method: .post, parameters: params, encoding: JSONEncoding.default).responseObject{ (response: DataResponse<Model>) in
        
            let model: Model? = response.result.value as? Model
            guard
                let mul = model?.mul,
                let pow = model?.pow
                else {return}
            
            self.multLabel.text = "Mul: \(mul)"
            self.powLabel.text = "Pow: \(pow)"

        
        }*/
        
        Alamofire.request(URL, encoding: JSONEncoding.default).responseObject{ (response: DataResponse<Model>) in
                let model: Model? = response.result.value
                guard
                    let mul = model?.mul,
                    let pow = model?.pow
                else {return}
            
                self.multLabel.text = mul
                self.powLabel.text = pow
        
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

