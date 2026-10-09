import 'dart:io';
void main(){
  
  String option = "yes";
  double pizzaPrice;
  int pizzaAmount; 
  double totalPayment;

  while (option == "yes") {
    print("========================================================");
    print('Pizza Price: "Small : 5 USD, Medium: 7 USD, Large: 10 USD"');
    print("Please enter your pizza size (small, medium, or large): ");
    String pizzaSize = stdin.readLineSync()!;

    switch (pizzaSize.toLowerCase()) {
      case "small":
        pizzaPrice = 5.0;
        print("How many pizzas do you want of small?");
        pizzaAmount = int.parse(stdin.readLineSync()!);
        totalPayment = pizzaPrice * pizzaAmount;
        print("Your Total Payment is : \$$totalPayment USD");

        break;

      case "medium":
        pizzaPrice = 7.0;
        print("How many pizzas do you want of medium?");
        pizzaAmount = int.parse(stdin.readLineSync()!);
        totalPayment = pizzaPrice * pizzaAmount;
        print("Your Total Payment is : \$$totalPayment USD");

        break;

      case "large":
        pizzaPrice = 10.0;
        print("How many pizzas do you want of large?");
        pizzaAmount = int.parse(stdin.readLineSync()!);
        totalPayment = pizzaPrice * pizzaAmount;
        print("Your Total Payment is : \$$totalPayment USD");

        break;

      default:
        print("Invalid size entered. Please enter a valid pizza size (small, medium, or large): ");
        break;
    }

    print("Do you want to order again? (yes/no): ");
    option = stdin.readLineSync()!;
  }

}