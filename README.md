# Responsive UI with Flutter


<p align="center"><img src="https://github.com/iBy3l/responsive_ui_dashboard/blob/master/RESPONSIVE.gif"></p>

LayoutBuilder class (Null safety)

Builds a widget tree that can depend on the parent widget's size. 

# Lib Responsive
``` 
  lib
│   └── responsive
│       └── responsive_layout.dart
```
 In Layout Builder we will add 3 Widget variables:
 
``` dart
  final Widget mobileScaffold;
  final Widget tableScaffold;
  final Widget descktopScaffold;
```
Let's call a return to the ResponsiveLayout class
LayoutBuilder declaring a context and a constraints.
Then we create a rule to handle the sizes of each screen

``` dart
 import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tableScaffold;
  final Widget descktopScaffold;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tableScaffold,
      required this.descktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1100) {
        return tableScaffold;
      } else {
        return descktopScaffold;
      }
    });
  }
}

```
<p align="center"><img src="https://github.com/iBy3l/responsive_ui_dashboard/blob/master/RESPONSIVE%20W.png"></p>

# Creating 3 files for each device

``` 
├── lib
│   └── responsive
│       ├── desktop_scaffold.dart
│       ├── mobile_scaffold.dart
│       ├── responsive_layout.dart
│       └── table_scaffold.dart
```



<p align="center"><img src="https://github.com/iBy3l/responsive_ui_dashboard/blob/master/responsive_ui.gif"></p>
