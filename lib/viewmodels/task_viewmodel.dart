import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskViewModel with ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title, String description) {
    if (title.isNotEmpty && description.isNotEmpty) {
      _tasks.add(Task(title: title, description: description));
      notifyListeners();
    }
  }
}
