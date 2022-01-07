
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DEG (double) ;
 double RAD (double) ;
 double sin (double) ;
 double sun_true_lon (double) ;

__attribute__((used)) static double
sun_apparent_lon(double t)
{
 double o = sun_true_lon(t);
 return RAD(DEG(o) - 0.00569 - 0.00478*sin(RAD(125.04 - 1934.136*t)));
}
