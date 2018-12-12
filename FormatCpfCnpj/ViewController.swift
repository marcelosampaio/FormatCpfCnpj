//
//  ViewController.swift
//  FormatCpfCnpj
//
//  Created by Marcelo Sampaio on 07/12/18.
//  Copyright © 2018 Marcelo Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let input = "12345678901234"
        
        if input.count == 11 {
            let cpfFormatted = self.cpfFormat(input)
            print("👉 formatted cpf: \(cpfFormatted)")
        }else if input.count == 14 {
            let cnpjFormatted = self.cnpjFormat(input)
            print("👉 formatted cnpj: \(cnpjFormatted)")
        }
    }

    // MARK: Formatter
    private func cpfFormat(_ input: String) -> String {
        var result = String()
        var i = 1
        var editChar = String()
        for char in input {
            if i == 3 || i == 6 {
                editChar = "."
            }
            if i == 9 {
                editChar = "-"
            }
            result = result + "\(char)" + editChar
            i = i + 1
            editChar = String()
        }
        
        return result
    }

    private func cnpjFormat(_ input: String) -> String {
        var result = String()
        var i = 1
        var editChar = String()
        for char in input {
            if i == 2 || i == 5 {
                editChar = "."
            }
            if i == 8 {
                editChar = "/"
            }
            if i == 12 {
                editChar = "-"
            }
            result = result + "\(char)" + editChar
            i = i + 1
            editChar = String()
        }
        
        return result
    }
    
    
}

