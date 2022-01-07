
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double DEG (int ) ;
 int jcent_from_jd (double) ;
 double jd_from_epoch (double) ;
 int solar_elevation_from_time (int ,double,double) ;

double
solar_elevation(double date, double lat, double lon)
{
 double jd = jd_from_epoch(date);
 return DEG(solar_elevation_from_time(jcent_from_jd(jd), lat, lon));
}
