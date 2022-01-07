
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*) ;

__attribute__((used)) static void
svg_path_close(fz_context *ctx, void *arg)
{
 fz_output *out = (fz_output *)arg;

 fz_write_printf(ctx, out, "Z ");
}
