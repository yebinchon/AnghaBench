
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float pow (float,int) ;

__attribute__((used)) static float sRGB_from_scRGB(float x)
{
 if (x < 0.0031308f)
  return 12.92f * x;
 return 1.055f * pow(x, 1/2.4f) - 0.055f;
}
