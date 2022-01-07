
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int depth; int * out; } ;
typedef TYPE_1__ fz_trace_device ;
struct TYPE_6__ {int y1; int x1; int y0; int x0; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_output ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_trace_indent (int *,int *,int ) ;
 int fz_trace_matrix (int *,int *,int ) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static int
fz_trace_begin_tile(fz_context *ctx, fz_device *dev_, fz_rect area, fz_rect view, float xstep, float ystep, fz_matrix ctm, int id)
{
 fz_trace_device *dev = (fz_trace_device*)dev_;
 fz_output *out = dev->out;
 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "<tile id=\"%d\"", id);
 fz_write_printf(ctx, out, " area=\"%g %g %g %g\"", area.x0, area.y0, area.x1, area.y1);
 fz_write_printf(ctx, out, " view=\"%g %g %g %g\"", view.x0, view.y0, view.x1, view.y1);
 fz_write_printf(ctx, out, " xstep=\"%g\" ystep=\"%g\"", xstep, ystep);
 fz_trace_matrix(ctx, out, ctm);
 fz_write_printf(ctx, out, ">\n");
 dev->depth++;
 return 0;
}
