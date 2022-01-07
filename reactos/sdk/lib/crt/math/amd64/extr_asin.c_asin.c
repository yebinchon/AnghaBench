
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double NaN ;

double
asin(double x)
{
    double x2, result;


    if ((x > 1.) || (x < -1.)) return NaN;


    x2 = (x * x);


    result = 0;

    result += (15*13*11*9*7*5*3*1./(16*14*12*10*8*6*4*2*17));
    result *= x2;

    result += (13*11*9*7*5*3*1./(14*12*10*8*6*4*2*15));
    result *= x2;

    result += (11*9*7*5*3*1./(12*10*8*6*4*2*13));
    result *= x2;

    result += (9*7*5*3*1./(10*8*6*4*2*11));
    result *= x2;

    result += (7*5*3*1./(8*6*4*2*9));
    result *= x2;

    result += (5*3*1./(6*4*2*7));
    result *= x2;

    result += (3*1./(4*2*5));
    result *= x2;

    result += (1./(2*3));
    result *= x2;

    result += 1.;
    result *= x;

    return result;
}
