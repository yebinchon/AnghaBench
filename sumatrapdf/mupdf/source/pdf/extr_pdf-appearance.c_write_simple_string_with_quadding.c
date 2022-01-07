
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_font ;
typedef int fz_context ;
typedef int fz_buffer ;


 float break_simple_string (int *,int *,float,char const*,char const**,float) ;
 int fz_append_printf (int *,int *,char*,float,float) ;
 int fz_append_string (int *,int *,char*) ;
 int write_simple_string (int *,int *,char const*,char const*) ;

__attribute__((used)) static void
write_simple_string_with_quadding(fz_context *ctx, fz_buffer *buf, fz_font *font, float size,
 const char *a, float maxw, int q)
{
 const char *b;
 float px = 0, x = 0, w;
 while (*a)
 {
  w = break_simple_string(ctx, font, size, a, &b, maxw);
  if (b > a)
  {
   if (q > 0)
   {
    if (q == 1)
     x = (maxw - w) / 2;
    else
     x = (maxw - w);
    fz_append_printf(ctx, buf, "%g %g Td ", x - px, -size);
   }
   if (b[-1] == '\n' || b[-1] == '\r')
    write_simple_string(ctx, buf, a, b-1);
   else
    write_simple_string(ctx, buf, a, b);
   a = b;
   px = x;
   fz_append_string(ctx, buf, (q > 0) ? "Tj\n" : "'\n");
  }
 }
}
