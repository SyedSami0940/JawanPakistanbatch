import 'package:flutter/material.dart';
import 'package:todo_list/Constants/color.dart';
import 'package:todo_list/model/modelToDo.dart';

class Todoitems extends StatelessWidget {
  final ToDo todo;
  final onToDoChange;
  final OnDeleteItem;
  const Todoitems(
      {super.key,
      required this.todo,
      required this.onToDoChange,
      required this.OnDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChange(todo);
          print('click todo');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBule,
        ),
        title: Text(
          todo.toDoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 15,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('click on delete buttn');
              OnDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
