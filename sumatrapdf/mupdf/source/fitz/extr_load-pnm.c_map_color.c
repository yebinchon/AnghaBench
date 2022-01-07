
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;



__attribute__((used)) static int
map_color(fz_context *ctx, int color, int inmax, int outmax)
{
 float f = (float) color / inmax;
 return f * outmax;
}
