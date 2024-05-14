class Sample {
  final String? name;
  final int? age;
  final List<String>? hobby;
  final Github? github;

  Sample({this.name, this.age, this.hobby, this.github});

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      name: json['name'] ?? '',
      age: json['age'] ?? 0,
      hobby: List.from(json['hobby'] ?? []),
      github: Github.fromJson(json['github']),
    );
  }

  @override
  String toString() => 'Sample(name: $name, age: $age, hobby: $hobby, github: $github)';
}

class Github {
  final String username;
  final int repositories;
  final bool isGDE;

  Github({
    required this.username,
    required this.repositories,
    required this.isGDE,
  });

  factory Github.fromJson(Map<String, dynamic> json) {
    return Github(
      username: json['username'],
      repositories: json['repositories'],
      isGDE: json['isGDE'],
    );
  }

  @override
  String toString() =>
    'Github(username: $username, repositories: $repositories, isGDE: $isGDE)';
}
