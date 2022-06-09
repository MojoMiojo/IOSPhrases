//
//  ViewController.swift
//  IOSPhrases
//
//  Created by Mozart Sousa on 08/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var phraseLabel: UILabel!
    
    private var phrases: [String] = []
    private var lastIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.phrases = ["Uma longa viagem de mil milhas inicia-se com o movimento de um pé.",
                        "Não se pode pisar duas vezes no mesmo rio.",
                        "Podemos julgar o coração de um homem pela forma como ele trata os animais.",
                        "A beleza das coisas existe no espírito de quem as contempla."]
        phraseLabel.text = phrases[0]
    }
    
    @IBAction func newPhraseButton(_ sender: Any) {
        phraseLabel.text = phrases[getRandomIndex()]
    }
    
    private func getRandomIndex( ) -> Int {
        var randomIndex = Int(arc4random_uniform(4))
        
        while randomIndex == lastIndex {
            randomIndex = Int(arc4random_uniform(4))
        }
        
        lastIndex = randomIndex
        
        return randomIndex
    }
}
