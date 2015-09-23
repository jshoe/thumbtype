//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var yeahButton: UIButton!
    @IBOutlet var thanksButton: UIButton!
    @IBOutlet var noButton: UIButton!
    @IBOutlet var okayButton: UIButton!
    @IBOutlet var hahaButton: UIButton!
    @IBOutlet var almostThereButton: UIButton!
    @IBOutlet var outsideButton: UIButton!
    @IBOutlet var holdOnButton: UIButton!
    @IBOutlet var onMyWayButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    @IBOutlet var whatsUpButton: UIButton!
    @IBOutlet var coolButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func returnLine() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("\r\n")
    }
    
    func deleteChar() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.deleteBackward()
    }

    func insertYeah() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("Yeah ")
    }
    
    func insertThanks() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("Thanks ")
    }
    
    func insertNo() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("No ")
    }
    
    func insertOkay() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("Okay ")
    }
    
    func insertHaha() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("Haha ")
    }
    
    func insertAlmostThere() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("Almost there ")
    }
    
    func insertOutside() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("I'm outside ")
    }
    
    func insertHoldOn() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("Hold on ")
    }
    
    func insertOnMyWay() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("On my way ")
    }
    
    func insertSpace() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText(" ")
    }
    
    func insertWhatsUp() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("What's up? ")
    }
    
    func insertCool() {
        let keyboard = textDocumentProxy as UITextDocumentProxy
        keyboard.insertText("Cool ")
    }
    
    func loadTargets() {
        returnButton.addTarget(self, action: "returnLine", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteChar", forControlEvents: .TouchUpInside)
        yeahButton.addTarget(self, action: "insertYeah", forControlEvents: .TouchUpInside)
        thanksButton.addTarget(self, action: "insertThanks", forControlEvents: .TouchUpInside)
        noButton.addTarget(self, action: "insertNo", forControlEvents: .TouchUpInside)
        okayButton.addTarget(self, action: "insertOkay", forControlEvents: .TouchUpInside)
        hahaButton.addTarget(self, action: "insertHaha", forControlEvents: .TouchUpInside)
        almostThereButton.addTarget(self, action: "insertAlmostThere", forControlEvents: .TouchUpInside)
        outsideButton.addTarget(self, action: "insertOutside", forControlEvents: .TouchUpInside)
        holdOnButton.addTarget(self, action: "insertHoldOn", forControlEvents: .TouchUpInside)
        onMyWayButton.addTarget(self, action: "insertOnMyWay", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "insertSpace", forControlEvents: .TouchUpInside)
        whatsUpButton.addTarget(self, action: "insertWhatsUp", forControlEvents: .TouchUpInside)
        coolButton.addTarget(self, action: "insertCool", forControlEvents: .TouchUpInside)
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        loadTargets()
    }
}
