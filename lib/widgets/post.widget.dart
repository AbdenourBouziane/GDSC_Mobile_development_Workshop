import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String imageUrl;
  final int likes;
  final String caption;

  const PostWidget({
    super.key,
    required this.username,
    required this.imageUrl,
    required this.likes,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage("assets/pic.jpg"),
              ),
              const SizedBox(width: 8.0),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // Post Image
          Image.network(
            imageUrl,
            height: 300.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.check_box),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.share_sharp),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // Likes Count
          Text(
            '$likes likes',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          // Caption
          Text(caption),
        ],
      ),
    );
  }
}
