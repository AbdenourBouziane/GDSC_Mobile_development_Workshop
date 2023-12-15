import 'package:flutter/material.dart';
import 'package:our_first_app/widgets/post.widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Image(
          image: AssetImage("assets/logo.png"),
          height: 120,
          width: 150,
        ),
        centerTitle: true,
      ),
      body: const PostWidget(
        username: 'Abdenour',
        imageUrl: 'assets/flutter.png',
        likes: 123,
        caption: 'Flutter is amazing! #flutter #dart #GDSC',
      ),
    );
  }
}
