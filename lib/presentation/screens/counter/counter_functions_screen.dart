import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(style: TextStyle(fontSize: 15), 'Counter Function'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                })
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 80, fontWeight: FontWeight.w100)),
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 18)),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 15),
            CustomButtom(
                icon: Icons.add,
                // Increase counter on button press
                onPressed: () {
                  clickCounter++;
                  setState(() {});
                }),
            const SizedBox(height: 15),
            CustomButtom(
              icon: Icons.remove,
              onPressed: () {
                setState(() {
                  clickCounter--;
                  if (clickCounter < 0) clickCounter = 0;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const OvalBorder(),
      enableFeedback: true,
      mouseCursor: SystemMouseCursors.click,
      backgroundColor: Colors.cyan,
      elevation: 15,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
