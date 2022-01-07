
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAD (double) ;
 double acos (int) ;
 double copysign (double,double) ;
 int cos (double) ;
 double fabs (double) ;
 int sin (double) ;

__attribute__((used)) static double
hour_angle_from_elevation(double lat, double decl, double elev)
{
 double omega = acos((cos(fabs(elev)) - sin(RAD(lat))*sin(decl))/
       (cos(RAD(lat))*cos(decl)));
 return copysign(omega, -elev);
}
