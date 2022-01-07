
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_stroke_state ;
struct TYPE_12__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_path ;
typedef int fz_output ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int * end_def (int *,TYPE_1__*) ;
 TYPE_2__ fz_bound_path (int *,int const*,int const*,int ) ;
 int fz_default_color_params ;
 int fz_device_rgb (int *) ;
 int fz_identity ;
 int fz_write_printf (int *,int *,char*,...) ;
 int * start_def (int *,TYPE_1__*) ;
 int svg_dev_ctm (int *,TYPE_1__*,int ) ;
 int svg_dev_path (int *,TYPE_1__*,int const*) ;
 int svg_dev_stroke_color (int *,TYPE_1__*,int ,float*,int,int ) ;
 int svg_dev_stroke_state (int *,TYPE_1__*,int const*,int ) ;

__attribute__((used)) static void
svg_dev_clip_stroke_path(fz_context *ctx, fz_device *dev, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
 svg_device *sdev = (svg_device*)dev;

 fz_output *out;
 fz_rect bounds;
 int num = sdev->id++;
 float white[3] = { 1, 1, 1 };

 bounds = fz_bound_path(ctx, path, stroke, ctm);

 out = start_def(ctx, sdev);
 fz_write_printf(ctx, out, "<mask id=\"ma%d\" x=\"%g\" y=\"%g\" width=\"%g\" height=\"%g\" maskUnits=\"userSpaceOnUse\" maskContentUnits=\"userSpaceOnUse\">\n",
  num, bounds.x0, bounds.y0, bounds.x1 - bounds.x0, bounds.y1 - bounds.y0);
 fz_write_printf(ctx, out, "<path");
 svg_dev_ctm(ctx, sdev, ctm);
 svg_dev_stroke_state(ctx, sdev, stroke, fz_identity);
 svg_dev_stroke_color(ctx, sdev, fz_device_rgb(ctx), white, 1, fz_default_color_params);
 svg_dev_path(ctx, sdev, path);
 fz_write_printf(ctx, out, "/>\n</mask>\n");
 out = end_def(ctx, sdev);
 fz_write_printf(ctx, out, "<g mask=\"url(#ma%d)\">\n", num);
}
