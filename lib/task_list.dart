import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  // TaskList({this.tasks});

  // final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  // setState(() {
                  //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
