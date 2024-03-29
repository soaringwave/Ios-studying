//
//  PinAnnotationMapView.swift
//  MapMarkerTest
//
//  Created by Groo on 3/26/24.
//

import SwiftUI
import MapKit

struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    init(id: UUID = UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long)
    }
}


struct PinAnnotationMapView: View {
    let place: IdentifiablePlace
    @State var region: MKCoordinateRegion


    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: [place])
        { place in
            MapMarker(coordinate: place.location,
                   tint: Color.purple)
        }
    }
}
