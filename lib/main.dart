import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> numbers = [];

  void counterUp() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TitleTheme(),
              for (var n in numbers)
                Text(
                  '$n',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              IconButton(
                onPressed: counterUp,
                icon: const Icon(Icons.add_box_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleTheme extends StatefulWidget {
  const TitleTheme({
    super.key,
  });

  @override
  State<TitleTheme> createState() => _TitleThemeState();
}

class _TitleThemeState extends State<TitleTheme> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Click Count',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
