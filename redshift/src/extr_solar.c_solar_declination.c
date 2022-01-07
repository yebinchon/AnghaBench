
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double asin (int) ;
 double obliquity_corr (double) ;
 int sin (double) ;
 double sun_apparent_lon (double) ;

__attribute__((used)) static double
solar_declination(double t)
{
 double e = obliquity_corr(t);
 double lambda = sun_apparent_lon(t);
 return asin(sin(e)*sin(lambda));
}
