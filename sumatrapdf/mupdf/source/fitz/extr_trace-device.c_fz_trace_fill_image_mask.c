
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int * out; } ;
typedef TYPE_1__ fz_trace_device ;
typedef int fz_output ;
typedef int fz_matrix ;
struct TYPE_5__ {int h; int w; } ;
typedef TYPE_2__ fz_image ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_trace_color (int *,int *,int *,float const*,float) ;
 int fz_trace_indent (int *,int *,int ) ;
 int fz_trace_matrix (int *,int *,int ) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
fz_trace_fill_image_mask(fz_context *ctx, fz_device *dev_, fz_image *image, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_trace_device *dev = (fz_trace_device*)dev_;
 fz_output *out = dev->out;
 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "<fill_image_mask");
 fz_trace_matrix(ctx, out, ctm);
 fz_trace_color(ctx, out, colorspace, color, alpha);
 fz_write_printf(ctx, out, " width=\"%d\" height=\"%d\"", image->w, image->h);
 fz_write_printf(ctx, out, "/>\n");
}
