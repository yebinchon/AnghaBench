
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __SQRT_DBL_MAX ;
 double __SQRT_DBL_MIN ;
 double fabs (double) ;
 double sqrt (double) ;

double
_hypot(double x, double y)
{
  double abig = fabs(x), asmall = fabs(y);
  double ratio;


  if (abig < asmall)
    {
      double temp = abig;

      abig = asmall;
      asmall = temp;
    }


  if (asmall == 0.)
    return abig;







  if ((ratio = asmall / abig) > __SQRT_DBL_MIN && abig < __SQRT_DBL_MAX)
    return abig * sqrt(1.0 + ratio*ratio);
  else
    {





      double r = ratio*ratio, t, s, p = abig, q = asmall;

      do {
        t = 4. + r;
        if (t == 4.)
          break;
        s = r / t;
        p += 2. * s * p;
        q *= s;
        r = (q / p) * (q / p);
      } while (1);

      return p;
    }
}
