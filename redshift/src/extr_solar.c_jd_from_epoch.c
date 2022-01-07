
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
jd_from_epoch(double t)
{
 return (t / 86400.0) + 2440587.5;
}
