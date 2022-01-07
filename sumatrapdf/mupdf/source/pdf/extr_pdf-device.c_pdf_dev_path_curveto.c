
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_printf (int *,int *,char*,float,float,float,float,float,float) ;

__attribute__((used)) static void
pdf_dev_path_curveto(fz_context *ctx, void *arg, float x1, float y1, float x2, float y2, float x3, float y3)
{
 fz_buffer *buf = (fz_buffer *)arg;
 fz_append_printf(ctx, buf, "%g %g %g %g %g %g c\n", x1, y1, x2, y2, x3, y3);
}
