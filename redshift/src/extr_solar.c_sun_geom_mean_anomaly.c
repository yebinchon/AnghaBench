
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAD (double) ;

__attribute__((used)) static double
sun_geom_mean_anomaly(double t)
{
 return RAD(357.52911 + t*(35999.05029 - t*0.0001537));
}
