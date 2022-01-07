
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double sun_equation_of_center (double) ;
 double sun_geom_mean_lon (double) ;

__attribute__((used)) static double
sun_true_lon(double t)
{
 double l_0 = sun_geom_mean_lon(t);
 double c = sun_equation_of_center(t);
 return l_0 + c;
}
