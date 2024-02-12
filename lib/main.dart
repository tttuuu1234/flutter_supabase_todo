import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_supabase_todo/pages/todo_list_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  const supabseBaseUrl = String.fromEnvironment('url');
  const supabseApiKey = String.fromEnvironment('apiKey');
  await Supabase.initialize(url: supabseBaseUrl, anonKey: supabseApiKey);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoListPage(),
    );
  }
}
