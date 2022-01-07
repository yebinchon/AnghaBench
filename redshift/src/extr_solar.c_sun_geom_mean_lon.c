
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAD (int ) ;
 int fmod (double,int) ;

__attribute__((used)) static double
sun_geom_mean_lon(double t)
{

 return RAD(fmod(280.46646 + t*(36000.76983 + t*0.0003032), 360));
}
