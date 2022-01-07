
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float powf (float,float) ;

__attribute__((used)) static inline float from_sRGB_component(float f)
{
    if (f <= 0.04045f) return f / 12.92f;
    return powf((f + 0.055f) / 1.055f, 2.4f);
}
