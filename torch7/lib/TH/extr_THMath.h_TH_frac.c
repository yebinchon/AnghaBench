
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double trunc (double) ;

__attribute__((used)) static inline double TH_frac(double x) {
  return x - trunc(x);
}
