
class vehicle
{
  int? speed;
  String? name;

  vehicle();

  // vehicle(int s, String n)
  // {
  //   this.speed = s;
  //   this.name = n;
  // }

  void supermethod()
  {
    print("this is a supermethod coz it is been called from the parent class that is vehicle.");
  }
}

class Car extends vehicle
{
  // Car(super.s, super.n);
  

  @override
  // TODO: implement name
  String? get name => super.name;
  
  void supermethod()
  {
    super.name = 'honda';
    super.supermethod();
    print("this is not a supermethod coz it is been called from a non parent class that is a child class which is Car in this case");
  }
}


void main()
{
  vehicle car2 = vehicle();

  Car car3 = Car();
  // print(car2.name);
  // print(car2.speed);
  // car2.supermethod();
  

  car3.supermethod();

  car3.name = 'honda city';
  print(car3.name);

  //////// SUPER KEYWORD IS USED TO CALL OR USE THE PARENT METHOD OR DATA MEMBERS INSIDE A CHILD CLASS///////
}