import 'dart:math';

class CalculateBMI{

  CalculateBMI({
    required this.height,
    required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25 && _bmi < 30) {
      return 'Overweight (At Risk)';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'Normal (Healthy)';
    } else if (_bmi >= 30) {
      return 'Obese (Severe)';
    }else {
      return 'Underweight (Unhealthy)';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25 && _bmi < 30) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'You have a normal body weight. Good job keep your health up!';
    } else if (_bmi >= 30){
      return 'Your health is at severe obese condition. You might need to check up with your doctor.';
    } else {
      return 'You have a lower than normal body weight. You can gain mass by eating a bit more.';
    }
  }

}