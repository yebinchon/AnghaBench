
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float truncf (float) ;

__attribute__((used)) static inline float TH_fracf(float x) {
  return x - truncf(x);
}
