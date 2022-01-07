
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_font ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_printf (int *,int *,char*,int,...) ;
 int fz_append_string (int *,int *,char*) ;
 float measure_simple_string (int *,int *,char const*) ;
 int write_stamp_string (int *,int *,int *,char const*) ;

__attribute__((used)) static void
write_stamp(fz_context *ctx, fz_buffer *buf, fz_font *font, const char *text, float y, float h)
{
 float tw = measure_simple_string(ctx, font, text) * h;
 fz_append_string(ctx, buf, "BT\n");
 fz_append_printf(ctx, buf, "/Times %g Tf\n", h);
 fz_append_printf(ctx, buf, "%g %g Td\n", (190-tw)/2, y);
 write_stamp_string(ctx, buf, font, text);
 fz_append_string(ctx, buf, " Tj\n");
 fz_append_string(ctx, buf, "ET\n");
}
