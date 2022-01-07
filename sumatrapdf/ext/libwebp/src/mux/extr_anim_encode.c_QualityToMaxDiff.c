
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (float,double) ;

__attribute__((used)) static int QualityToMaxDiff(float quality) {
  const double val = pow(quality / 100., 0.5);
  const double max_diff = 31 * (1 - val) + 1 * val;
  return (int)(max_diff + 0.5);
}
