
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EDOM ;
 int _FPCLASS_ND ;
 scalar_t__ _FPCLASS_NINF ;
 int _FPCLASS_NN ;
 int _FPCLASS_NZ ;
 double __ieee754_y0 (double) ;
 int * _errno () ;
 int _finite (double) ;
 scalar_t__ _fpclass (double) ;
 double sqrt (int) ;

double _y0(double num)
{
  double retval;
  int fpclass = _fpclass(num);

  if (!_finite(num) || fpclass == _FPCLASS_NN ||
      fpclass == _FPCLASS_ND || fpclass == _FPCLASS_NZ)
    *_errno() = EDOM;

  retval = __ieee754_y0(num);
  if (_fpclass(retval) == _FPCLASS_NINF)
  {
    *_errno() = EDOM;
    retval = sqrt(-1);
  }
  return retval;
}
