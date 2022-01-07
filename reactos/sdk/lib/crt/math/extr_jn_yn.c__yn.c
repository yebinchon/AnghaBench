
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EDOM ;
 scalar_t__ _FPCLASS_NINF ;
 double __ieee754_yn (int,double) ;
 int * _errno () ;
 int _finite (double) ;
 scalar_t__ _fpclass (double) ;
 double sqrt (int) ;

double _yn(int order, double num)
{
  double retval;
  if (!_finite(num)) *_errno() = EDOM;
  retval = __ieee754_yn(order,num);
  if (_fpclass(retval) == _FPCLASS_NINF)
  {
    *_errno() = EDOM;
    retval = sqrt(-1);
  }
  return retval;
}
