void main() {
  Car myFirstCar = Car('Audi', '4S3BMHB68B3286050', 1899, 60.80);
  Car mySecondCar = Car('BMW', '4MB3BMHB68B3286050', 1916, 100.36);
  Car myThirdCar = Car('Honda', '4S4HMHB68B3286050', 1946, 506.99);

  myFirstCar.drive(56.19);
  mySecondCar.drive(52.52);
  myThirdCar.drive(70.92);

  // brand
  print("My first car brand : ${myFirstCar.getBrand()}");
  print("My second car brand : ${mySecondCar.getBrand()}");
  print("My third car brand : ${myThirdCar.getBrand()}");

  // model

  print("My first car model :  ${myFirstCar.getModel()}");
  print("My second car model : ${mySecondCar.getModel()}");
  print("My third car model : ${myThirdCar.getModel()}");

  // year
  print("My first car year : ${myFirstCar.getYear()}");
  print("My second car year : ${mySecondCar.getYear()}");
  print("My third car year : ${myThirdCar.getYear()}");

  // miles driven

  print("My first car miles driven :  ${myFirstCar.getMilesDriven()}");
  print("My second car miles driven :  ${mySecondCar.getMilesDriven()}");
  print("My third car miles driven : ${myThirdCar.getMilesDriven()}");

  // age of car
  print("Time of My first car : ${myFirstCar.getAge()}");
  print("Time of My second car :  ${mySecondCar.getAge()}");
  print("Time of My third car : ${myThirdCar.getAge()}");

  // number of cars
  print("Number of car : ${Car.numberOfCars}");
}

class Car {
  String brand = '';
  String model = '';
  int year = 0;
  double milesDriven = 0.0;

  static int numberOfCars = 0;

  Car(String brand, String model, int year, double milesDriven) {
    this.brand = brand;
    this.model = model;
    this.year = year;
    this.milesDriven = milesDriven;

    numberOfCars++;
  }

  drive(double miles) {
    this.milesDriven += miles;
  }

  double getMilesDriven() {
    return this.milesDriven;
  }

  String getBrand() {
    return this.brand;
  }

  String getModel() {
    return this.model;
  }

  int getYear() {
    return this.year;
  }

  int getAge() {
    int diff = (2023 - year);
    return diff;
  }
}
