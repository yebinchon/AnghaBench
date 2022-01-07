
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fz_abs (float) ;

__attribute__((used)) static int
is_rgb_color(float threshold, float r, float g, float b)
{
 float rg_diff = fz_abs(r - g);
 float rb_diff = fz_abs(r - b);
 float gb_diff = fz_abs(g - b);
 return rg_diff > threshold || rb_diff > threshold || gb_diff > threshold;
}
