
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resolved; scalar_t__ passthrough; } ;
typedef TYPE_1__ fz_test_device ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_fill_path (int *,scalar_t__,int const*,int,int ,int *,float const*,float,int ) ;
 int fz_test_color (int *,TYPE_1__*,int *,float const*,int ) ;

__attribute__((used)) static void
fz_test_fill_path(fz_context *ctx, fz_device *dev_, const fz_path *path, int even_odd, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_test_device *dev = (fz_test_device*)dev_;

 if (dev->resolved == 0 && alpha != 0.0f)
  fz_test_color(ctx, dev, colorspace, color, color_params);
 if (dev->passthrough)
  fz_fill_path(ctx, dev->passthrough, path, even_odd, ctm, colorspace, color, alpha, color_params);
}
