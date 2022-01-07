
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float powf (float,float) ;

__attribute__((used)) static inline float to_sRGB_component(float f)
{
    if (f <= 0.0031308f) return 12.92f * f;
    return 1.055f * powf(f, 1.0f/2.4f) - 0.055f;
}
