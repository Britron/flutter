void main(){
    var p = person('lol','moron',age: 100);
    var p1 = person('firstName', 'lastName',age: -100);
    print(p1.firstName);
}
class person{
  final String firstName;
  final String lastName;
  final int age;
  person(this.firstName, this.lastName, {required this.age});//constructor
}