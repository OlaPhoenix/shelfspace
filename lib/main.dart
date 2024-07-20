import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shelfspace/app/constants/constants.dart';
import 'package:shelfspace/app/notifiers/app_notifier.dart';
import 'package:shelfspace/presentation/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: textTheme),
        home: const MainScreen(),
      ),
    );
  }
}
