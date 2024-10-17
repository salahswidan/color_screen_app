import 'package:color_screen_app/color_screen.dart';
import 'package:color_screen_app/component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'color screen',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 3,
            children: colorsList
                .map(
                  (colorItem) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ColorScreen(
                                  screenColor: colorItem,
                                )),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: 10, top: 5, right: 10, left: 10),
                      decoration: BoxDecoration(
                        color: colorItem,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
