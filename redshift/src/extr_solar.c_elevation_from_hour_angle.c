
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAD (double) ;
 double asin (int) ;
 int cos (double) ;
 int sin (double) ;

__attribute__((used)) static double
elevation_from_hour_angle(double lat, double decl, double ha)
{
 return asin(cos(ha)*cos(RAD(lat))*cos(decl) +
      sin(RAD(lat))*sin(decl));
}
