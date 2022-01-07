
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __ieee754_jn (int,double) ;

double _jn(int n, double num)
{

  return __ieee754_jn(n, num);
}
