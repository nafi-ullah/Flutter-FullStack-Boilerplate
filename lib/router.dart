import 'package:amazon_clone_app/common/widgets/bottom_bar.dart';
import 'package:amazon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_app/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    
      case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>const AuthScreen(),
      );
      case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>const HomeScreen(),
      );
      case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>const BottomBar(),
      );
      default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen doesn't exist"),)
        )

      );


    }
  

}