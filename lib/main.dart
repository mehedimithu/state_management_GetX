import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/components.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management with Getx'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<Controller>(
                builder: (controller) {
                  return Text(
                    '${controller.count}',
                    style: TextStyle(fontSize: 30),
                  );
                },
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        controller.increment();
                      },
                      child: Icon(Icons.add)),
                  SizedBox(width: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        controller.decrement();
                      },
                      child: Icon(
                        Icons.remove,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
