//
//  AppDelegate.swift
//  Demo SplitView
//
//  Created by Arun Jaiswal on 24/06/14.
//  Copyright (c) 2014 IPLTech. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate,NSSplitViewDelegate {
                            
    @IBOutlet var window: NSWindow
    @IBOutlet var headerSplitView : NSSplitView
    @IBOutlet var splitView     :  NSSplitView


    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


    func splitView(splitView: NSSplitView!,
        constrainMaxCoordinate proposedMax: CGFloat,
        ofSubviewAt dividerIndex: Int) -> CGFloat
    {
        var size:CGFloat
        size = 0.0
        if(splitView == self.headerSplitView)
        {
            println("Header split view")
            size = 40.0;
        }
        else if(splitView == self.splitView)
        {
            println("Split View")
            if(dividerIndex == 0)
            {
                size = 150
            }
            else if (dividerIndex == 1)
            {
                size = 480;
            }
        }
        return size;
    }
    
    
    func splitView(splitView: NSSplitView!,
        constrainMinCoordinate proposedMin: CGFloat,
        ofSubviewAt dividerIndex: Int) -> CGFloat
    {
        var size:CGFloat
        size = 0.0
        
        if(splitView == self.splitView)
        {
            if(dividerIndex == 1)
            {
                
                size = 330//set the minimum width of split view divider at index 1
            }
        }
        return size
    }
}

