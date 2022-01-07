
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
jcent_from_jd(double jd)
{
 return (jd - 2451545.0) / 36525.0;
}
