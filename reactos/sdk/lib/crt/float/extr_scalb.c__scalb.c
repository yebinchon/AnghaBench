
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ldexp (double,long) ;

double _scalb(double x, long exp)
{
 return ldexp(x, exp);
}
