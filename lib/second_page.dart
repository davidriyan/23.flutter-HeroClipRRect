import 'package:flutter/material.dart';
import 'package:hero_cliprrect/main_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Hero widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context, MaterialPageRoute(
              builder: (context) {
                return MainPage();
              },
            ));
          },
          child: Hero(
            tag: 'pp',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://awsimages.detik.net.id/community/media/visual/2019/01/02/eedc78cf-105a-495a-afdd-b44aefde9c7b_43.png?w=700&q=90'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
