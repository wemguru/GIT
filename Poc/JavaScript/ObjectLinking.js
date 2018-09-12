var person = function(name, person){
    this.name = name;
    this.person = person;
}

var john = new person("Tushar Singhal", function(){
    name = "Lovey Singhal";
    person = null;
}); 

console.log(john.person.name);
