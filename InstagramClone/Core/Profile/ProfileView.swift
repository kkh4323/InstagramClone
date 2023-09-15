//
//  ProfileView.swift
//  InstagramClone
//
//  Created by KangHo Kim on 2023/09/15.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //MARK: Header
            VStack(spacing: 10) {
                //MARK: Pic & Stats
                HStack {
                    Image("blackPanther1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    Spacer()
                    HStack(spacing: 8){
                        UserStatView(value: 3, title: "Posts")
                        UserStatView(value: 198, title: "Followers")
                        UserStatView(value: 201, title: "Following")
                    }//:HStack
                }//:HStack
                .padding(.horizontal)
                //MARK: Name & Bio
                VStack(alignment: .leading, spacing: 4) {
                    Text("Chadwick Bozeman")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Wakanda Forever")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding (.horizontal)
                //MARK: Edit Button
                Button {
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                Divider()
            }//:VStack
            //MARK: Post GridView
        }//:VStack
    }//:body
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
