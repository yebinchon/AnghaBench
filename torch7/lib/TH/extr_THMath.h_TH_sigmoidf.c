
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float expf (float) ;

__attribute__((used)) static inline float TH_sigmoidf(float value) {
  return 1.0f / (1.0f + expf(-value));
}
