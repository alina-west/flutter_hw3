import 'package:flutter/material.dart';

void main() {
  runApp(const SkeletonApp());
}

class SkeletonApp extends StatelessWidget {
  const SkeletonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skeleton from Minecraft',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Skeleton from Minecraft'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(left: 20),
              child: Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all( //уголдары
                    Radius.circular(15), //радиус скругления углов
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SkeletonIcon(),
                      SizedBox(height: 50),
                      Text(
                        'Skeleton — враждебное существо в игре Minecraft.Это моб, обладающий костяным телом и стреляющий из лука.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),

                      ),

                    ],
                  ),
                ),
              ),

            )


            // const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

class SkeletonIcon extends StatelessWidget {
  const SkeletonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey[300], // голова скелета
      child: Stack(
        children: [
          // Левый глаз скелета
          Positioned(
            left: 20,
            top: 50,
            child: Container(
              width: 20,
              height: 10,
              color: Colors.grey.shade800, //цвет глаз
            ),
          ),
          // Правый глаз скелета
          Positioned(
            left: 60,
            top: 50,
            child: Container(
              width: 20,
              height: 10,
              color: Colors.grey.shade800,
            ),
          ),
          // Нос скелета
          Positioned(
            left: 40,
            top: 60,
            child: Container(
              width: 20,
              height: 10,
              color: Colors.grey.shade600, //цвет носа
            ),
          ),
          // Рот скелета
          Positioned(
            left: 20,
            top: 70,
            child: Container(
              width: 60,
              height: 10,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
