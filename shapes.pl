square(Side, Area, Perimeter) :-
    number(Side), Side > 0,
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    number(Width), number(Height), Width > 0, Height > 0,
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

triangle(Base, Height, A, B, C, Area, Perimeter) :-
    number(Base), number(Height), number(A), number(B), number(C),
    Base > 0, Height > 0, A > 0, B > 0, C > 0,
    A + B > C, A + C > B, B + C > A,
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.
