
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DEG (double) ;
 double RAD (double) ;
 double cos (double) ;
 double mean_ecliptic_obliquity (double) ;

__attribute__((used)) static double
obliquity_corr(double t)
{
 double e_0 = mean_ecliptic_obliquity(t);
 double omega = 125.04 - t*1934.136;
 return RAD(DEG(e_0) + 0.00256*cos(RAD(omega)));
}
