//
//  CircleProgressBar.swift
//  DrawDemo
//
//  Created by jacy on 15/8/26.
//  Copyright © 2015年 jacy. All rights reserved.
//

import UIKit

@IBDesignable
class CircleProgressBar: UIView {

    /**
    *  progress value
    */
    @IBInspectable
    var progress:CGFloat = 0 {
        didSet{
            setNeedsDisplay()
        }
    }
    
    /**
    *  border Width
    */
    @IBInspectable
    var borderWidth:CGFloat = 0 {
        didSet{
            setNeedsDisplay()
        }
    }

    // border color
    @IBInspectable
    var borderColor:UIColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1) {
        didSet{
            setNeedsDisplay()
        }
    }

    
    // progress color
    @IBInspectable
    var progressColor:UIColor = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1) {
        didSet{
            setNeedsDisplay()
        }
    }

    // base color
    @IBInspectable
    var baseColor:UIColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.8) {
        didSet{
            setNeedsDisplay()
        }
    }

    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let diameter = rect.width > rect.height ? rect.height-4 : rect.width-4
        let context = UIGraphicsGetCurrentContext()
        let elRect = CGRect(x: 2, y: 2, width: diameter, height: diameter)
        
        // draw base ellipse
        CGContextAddEllipseInRect(context, elRect)
        CGContextSetFillColorWithColor(context, baseColor.CGColor)
        CGContextFillPath(context)

        // draw progress arc
        CGContextSetFillColorWithColor(context, progressColor.CGColor)
        CGContextAddArc(context, elRect.width/2+2, elRect.width/2+2, elRect.width/2, 0, 3.141592653*2*progress, 0)
        CGContextAddLineToPoint(context, elRect.width/2+2, elRect.width/2+2)
        CGContextFillPath(context)
        
        //draw border
        if borderWidth > 0 {
            CGContextAddEllipseInRect(context, elRect)
            CGContextSetLineWidth(context, borderWidth)
            CGContextSetStrokeColorWithColor(context, borderColor.CGColor)
            CGContextStrokePath(context)
        }
        
        
    }


}
