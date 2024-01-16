class CurrentPosition {
  double? latitude;
  double? longitude;
  CurrentPosition({
    this.latitude,
    this.longitude,
  });

  factory CurrentPosition.fromJson(Map<dynamic, dynamic> json) {
    return CurrentPosition(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  @override
  String toString() {
    return 'CurrentPosition(latitude: $latitude, longitude: $longitude)';
  }
}