import 'dart:math';

class BMICalculator {
  BMICalculator({int weight, int height}) {
    this._height = height;
    this._weight = weight;
    this._calculate();
  }

  int _height;
  int _weight;
  double _bmi;

  double _calculate() {
    _bmi = _weight / pow(_height / 100, 2);
  }

  String getBMIScore() {
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

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}