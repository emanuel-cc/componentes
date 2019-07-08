import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
       localizationsDelegates: [
   // ... app-specific localization delegate[s] here
   GlobalMaterialLocalizations.delegate,
   GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
    const Locale('en','US'), // English
    const Locale('es','ES'),
  ],
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setting){
        return MaterialPageRoute(
          builder: (BuildContext context)=>AlertPage()
        );
      },
    );
  }
}

