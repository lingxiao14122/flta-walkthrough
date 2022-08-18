import 'package:flutter/material.dart';
import 'package:fooderlich/components/recipes_grid_view.dart';

import '../models/models.dart';
import '../components/components.dart';
import '../api/mock_fooderlich_service.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = MockFooderlichService();

  RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Center(
            child: RecipesGridView(
              recipes: snapshot.data ?? [],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator(color: Colors.white));
        }
      },
    );
  }
}
