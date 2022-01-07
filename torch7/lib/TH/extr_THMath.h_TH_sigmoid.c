
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double exp (double) ;

__attribute__((used)) static inline double TH_sigmoid(double value) {
  return 1.0 / (1.0 + exp(-value));
}
