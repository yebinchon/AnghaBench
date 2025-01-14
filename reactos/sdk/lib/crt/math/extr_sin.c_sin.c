
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_PI ;
 scalar_t__* sin_off_tbl ;
 double* sin_sign_tbl ;

double
sin(double x)
{
    int quadrant;
    double x2, result;


    quadrant = (int)(x * (2./M_PI));


    x = x - quadrant * (M_PI/2.);


    quadrant = (quadrant - 1) & 0x3;


    x += sin_off_tbl[quadrant];


    x2 = - (x * x);
    result = 0;
    result += 1./(1.*2*3*4*5*6*7*8);
    result *= x2;

    result += 1./(1.*2*3*4*5*6);
    result *= x2;

    result += 1./(1.*2*3*4);
    result *= x2;

    result += 1./(1.*2);
    result *= x2;

    result += 1;


    result *= sin_sign_tbl[quadrant];

    return result;
}
