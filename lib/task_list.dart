import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'models/task.dart';

class TaskList extends StatefulWidget {
  TaskList({this.tasks});

  final List<Task> tasks;

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
