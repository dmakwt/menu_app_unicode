import 'package:flutter/material.dart';
import 'package:flutter_application_menu/models/meal.dart';

class SingleFoodScreen extends StatelessWidget {
  SingleFoodScreen({super.key, required this.meal});

  Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(meal.name),
      ),
      body: Image.network(meal.imgUrl),
    );
  }
}
