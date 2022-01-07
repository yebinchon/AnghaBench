
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double cos (double) ;
 double sin (double) ;

__attribute__((used)) static __inline void __sincos(double x, double *s, double *c)
{
    *s = sin(x);
    *c = cos(x);
}
