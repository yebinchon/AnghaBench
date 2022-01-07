
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double exp (double) ;

double sinh(double x)
{
 if(x >= 0.0)
 {
   const double epos = exp(x);
   return (epos - 1.0/epos) / 2.0;
 }
 else
 {
   const double eneg = exp(-x);
   return (1.0/eneg - eneg) / 2.0;
 }
}
