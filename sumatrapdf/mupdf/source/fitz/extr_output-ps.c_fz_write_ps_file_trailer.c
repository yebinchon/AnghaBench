
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,int) ;

void
fz_write_ps_file_trailer(fz_context *ctx, fz_output *out, int pages)
{
 fz_write_printf(ctx, out, "%%%%Trailer\n%%%%Pages: %d\n%%%%EOF\n", pages);
}
