
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ceil (double) ;
 double floor (double) ;
 double fmod (double,double) ;
 int isfinite (double) ;

int jsV_numbertoint32(double n)
{
 double two32 = 4294967296.0;
 double two31 = 2147483648.0;

 if (!isfinite(n) || n == 0)
  return 0;

 n = fmod(n, two32);
 n = n >= 0 ? floor(n) : ceil(n) + two32;
 if (n >= two31)
  return n - two32;
 else
  return n;
}
