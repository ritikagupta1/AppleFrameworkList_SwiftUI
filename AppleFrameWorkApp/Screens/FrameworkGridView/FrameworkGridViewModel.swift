//
//  FrameworkGridViewModel.swift
//  AppleFrameWorkApp
//
//  Created by Ritika Gupta on 03/01/25.
//

import SwiftUI
final class FrameworkGridViewModel: ObservableObject {
    let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @Published var isShowingDetailView: Bool = false
}
