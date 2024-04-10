import 'package:great_places_app/models/place.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addNewPlace(Place newPlace) {
    state = [
      newPlace,
      ...state,
    ];
  }
}

final userPlacesNotifierProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) {
    return UserPlacesNotifier();
  },
);
