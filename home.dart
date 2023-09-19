import 'package:flutter/material.dart';
import 'package:flutter_app/models/catogery_model.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> category = [];

  void getCategory() {
    category = CategoryModel.getCategory();
  }

  @override
  Widget build(BuildContext context) {
    getCategory();
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            search_field(),
            category_name(),
            SizedBox(
              height: 20,
            ),
            category_section(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
        bottomNavigationBar: bottomNav_bar(),
      ),
    );
  }
// bottom navigation bar

  BottomAppBar bottomNav_bar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.limeAccent,
      notchMargin: 5.0,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                setState(() {});
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {});
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border_outlined),
              onPressed: () {
                setState(() {});
              },
            ),
            IconButton(
              icon: const Icon(Icons.account_circle_outlined),
              onPressed: () {
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
  //category section

  Container category_section() {
    return Container(
      height: 130,
      child: ListView.separated(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20, right: 20),
        separatorBuilder: (context, index) => SizedBox(
          width: 25,
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            decoration: BoxDecoration(
              color: category[index].boxColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),

                  // used to add icons

                  // child: Svgpicture.asset(category[index].iconPath),
                ),
                Text(
                  category[index].name,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 14),
                )
              ],
            ),
          );
        },
      ),
    );
  }
  //category name

  Align category_name() {
    return Align(
      alignment: FractionalOffset.topLeft,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: Text(
            "Category",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

//container for logo
  Container logo() {
    return Container(
      width: 65,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 56, 61, 62),
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("logo"),
      ),
    );
  }

//container for ssearch field
  Container search_field() {
    return Container(
      width: 280,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.11),
              blurRadius: 50,
              spreadRadius: 0.0),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "search for plumber,electrition,..",
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 26, 24, 24),
            fontSize: 14,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(Icons.search),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
