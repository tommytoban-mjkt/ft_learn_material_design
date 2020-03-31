import 'package:flutter/material.dart';
import 'package:learn_material_design/home.dart';
import 'package:learn_material_design/login.dart';



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Material Design',
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings){
  if(settings.name != '/login'){
      return null;
  }
  return MaterialPageRoute<void>(
      settings:settings,
      builder:(BuildContext context) => LoginPage(),
      fullscreenDialog:true
  );


}
