
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double exp (double) ;

double tanh(double x)
{
  if (x > 50)
    return 1;
  else if (x < -50)
    return -1;
  else
  {
    const double ebig = exp(x);
    const double esmall = 1.0/ebig;
    return (ebig - esmall) / (ebig + esmall);
  }
}
