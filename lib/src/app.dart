import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journal_app/src/providers/entry_provider.dart';
import 'package:journal_app/src/screens/home.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((BuildContext context) => EntryProvider()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        theme: ThemeData(
          accentColor: Colors.indigo,
          primaryColor: Colors.black,
          textTheme: GoogleFonts.actorTextTheme(),
        ),
      ),
    );
  }
}
