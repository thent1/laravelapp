<?php

require_once 'vendor/autoload.php';

echo "You can get randomized name, email or text
Use input keyword
'name' for name
'text' for text'
'email' for email\n";

$inputKeyword = trim(fgets(STDIN));

$faker = Faker\Factory::create();

if ($inputKeyword == "name") {
    echo $faker->name();
} elseif ($inputKeyword == "text") {
    echo $faker->text();
} elseif ($inputKeyword == "email") {
    echo $faker->email();
} else {
    echo "Wrong input";
}



