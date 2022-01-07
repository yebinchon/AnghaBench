
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double atan2 (double,int ) ;
 int sqrt (double) ;

double asin(double __x)
{
    return atan2(__x, sqrt(1.0 - __x * __x));
}
