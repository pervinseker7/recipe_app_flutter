import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/screens/alphan_yemek/alphan_yemek.dart';
import 'package:recipe_app_flutter/screens/atalay_yemek/atalay_yemek.dart';
import 'package:recipe_app_flutter/screens/mainpage/home_screen.dart';
import 'package:recipe_app_flutter/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/' :
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case AlphanYemek.routeName:
        return AlphanYemek.route();
      case AtalayYemek.routeName:
        return AtalayYemek.route();
      case UmutcanYemek.routeName:
        return UmutcanYemek.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(
              'eror'
          ),
        ),
      ),
      settings: RouteSettings(name: '/error'),
    );
  }



}