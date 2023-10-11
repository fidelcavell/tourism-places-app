import 'package:flutter/material.dart';

import 'package:tourism_places_app/data/tourism_place.dart';
import 'package:tourism_places_app/layouts/mobile/detail_mobile_layout.dart';
import 'package:tourism_places_app/layouts/website/detail_web_layout.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.place, super.key});

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}
