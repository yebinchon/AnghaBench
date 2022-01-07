
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* is_color; int resolved; int * passthrough; int threshold; } ;
typedef TYPE_1__ fz_test_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 scalar_t__ FZ_COLORSPACE_GRAY ;
 int FZ_ERROR_ABORT ;
 scalar_t__ fz_colorspace_type (int *,int *) ;
 int fz_convert_color (int *,int *,float const*,int *,float*,int *,int ) ;
 int * fz_device_rgb (int *) ;
 int fz_throw (int *,int ,char*) ;
 scalar_t__ is_rgb_color (int ,float const,float const,float const) ;

__attribute__((used)) static void
fz_test_color(fz_context *ctx, fz_test_device *t, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
 if (!*t->is_color && colorspace && fz_colorspace_type(ctx, colorspace) != FZ_COLORSPACE_GRAY)
 {
  if (colorspace == fz_device_rgb(ctx))
  {
   if (is_rgb_color(t->threshold, color[0], color[1], color[2]))
   {
    *t->is_color = 2;
    t->resolved = 1;
    if (t->passthrough == ((void*)0))
     fz_throw(ctx, FZ_ERROR_ABORT, "Page found as color; stopping interpretation");
   }
  }
  else
  {
   float rgb[3];
   fz_convert_color(ctx, colorspace, color, fz_device_rgb(ctx), rgb, ((void*)0), color_params);
   if (is_rgb_color(t->threshold, rgb[0], rgb[1], rgb[2]))
   {
    *t->is_color = 2;
    t->resolved = 1;
    if (t->passthrough == ((void*)0))
    {
     fz_throw(ctx, FZ_ERROR_ABORT, "Page found as color; stopping interpretation");
    }
   }
  }
 }
}
