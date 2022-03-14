import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter Customer Name");
  var customer = stdin.readLineSync();
  print("Enter Current Month");
  var month = stdin.readLineSync();
  print("Enter Unit Consumed");
  int unit = stdin.readLineSync();
  var amount;
  print("Enter The Date");
  int date = stdin.readLineSync();

  if (unit <= 50) {
    //below 50 units
    amount = unit * 1.50;
  } else if (unit <= 150) {
    //below 150 units
    amount = ((50 * 1.5) + ((unit) - 50) * 2.00);
  } else if ((unit <= 250)) {
    //below 250 units
    amount = (50 * 1.5) + ((150 - 50) * 2.00) + (unit - 150) * 3.00;
  } else {
    //above 250 units
    amount = (50 * 1.5) +
        ((150 - 50) * 2.00) +
        ((250 - 150) * 3.00) +
        (unit - 250) * 4;
  }

  var net_amount;
  var late_amount;

  if (date >= 1 && date <= 15) {
    amount = net_amount;
    print(amount);
  } else if (date < 15 && date <= 31) {
    late_amount = amount * 0.15;
    net_amount = amount + late_amount;
    print(net_amount);
  }
}
