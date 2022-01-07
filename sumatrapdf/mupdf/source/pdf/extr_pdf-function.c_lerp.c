
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float lerp(float x, float xmin, float xmax, float ymin, float ymax)
{
 if (xmin == xmax)
  return ymin;
 if (ymin == ymax)
  return ymin;
 return ymin + (x - xmin) * (ymax - ymin) / (xmax - xmin);
}
