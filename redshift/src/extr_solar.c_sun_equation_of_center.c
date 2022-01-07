
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAD (double) ;
 double sin (int) ;
 double sun_geom_mean_anomaly (double) ;

__attribute__((used)) static double
sun_equation_of_center(double t)
{

 double m = sun_geom_mean_anomaly(t);
 double c = sin(m)*(1.914602 - t*(0.004817 + 0.000014*t)) +
  sin(2*m)*(0.019993 - 0.000101*t) +
  sin(3*m)*0.000289;
 return RAD(c);
}
