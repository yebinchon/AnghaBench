
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_SQRT2 ;
 double fabs (double) ;

__attribute__((used)) static double crude_hypot(double x, double y)
{
 double big = fabs(x);
 double small = fabs(y);

 if (big > small) {
  double temp = big;
  big = small;
  small = temp;
 }

 return ((M_SQRT2 - 1.0) * small) + big;
}
