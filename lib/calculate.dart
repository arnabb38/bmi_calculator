import 'dart:math';

class CalculateBMI {
  CalculateBMI({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdv() {
    if (_bmi >= 25) {
      return 'Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'Great! Keep it up!';
    } else {
      return 'Eat & Drink a bit more!';
    }
  }
}
