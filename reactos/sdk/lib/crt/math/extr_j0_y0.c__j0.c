
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EDOM ;
 double __ieee754_j0 (double) ;
 int * _errno () ;
 int _finite (double) ;

double _j0(double num)
{
  if (!_finite(num)) *_errno() = EDOM;
  return __ieee754_j0(num);
}
