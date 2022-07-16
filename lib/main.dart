import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/responsive/desktop_scaffold.dart';
import 'package:responsive_ui_dashboard/responsive/mobile_scaffold.dart';
import 'package:responsive_ui_dashboard/responsive/responsive_layout.dart';

import 'responsive/table_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tableScaffold: TableScaffold(),
        descktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
