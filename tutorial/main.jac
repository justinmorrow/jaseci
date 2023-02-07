node person {
    has name;
    has birthday;
}

walker init {
    can date.quantize_to_year;

    root {
        person1 = spawn here ++> node::person(name="Josh", birthday="1995-05-20");
        person2 = spawn here ++> node::person(name="Joe", birthday="1998-04-23");
        person3 = spawn here ++> node::person(name="Jack", birthday="1997-03-12");
        take -->;
    }

    person {
        birthyear = date.quantize_to_year(here.birthday);
        std.out(here.name," Birthdate Quantized to year ",birthyear);
        }
}