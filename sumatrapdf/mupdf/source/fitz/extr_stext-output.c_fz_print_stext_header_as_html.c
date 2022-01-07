
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_string (int *,int *,char*) ;

void
fz_print_stext_header_as_html(fz_context *ctx, fz_output *out)
{
 fz_write_string(ctx, out, "<!DOCTYPE html>\n");
 fz_write_string(ctx, out, "<html>\n");
 fz_write_string(ctx, out, "<head>\n");
 fz_write_string(ctx, out, "<style>\n");
 fz_write_string(ctx, out, "body{background-color:gray}\n");
 fz_write_string(ctx, out, "div{margin:1em auto}\n");
 fz_write_string(ctx, out, "</style>\n");
 fz_write_string(ctx, out, "</head>\n");
 fz_write_string(ctx, out, "<body>\n");
}
