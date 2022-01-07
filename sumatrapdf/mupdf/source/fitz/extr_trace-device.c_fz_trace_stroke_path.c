
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int depth; int * out; } ;
typedef TYPE_1__ fz_trace_device ;
struct TYPE_6__ {int dash_len; int * dash_list; int dash_phase; int linejoin; int end_cap; int dash_cap; int start_cap; int miterlimit; int linewidth; } ;
typedef TYPE_2__ fz_stroke_state ;
typedef int fz_path ;
typedef int fz_output ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_trace_color (int *,int *,int *,float const*,float) ;
 int fz_trace_indent (int *,int *,int ) ;
 int fz_trace_matrix (int *,int *,int ) ;
 int fz_trace_path (int *,TYPE_1__*,int const*) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
fz_trace_stroke_path(fz_context *ctx, fz_device *dev_, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_trace_device *dev = (fz_trace_device*)dev_;
 fz_output *out = dev->out;
 int i;

 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "<stroke_path");
 fz_write_printf(ctx, out, " linewidth=\"%g\"", stroke->linewidth);
 fz_write_printf(ctx, out, " miterlimit=\"%g\"", stroke->miterlimit);
 fz_write_printf(ctx, out, " linecap=\"%d,%d,%d\"", stroke->start_cap, stroke->dash_cap, stroke->end_cap);
 fz_write_printf(ctx, out, " linejoin=\"%d\"", stroke->linejoin);

 if (stroke->dash_len)
 {
  fz_write_printf(ctx, out, " dash_phase=\"%g\" dash=\"", stroke->dash_phase);
  for (i = 0; i < stroke->dash_len; i++)
   fz_write_printf(ctx, out, "%s%g", i > 0 ? " " : "", stroke->dash_list[i]);
  fz_write_printf(ctx, out, "\"");
 }

 fz_trace_color(ctx, out, colorspace, color, alpha);
 fz_trace_matrix(ctx, out, ctm);
 fz_write_printf(ctx, out, ">\n");

 fz_trace_path(ctx, dev, path);

 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "</stroke_path>\n");
}
