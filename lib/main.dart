import "package:flutter/material.dart";


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
      ),
      initialRoute: "/signin",
      
    );
  }
}