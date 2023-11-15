import 'dart:math' hide cos;

void log(
  String str, {
  String? prefix,
}) {
  print('[${prefix ?? 'LOG'}] $str');
}

enum GENDER {
  male,
  female,
}

late String _theme;

String get theme => _theme;

set theme(String _t) {
  if (['Dark','Light'].contains(_t)) {
    _theme = _t;
  } else {
    throw 'Invalid theme';
  }
} 

void main() {
  final a = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  const b = 10;
  final c = <int>[
    1,
    2,
    3,
    if (b<15) 4,
    for (final c in a) c*c,
    ...a,
  ];
  print(c);
  
  print(sin(pi/3));

  theme = 'Light';
  print(theme);

  assert(a.isEmpty);
  try {
//     print(10 as String);
    throw 12;
  } on num catch (e) {
    print(e);
  }
//   } on TypeError catch (e,s) {
//     print('Error: ${e.toString()}');
//     print(s);
//   }
  log('logging string');
  print(a.where((int a) => a.isOdd));
}
