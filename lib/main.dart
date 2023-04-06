// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.all(Radius.circular(10)),
//                 border: Border.all(color: Colors.red)),
//             child: const Text("Demo"),
//           ),
//         ),
//         floatingActionButton: const FloatingActionButton(
//           onPressed: null,
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style =
//         ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

//     return Column(
//       children: [
//         Stack(
//           children: <Widget>[
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.red,
//             ),
//             Container(
//               width: 90,
//               height: 90,
//               color: Colors.green,
//             ),
//             Container(
//               width: 80,
//               height: 80,
//               color: Colors.blue,
//             ),
//           ],
//         ),
//         Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               ElevatedButton(
//                 style: style,
//                 onPressed: null,
//                 child: const Text('No'),
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                 style: style,
//                 onPressed: () {},
//                 child: const Text('yes'),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(home: Home()));
// }

// class SelectableButton extends StatefulWidget {
//   const SelectableButton({
//     super.key,
//     required this.selected,
//     this.style,
//     required this.onPressed,
//     required this.child,
//   });

//   final bool selected;
//   final ButtonStyle? style;
//   final VoidCallback? onPressed;
//   final Widget child;

//   @override
//   State<SelectableButton> createState() => _SelectableButtonState();
// }

// class _SelectableButtonState extends State<SelectableButton> {
//   late final MaterialStatesController statesController;

//   @override
//   void initState() {
//     super.initState();
//     statesController = MaterialStatesController(
//         <MaterialState>{if (widget.selected) MaterialState.selected});
//   }

//   @override
//   void didUpdateWidget(SelectableButton oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.selected != oldWidget.selected) {
//       statesController.update(MaterialState.selected, widget.selected);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       statesController: statesController,
//       style: widget.style,
//       onPressed: widget.onPressed,
//       child: widget.child,
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   bool selected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SelectableButton(
//           selected: selected,
//           style: ButtonStyle(
//             foregroundColor: MaterialStateProperty.resolveWith<Color?>(
//               (Set<MaterialState> states) {
//                 if (states.contains(MaterialState.selected)) {
//                   return Colors.white;
//                 }
//                 return null; // defer to the defaults
//               },
//             ),
//             backgroundColor: MaterialStateProperty.resolveWith<Color?>(
//               (Set<MaterialState> states) {
//                 if (states.contains(MaterialState.selected)) {
//                   return Colors.indigo;
//                 }
//                 return null; // defer to the defaults
//               },
//             ),
//           ),
//           onPressed: () {
//             setState(() {
//               selected = !selected;
//             });
//           },
//           child: const Text('toggle selected'),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: null,
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Gradient'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
