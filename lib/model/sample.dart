class Sample {
  final String? name;
  final int? age;
  final List<String>? hobby;

  Sample({this.name, this.age, this.hobby});

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
        name: json['name'] ?? '',
        age: json['age'] ?? 0,
        hobby: List.from(json['hobby'] ?? [])
    );
  }

  @override
  String toString() => 'Sample(name: $name, age: $age, hobby: $hobby)';
}
