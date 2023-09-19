import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategory() {
    List<CategoryModel> category = [];

    category.add(
      CategoryModel(name: "plumber", iconPath: "a", boxColor: Colors.cyan),
    );
    category.add(
      CategoryModel(name: "electrition", iconPath: "a", boxColor: Colors.green),
    );
    category.add(
      CategoryModel(name: "civil", iconPath: "a", boxColor: Colors.cyan),
    );
    category.add(CategoryModel(
        name: "carpenter", iconPath: "a", boxColor: Colors.green));
    category.add(
        CategoryModel(name: "carpenter", iconPath: "a", boxColor: Colors.cyan));
    return category;
  }
}
