
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_colorspace_n (int *,int *) ;
 float fz_colorspace_name (int *,int *) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
fz_trace_color(fz_context *ctx, fz_output *out, fz_colorspace *colorspace, const float *color, float alpha)
{
 int i, n;
 if (colorspace)
 {
  n = fz_colorspace_n(ctx, colorspace);
  fz_write_printf(ctx, out, " colorspace=\"%s\" color=\"", fz_colorspace_name(ctx, colorspace));
  for (i = 0; i < n; i++)
   fz_write_printf(ctx, out, "%s%g", i == 0 ? "" : " ", color[i]);
  fz_write_printf(ctx, out, "\"");
 }
 if (alpha < 1)
  fz_write_printf(ctx, out, " alpha=\"%g\"", alpha);
}
