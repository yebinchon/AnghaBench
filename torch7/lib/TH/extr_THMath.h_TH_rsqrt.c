
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double sqrt (double) ;

__attribute__((used)) static inline double TH_rsqrt(double x) {
  return 1.0 / sqrt(x);
}
