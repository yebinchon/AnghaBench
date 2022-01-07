
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fmod (double,double) ;

__attribute__((used)) static double pmod(double x, double y)
{
 x = fmod(x, y);
 if (x < 0)
  x += y;
 return x;
}
