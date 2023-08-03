//
//  ViewController.swift
//  keoBuaBao
//
//  Created by LinhMAC on 03/08/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var letPlayText: UITextField!
    @IBOutlet weak var PcSelect: UILabel!
    @IBOutlet weak var playerSelect: UILabel!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var PcImage: UIImageView!
    let array = ["keo","bua","bao"]
    override func viewDidLoad() {
        super.viewDidLoad()
        letPlayText.text = "Let's Play"
        letPlayText.borderStyle = .none
        playerSelect.center.x = playerImage.center.x
        playerSelect.text = "You"
        PcSelect.center.x = PcImage.center.x
        PcSelect.text = "Computer"
//        playerImage.image = UIImage(named: "keo")?.withHorizontallyFlippedOrientation()
        
        
        
        
        
        
    }
    @IBAction func sissorSelect(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3))
                let pcSelected = array[randomSelected]
                if pcSelected == "bua" {
                    playerImage.image = UIImage(named: "keo")
                    PcImage.image = UIImage(named: "bua")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "LOSE"
                    
                }else if pcSelected == "bao" {
                    playerImage.image = UIImage(named: "keo")
                    PcImage.image = UIImage(named: "bao")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "WIN"
                }else if pcSelected == "keo" {
                    playerImage.image = UIImage(named: "keo")
                    PcImage.image = UIImage(named: "keo")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "DAWN"
                }
    }
    @IBAction func rockSelect(_ sender: Any) {
   
        let randomSelected = Int(arc4random_uniform(3))
                let pcSelected = array[randomSelected]
                if pcSelected == "keo" {
                    playerImage.image = UIImage(named: "bua")
                    PcImage.image = UIImage(named: "keo")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "Win"
                    
                }else if pcSelected == "bua" {
                    playerImage.image = UIImage(named: "bua")
                    PcImage.image = UIImage(named: "bua")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "DAWN"
                }else if pcSelected == "bao" {
                    playerImage.image = UIImage(named: "bua")
                    PcImage.image = UIImage(named: "bao")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "Lose"
                }
            }
    @IBAction func papperSelect(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3))
                let pcSelected = array[randomSelected]
                if pcSelected == "keo" {
                    playerImage.image = UIImage(named: "bao")
                    PcImage.image = UIImage(named: "keo")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "Lose"
                    
                }else if pcSelected == "bua" {
                    playerImage.image = UIImage(named: "bao")
                    PcImage.image = UIImage(named: "bua")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "Win"
                }else if pcSelected == "bao" {
                    playerImage.image = UIImage(named: "bao")
                    PcImage.image = UIImage(named: "bao")?.withHorizontallyFlippedOrientation()
                    letPlayText.text = "DAWN"
                }
    }
}

