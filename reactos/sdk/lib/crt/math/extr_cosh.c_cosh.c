
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double exp (int ) ;
 int fabs (double) ;

double cosh(double x)
{
    const double ebig = exp(fabs(x));
    return (ebig + 1.0/ebig) / 2.0;
}
