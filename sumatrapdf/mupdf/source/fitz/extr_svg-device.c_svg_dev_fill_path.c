
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_path ;
typedef int fz_output ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_write_printf (int *,int *,char*) ;
 int svg_dev_ctm (int *,TYPE_1__*,int ) ;
 int svg_dev_fill_color (int *,TYPE_1__*,int *,float const*,float,int ) ;
 int svg_dev_path (int *,TYPE_1__*,int const*) ;

__attribute__((used)) static void
svg_dev_fill_path(fz_context *ctx, fz_device *dev, const fz_path *path, int even_odd, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out = sdev->out;

 fz_write_printf(ctx, out, "<path");
 svg_dev_ctm(ctx, sdev, ctm);
 svg_dev_path(ctx, sdev, path);
 svg_dev_fill_color(ctx, sdev, colorspace, color, alpha, color_params);
 if (even_odd)
  fz_write_printf(ctx, out, " fill-rule=\"evenodd\"");
 fz_write_printf(ctx, out, "/>\n");
}
