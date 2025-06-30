import 'package:flutter/material.dart';

void main() {
  runApp(LiratnaApp());
}

class LiratnaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ليرتنا',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> governorates = [
    'دمشق', 'ريف دمشق', 'حلب', 'حمص', 'اللاذقية', 'طرطوس'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ليرتنا')),
      body: ListView.builder(
        itemCount: governorates.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(governorates[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // هنا ممكن نضيف صفحة تفاصيل الأسعار
            },
          );
        },
      ),
    );
  }
}