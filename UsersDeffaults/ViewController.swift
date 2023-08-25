//
//  ViewController.swift
//  UsersDeffaults
//
//  Created by Oktay Kuzu on 10.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var NotTextflied: UITextField!
    @IBOutlet weak var ZamanTextflied: UITextField!
    
    @IBOutlet weak var NotLabel: UILabel!
    
    @IBOutlet weak var ZamanLabel: UILabel!
     
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kaydedilennot=UserDefaults.standard.object(forKey:"not")
        let yapılmasıgerekenzaman=UserDefaults.standard.object(forKey: "zaman")
        
        
        //gelen notu kaydilen notu kontrol etmek ve stringe cevirmek
        if let gelennot = kaydedilennot as? String{
              
            NotLabel.text = "yapılacak iş : \(gelennot)"
        }
        if let gelenzaman = yapılmasıgerekenzaman as? String{
            
            ZamanLabel.text = "yapılacak iş : \(gelenzaman)"
        }
        
    }

    @IBAction func KaydetTiklandi(_ sender: Any) {
        //gelecek olan değeri kaydetmek icin ama kücük veriler icin kullanilir.
        UserDefaults.standard.set(NotTextflied.text!, forKey: "not")
        UserDefaults.standard.set(ZamanTextflied.text!, forKey:"zaman")
        
        NotLabel.text="Yapılıcak iş : \(NotTextflied.text!)"
        ZamanLabel.text = "Yapılması gereken zaman :\(ZamanTextflied.text!)"
        
    }
    
    @IBAction func SilTiklandi(_ sender: Any) {
        let kaydedilennot=UserDefaults.standard.object(forKey: "not")
        let kaydedilenzaman=UserDefaults.standard.object(forKey: "zaman")
        
        if (kaydedilennot as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "not")
            NotLabel.text="Yapılıcak iş : "
        }
        if (kaydedilenzaman as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "zaman")
            ZamanLabel.text = "yapılacak zaman : "
        }
        
    }
}

