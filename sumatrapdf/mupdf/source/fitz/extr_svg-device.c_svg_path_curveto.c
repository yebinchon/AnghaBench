
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,float,float,float,float,float,float) ;

__attribute__((used)) static void
svg_path_curveto(fz_context *ctx, void *arg, float x1, float y1, float x2, float y2, float x3, float y3)
{
 fz_output *out = (fz_output *)arg;

 fz_write_printf(ctx, out, "C %g %g %g %g %g %g ", x1, y1, x2, y2, x3, y3);
}
