# time_picker_widget

It is a custom showTimePicker to allow you set a selectableTimePredicate like you do in showDatePicker.

```dart
showCustomTimePicker(
    context: context,
    // It is a must if you provide selectableTimePredicate
    onFailValidation: (message) => print(message),
    initialTime: TimeOfDay(hour: 2, minute: 0),
    selectableTimePredicate: (time) =>
        time.hour > 1 &&
        time.hour < 14 &&
        time.minute % 10 == 0).then((time) =>
    setState(() => selectedTime = time?.format(context)))
```

You can see a complete sample in `main.dart` file