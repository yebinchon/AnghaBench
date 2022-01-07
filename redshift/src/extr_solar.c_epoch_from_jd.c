
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
epoch_from_jd(double jd)
{
 return 86400.0*(jd - 2440587.5);
}
