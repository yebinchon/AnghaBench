
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
jd_from_jcent(double t)
{
 return 36525.0*t + 2451545.0;
}
