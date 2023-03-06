part of 'theme_bloc.dart';

enum AppTheme {
  light,
  dark;

  String toJson() => name;
  static AppTheme fromJson(String json) => values.byName(json);
}

class ThemeState extends Equatable {
  final AppTheme appTheme;

  const ThemeState({this.appTheme = AppTheme.light});

  factory ThemeState.initial() {
    return const ThemeState();
  }

  @override
  List<Object> get props => [appTheme];

  @override
  String toString() {
    return 'ThemeState{appTheme: $appTheme}';
  }

  ThemeState copyWith({
    AppTheme? appTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'appTheme': this.appTheme,
    };
  }

  factory ThemeState.fromJson(Map<String, dynamic> json) {
    return ThemeState(
      appTheme: json['appTheme'] as AppTheme,
    );
  }
}
