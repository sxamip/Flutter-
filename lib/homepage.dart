import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppDemo.dart';


class TodoApplication extends StatefulWidget {
  TodoApplication({super.key});

  final List<Todo> todos = [
    Todo(
      id: "1",
      title: "This is title",
      description: "Mamaghar janxu",
      isCompleted: true,
    ),
    Todo(
      id: "2",
      title: "This is title",
      description: "Mamaghar janxu",
      isCompleted: true,
    ),
    Todo(
      id: "3",
      title: "This is title",
      description: "Mamaghar janxu",
      isCompleted: true,
    ),
    Todo(
      id: "4",
      title: "This is title",
      description: "Mamaghar janxu",
      isCompleted: true,
    ),
  ];

  @override
  State<TodoApplication> createState() => _TodoApplicationState();
}

class _TodoApplicationState extends State<TodoApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo Application",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: widget.todos.length,
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: Checkbox(
              value: widget.todos[i].isCompleted,
              onChanged: (value) {
               
              },
            ),
            title: Text(widget.todos[i].title),
            subtitle: Text(widget.todos[i].description),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.add),),
    );
  }
}