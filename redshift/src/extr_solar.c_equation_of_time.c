
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEG (double) ;
 int cos (int) ;
 double earth_orbit_eccentricity (double) ;
 double obliquity_corr (double) ;
 double pow (int ,double) ;
 double sin (int) ;
 double sun_geom_mean_anomaly (double) ;
 double sun_geom_mean_lon (double) ;
 int tan (double) ;

__attribute__((used)) static double
equation_of_time(double t)
{
 double epsilon = obliquity_corr(t);
 double l_0 = sun_geom_mean_lon(t);
 double e = earth_orbit_eccentricity(t);
 double m = sun_geom_mean_anomaly(t);
 double y = pow(tan(epsilon/2.0), 2.0);

 double eq_time = y*sin(2*l_0) - 2*e*sin(m) +
  4*e*y*sin(m)*cos(2*l_0) -
  0.5*y*y*sin(4*l_0) -
  1.25*e*e*sin(2*m);
 return 4*DEG(eq_time);
}
