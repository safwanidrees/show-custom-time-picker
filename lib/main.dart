import 'package:flutter/material.dart';

import 'time_picker_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show Custom Time Picker Demo',
      home: CustomTimePickerDemo(),
    );
  }
}

class CustomTimePickerDemo extends StatefulWidget {
  @override
  _CustomTimePickerDemoState createState() => _CustomTimePickerDemoState();
}

class _CustomTimePickerDemoState extends State<CustomTimePickerDemo> {
  String selectedTime;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: InkWell(
            onTap: () =>
                // DEMO --------------
                showCustomTimePicker(
                    context: context,
                    // It is a must if you provide selectableTimePredicate
                    onFailValidation: (message) => print(message),
                    initialTime: TimeOfDay(hour: 2, minute: 0),
                    selectableTimePredicate: (time) =>
                        time.hour > 1 &&
                        time.hour < 14 &&
                        time.minute % 10 == 0).then((time) =>
                    setState(() => selectedTime = time?.format(context))),
            // --------------

            child: Text(
              selectedTime ?? 'Select Time',
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
}
