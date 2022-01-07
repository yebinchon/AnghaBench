
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double) ;

__attribute__((used)) static void Accumulate(double v1, double v2, double* const max_diff,
                       double* const sse) {
  const double diff = fabs(v1 - v2);
  if (diff > *max_diff) *max_diff = diff;
  *sse += diff * diff;
}
