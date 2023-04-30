import 'package:flutter/material.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    _switchToOnboard();
  }

  void _switchToOnboard() {
    Navigator.pushReplacementNamed(
      context,
      Routes.onBoardingRoute
    );
  }

  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image(image: AssetImage(ImageAssets.splashLog)))
    );
  }
}