
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_printf (int *,int *,char*,float,float) ;

__attribute__((used)) static void
pdf_dev_path_lineto(fz_context *ctx, void *arg, float x, float y)
{
 fz_buffer *buf = (fz_buffer *)arg;
 fz_append_printf(ctx, buf, "%g %g l\n", x, y);
}
