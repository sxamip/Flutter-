import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Example')),
      body: Column(
        children: [
          FilledButton(
            onPressed: () {},
            child: Text("Button 1"),
          ), //filled button
          FilledButton.tonal(
            onPressed: () {},
            child: Text("Button 2"),
          ), //filledbutton tonal button
          FilledButton.tonalIcon(
            onPressed: () {},
            label: Text("Add"),
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          IconButton.filled(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          TextButton(onPressed: () {}, child: Text("ReadMore")),
          ElevatedButton(onPressed: () {}, child: Text("ReadMore")),
          GestureDetector(
            onDoubleTap: () {
              print("Double Tap");
            },
            onLongPress: () {
              print("Long Press");
            },
            //warp with widget and change name
            child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.circular(20),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}