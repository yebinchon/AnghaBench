
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const A0 ;
 double const A1 ;
 double const A2 ;
 double const A3 ;
 double const A4 ;
 double exp (double const) ;

double THExpMinusApprox(const double x)
{
  if (x < 13.0)
  {

    double y;
    y = (1.0)+x*((0.125)+x*((0.0078125)+x*((0.00032552083)+x*(1.0172526e-5))));
    y *= y;
    y *= y;
    y *= y;
    y = 1/y;
    return y;
  }
  return 0;






}
