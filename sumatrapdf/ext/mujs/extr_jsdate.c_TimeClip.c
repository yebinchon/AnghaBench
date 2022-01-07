
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double NAN ;
 double fabs (double) ;
 double floor (double) ;
 int isfinite (double) ;

__attribute__((used)) static double TimeClip(double t)
{
 if (!isfinite(t))
  return NAN;
 if (fabs(t) > 8.64e15)
  return NAN;
 return t < 0 ? -floor(-t) : floor(t);
}
