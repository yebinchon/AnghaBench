
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnorm_data {double spare; int seed; scalar_t__ has_spare; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 double log (double) ;
 double rand_float (int ) ;
 double sqrt (double) ;

__attribute__((used)) static double
rand_normal(struct rnorm_data* d)
{
  double u, v, s;

  if(d->has_spare) {
    d->has_spare = FALSE;
    return d->spare;
  }

  d->has_spare = TRUE;
  do {
    u = rand_float(d->seed) * 2.0 - 1.0;
    v = rand_float(d->seed) * 2.0 - 1.0;
    s = u * u + v * v;
  } while (s >= 1.0 || s == 0.0);

  s = sqrt(-2.0 * log(s) / s);
  d->spare = v * s;
  return u * s;
}
