import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function() listTileDelete;
  final void Function(bool?) CheckboxChange;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.CheckboxChange,
      required this.listTileDelete,
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: CheckboxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}

// (bool ?newValue) {
//         setState(() {
//           isChecked = newValue!;
//         });
//       },

