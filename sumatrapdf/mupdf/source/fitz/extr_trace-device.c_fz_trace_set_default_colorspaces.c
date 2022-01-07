
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; int * out; } ;
typedef TYPE_1__ fz_trace_device ;
typedef int fz_output ;
typedef int fz_device ;
typedef int fz_default_colorspaces ;
typedef int fz_context ;


 int fz_colorspace_name (int *,int ) ;
 int fz_default_cmyk (int *,int *) ;
 int fz_default_gray (int *,int *) ;
 int fz_default_output_intent (int *,int *) ;
 int fz_default_rgb (int *,int *) ;
 int fz_trace_indent (int *,int *,int ) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
fz_trace_set_default_colorspaces(fz_context *ctx, fz_device *dev_, fz_default_colorspaces *dcs)
{
 fz_trace_device *dev = (fz_trace_device*)dev_;
 fz_output *out = dev->out;
 fz_trace_indent(ctx, out, dev->depth);
 fz_write_printf(ctx, out, "<set_default_colorspaces");
 fz_write_printf(ctx, out, " gray=\"%s\"", fz_colorspace_name(ctx, fz_default_gray(ctx, dcs)));
 fz_write_printf(ctx, out, " rgb=\"%s\"", fz_colorspace_name(ctx, fz_default_rgb(ctx, dcs)));
 fz_write_printf(ctx, out, " cmyk=\"%s\"", fz_colorspace_name(ctx, fz_default_cmyk(ctx, dcs)));
 fz_write_printf(ctx, out, " oi=\"%s\"/>\n",fz_colorspace_name(ctx, fz_default_output_intent(ctx, dcs)));
}
