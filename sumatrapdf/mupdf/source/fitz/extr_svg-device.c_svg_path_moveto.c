
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,float,float) ;

__attribute__((used)) static void
svg_path_moveto(fz_context *ctx, void *arg, float x, float y)
{
 fz_output *out = (fz_output *)arg;

 fz_write_printf(ctx, out, "M %g %g ", x, y);
}
