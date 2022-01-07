
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_string (int *,int *,char*) ;

void
fz_print_stext_header_as_xhtml(fz_context *ctx, fz_output *out)
{
 fz_write_string(ctx, out, "<?xml version=\"1.0\"?>\n");
 fz_write_string(ctx, out, "<!DOCTYPE html");
 fz_write_string(ctx, out, " PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"");
 fz_write_string(ctx, out, " \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
 fz_write_string(ctx, out, "<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
 fz_write_string(ctx, out, "<head>\n");
 fz_write_string(ctx, out, "<style>\n");
 fz_write_string(ctx, out, "p{white-space:pre-wrap}\n");
 fz_write_string(ctx, out, "</style>\n");
 fz_write_string(ctx, out, "</head>\n");
 fz_write_string(ctx, out, "<body>\n");
}
