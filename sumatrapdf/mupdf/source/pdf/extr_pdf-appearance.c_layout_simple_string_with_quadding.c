
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_layout_block ;
typedef int fz_font ;
typedef int fz_context ;


 float break_simple_string (int *,int *,float,char const*,char const**,float) ;
 int fz_add_layout_line (int *,int *,float,float,float,char const*) ;
 int layout_simple_string (int *,int *,int *,float,float,float,char const*,char const*) ;

__attribute__((used)) static void
layout_simple_string_with_quadding(fz_context *ctx, fz_layout_block *out,
 fz_font *font, float size, float lineheight,
 float xorig, float y, const char *a, float maxw, int q)
{
 const char *b;
 float x = 0, w;
 int add_line_at_end = 0;

 if (!*a)
  add_line_at_end = 1;

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
   }
   if (b[-1] == '\n' || b[-1] == '\r')
   {
    layout_simple_string(ctx, out, font, size, xorig+x, y, a, b-1);
    add_line_at_end = 1;
   }
   else
   {
    layout_simple_string(ctx, out, font, size, xorig+x, y, a, b);
    add_line_at_end = 0;
   }
   a = b;
   y -= lineheight;
  }
 }
 if (add_line_at_end)
  fz_add_layout_line(ctx, out, xorig, y, size, a);
}
