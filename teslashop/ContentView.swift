//
//  ContentView.swift
//  teslashop
//
//  Created by Jalome Chirwa on 2022/10/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//       main z stack
        ZStack{
            ScrollView{
                //header component
                HeaderComponent()
                // vehicle component
                VehicleComponent()
                // vehicle detailes component
                VehicleDetailsComponent()
                
            }
            .padding(15)
            
        }
        .frame(maxWidth:.infinity,maxHeight:.infinity)
        .background(Color("Background"))
        .foregroundColor(Color("White"))
        
    }
}



 
// vehicle details component
struct VehicleDetailsComponent: View{
    var body: some View{
        VStack(alignment: .leading){
            Text("Vehicle Overview")
                .fontWeight(.bold)
            Text("Model 3 comes with the option of dual motor all-wheel drive, 20” Überturbine Wheels and Performance Brakes for total control in all weather conditions. A carbon fiber spoiler improves stability at high speeds, all allowing Model 3 to accelerate from 0-60 mph* in as little as 3.1 seconds.")
                .font(.system(size: 14))
                .padding(.top,3)
                .padding(.bottom,10)
            
            Spacer()
            Button(action:{},label:{
                Text("Order now")
                    .fontWeight(.bold)
            })
            .frame(width: 350, height: 60, alignment: .center)
            .foregroundColor(Color("Black"))
            .background(Color("White"))
            .cornerRadius(10)
            
        }
        .padding(.top,10)
    }
}



// VehicleComponent
struct VehicleComponent: View{
    @State var slectedVehicle = "WhiteTesla"
    var body: some View{
        
        VStack(alignment: .leading){
            Image(slectedVehicle)
                .resizable()
                .padding(.top)
                .aspectRatio(contentMode: .fit)
            
            HStack{
                VStack(alignment: .leading){
                    Text("267mi")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryBlue"))
                    Text("Range (est.)")
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("140mp")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryBlue"))
                    Text("Top Speed")
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("5.8sec")
                        .fontWeight(.bold)
                        .foregroundColor(Color("SecondaryBlue"))
                    Text("0-60 mph")
                }
            }
            
            // paint options
            VStack(alignment: .leading){
                Text("Paint options")
                    .fontWeight(.bold)
                HStack{
                    
                    // select white tesla button
                    Button(action: {
                        slectedVehicle = "WhiteTesla"
                    }, label: {
                        Circle()
                            .frame(width: 30, height: 30)
                            .padding(.leading,2)
                            .foregroundColor(Color("White"))
                    })
                      
                    // select blue tesla button
                    Button(action: {
                        slectedVehicle = "BlueTesla"
                    }, label: {
                        Circle()
                            .frame(width: 30, height: 30)
                            .padding(.leading,10)
                            .foregroundColor(Color("MainBlue"))
                    })
                    
                    // select red tesla button
                    Button(action: {
                        slectedVehicle = "RedTesla"
                    }, label: {
                        Circle()
                            .frame(width: 30, height: 30)
                            .padding(.leading,10)
                            .foregroundColor(Color("MainRed"))
                    })
                    
                    // select grey tesla button
                    Button(action: {
                        slectedVehicle = "SilverTesla"
                    }, label: {
                        Circle()
                            .frame(width: 30, height: 30)
                            .padding(.leading,10)
                            .foregroundColor(Color("MainGrey"))
                    })

                    // select black tesla button
                    Button(action: {
                        slectedVehicle = "BlackTesla"
                    }, label: {
                        Circle()
                            .stroke(Color("MainGrey"),lineWidth: 1)
                            .frame(width: 30, height: 30)
                            .padding(.leading,10)
                            .foregroundColor(Color("Black"))
                    })
                }
                .padding(.top,5)
                
            }
            .padding(.top,15)
        
        }
        .padding(.top)

    }
}


// header view
struct HeaderComponent: View{
    var body: some View{
        HStack{
            
            VStack(alignment: .leading){
                Text("Model 3")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("2022 Model")
                    .font(.subheadline)
            }
        
            Spacer()
            HStack{
                Text("$40,390")
                    .fontWeight(.bold)
                    .foregroundColor(Color("SecondaryBlue"))
            }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
