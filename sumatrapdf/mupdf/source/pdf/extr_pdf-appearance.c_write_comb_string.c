
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_font ;
typedef int fz_context ;
typedef int fz_buffer ;


 int REPLACEMENT ;
 int fz_advance_glyph (int *,int *,int,int ) ;
 int fz_append_byte (int *,int *,char) ;
 int fz_append_printf (int *,int *,char*,float) ;
 int fz_append_string (int *,int *,char*) ;
 int fz_chartorune (int*,char const*) ;
 int fz_encode_character (int *,int *,int) ;
 int fz_windows_1252_from_unicode (int) ;

__attribute__((used)) static void
write_comb_string(fz_context *ctx, fz_buffer *buf, const char *a, const char *b, fz_font *font, float cell_w)
{
 float gw, pad, carry = 0;
 fz_append_byte(ctx, buf, '[');
 while (a < b)
 {
  int c, g;

  a += fz_chartorune(&c, a);
  c = fz_windows_1252_from_unicode(c);
  if (c < 0) c = REPLACEMENT;

  g = fz_encode_character(ctx, font, c);
  gw = fz_advance_glyph(ctx, font, g, 0) * 1000;
  pad = (cell_w - gw) / 2;
  fz_append_printf(ctx, buf, "%g", -(carry + pad));
  carry = pad;

  fz_append_byte(ctx, buf, '(');
  if (c == '(' || c == ')' || c == '\\')
   fz_append_byte(ctx, buf, '\\');
  fz_append_byte(ctx, buf, c);
  fz_append_byte(ctx, buf, ')');
 }
 fz_append_string(ctx, buf, "] TJ\n");
}
