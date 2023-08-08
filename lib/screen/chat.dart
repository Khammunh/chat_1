import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Chat'),
         actions: [
          TextButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).colorScheme.primary,
              //Today, I learn arrive here tomorrow I can try again.
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Logged in!'),
      ),
    );
  }
}