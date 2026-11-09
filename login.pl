user(ghala, '1234').
user(student, 'pass123').
user(admin, 'admin123').

login :-
    login_attempt(3).

login_attempt(Attempts) :-
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    (   user(Username, Password)
    ->  writeln('Login Successful')
    ;   writeln('Login Unsuccessful'),
        Remaining is Attempts - 1,
        (   Remaining > 0
        ->  login_attempt(Remaining)
        ;   writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).
