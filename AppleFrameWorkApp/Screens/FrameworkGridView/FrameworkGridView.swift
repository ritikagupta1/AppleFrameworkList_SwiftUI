//
//  ContentView.swift
//  AppleFrameWorkApp
//
//  Created by Ritika Gupta on 02/01/25.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameWorkTitleView(framework: framework)
                    }
                }
            }.padding()
                .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
