import 'package:flutter/material.dart';
import 'package:flutter_application_menu/models/meal.dart';
import 'package:flutter_application_menu/screens/single_food_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var foodList = [
    Meal(
      name: 'Burger',
      imgUrl: 'https://i.ibb.co/FxkkgK6/pngaaa-com-81660.png',
    ),
    Meal(
      name: 'Pizza',
      imgUrl:
          'https://i.ibb.co/MCqMjSj/png-clipart-california-style-pizza-sicilian-pizza-chrono-pizza-fast-food-pizza-menu-food-recipe-1-re.png',
    ),
    Meal(
      name: 'Suchi',
      imgUrl:
          'https://i.ibb.co/0D2gP6T/2cd43b-e5828aa119524592ab00126dfa48a944-mv2-removebg-preview.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Menu App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleFoodScreen(
                    meal: foodList[index],
                  ),
                ),
              );
            },
            child: Row(
              children: [
                Image.network(
                  foodList[index].imgUrl,
                  width: 180,
                  height: 180,
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    foodList[index].name,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
