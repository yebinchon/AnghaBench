
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ceil (double) ;
 double floor (double) ;
 double fmod (double,double) ;
 int isfinite (double) ;

__attribute__((used)) static int toint32(double d)
{
 double two32 = 4294967296.0;
 double two31 = 2147483648.0;

 if (!isfinite(d) || d == 0)
  return 0;

 d = fmod(d, two32);
 d = d >= 0 ? floor(d) : ceil(d) + two32;
 if (d >= two31)
  return d - two32;
 else
  return d;
}
