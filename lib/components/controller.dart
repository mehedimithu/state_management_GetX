import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update(); // it requires for GetBuilder
  }

  void decrement() {
    count--;
    update(); // it requires for GetBuilder
  }
}
