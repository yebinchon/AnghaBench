
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_string (int *,int *,char*) ;

void
fz_print_stext_trailer_as_html(fz_context *ctx, fz_output *out)
{
 fz_write_string(ctx, out, "</body>\n");
 fz_write_string(ctx, out, "</html>\n");
}
