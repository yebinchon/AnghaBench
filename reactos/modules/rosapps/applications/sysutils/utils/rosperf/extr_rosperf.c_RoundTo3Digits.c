
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
RoundTo3Digits(double d)
{



  double exponent, sign;

  exponent = 1.0;

  if (d < 0.0)
    {
      d = -d;
      sign = -1.0;
    }
  else
    {
      sign = 1.0;
    }

  if (1000.0 <= d)
    {
      do
        {
          exponent *= 10.0;
        }
      while (1000.0 <= d / exponent);
      d = (double)((int)(d / exponent + 0.5));
      d *= exponent;
    }
  else
    {
      if (0.0 != d)
        {
          while (d * exponent < 100.0)
            {
              exponent *= 10.0;
            }
        }
      d = (double)((int)(d * exponent + 0.5));
      d /= exponent;
    }

  return d * sign;
}
