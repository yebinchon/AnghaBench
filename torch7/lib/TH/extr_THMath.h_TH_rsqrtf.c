
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float sqrtf (float) ;

__attribute__((used)) static inline float TH_rsqrtf(float x) {
  return 1.0f / sqrtf(x);
}
