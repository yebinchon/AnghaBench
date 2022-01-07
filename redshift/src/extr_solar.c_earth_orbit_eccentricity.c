
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
earth_orbit_eccentricity(double t)
{
 return 0.016708634 - t*(0.000042037 + t*0.0000001267);
}
