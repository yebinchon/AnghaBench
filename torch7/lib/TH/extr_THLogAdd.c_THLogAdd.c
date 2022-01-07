
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MINUS_LOG_THRESHOLD ;
 int THError (char*,double,double,double) ;
 int exp (double) ;
 scalar_t__ isnan (double) ;
 double log1p (int ) ;

double THLogAdd(double log_a, double log_b)
{
  double minusdif;

  if (log_a < log_b)
  {
    double tmp = log_a;
    log_a = log_b;
    log_b = tmp;
  }

  minusdif = log_b - log_a;




  if (minusdif < MINUS_LOG_THRESHOLD)
    return log_a;
  else
    return log_a + log1p(exp(minusdif));
}
