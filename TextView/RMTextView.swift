//
//  RMTextView.swift
//  TextView
//
//  Created by George Philip Malayil on 31/01/23.
//

import Cocoa

class RMTextView: NSView {
    public override var isFlipped: Bool {
        #if os(macOS)
        true
        #else
        false
        #endif
    }

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    func commonInit() {
        wantsLayer = true
    }

    open override var canBecomeKeyView: Bool {
        acceptsFirstResponder
    }

    override func viewWillMove(toSuperview newSuperview: NSView?) {
        // This is not printed
        print("viewWillMoveToSuperview: \(String(describing: newSuperview))")
    }

    override func viewDidMoveToSuperview() {
        // This is not printed
        print("viewDidMoveToSuperview")
    }

    override func viewDidMoveToWindow() {
        // This is printed
        print("viewDidMoveToWindow")
        if superview != nil {
            print("viewDidMoveToWindow - superview is not nil")
        }
    }
}
