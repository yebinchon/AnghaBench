
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAD (double) ;

__attribute__((used)) static double
mean_ecliptic_obliquity(double t)
{
 double sec = 21.448 - t*(46.815 + t*(0.00059 - t*0.001813));
 return RAD(23.0 + (26.0 + (sec/60.0))/60.0);
}
