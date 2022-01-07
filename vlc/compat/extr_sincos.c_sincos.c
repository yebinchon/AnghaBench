
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double cos (double) ;
 double sin (double) ;

void sincos(double r, double *restrict sr, double *restrict cr)
{
    *sr = sin(r);
    *cr = cos(r);
}
