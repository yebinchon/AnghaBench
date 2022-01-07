
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_scale_filter ;



__attribute__((used)) static float
triangle(fz_scale_filter *filter, float f)
{
 if (f >= 1)
  return 0;
 return 1-f;
}
