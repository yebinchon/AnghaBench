
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int dummy; } ;
typedef int pdf_obj ;
typedef int fz_context ;


 int fmt_putc (int *,struct fmt*,unsigned char) ;
 scalar_t__ isdelim (unsigned char) ;
 scalar_t__ iswhite (unsigned char) ;
 scalar_t__ pdf_to_name (int *,int *) ;

__attribute__((used)) static void fmt_name(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
 unsigned char *s = (unsigned char *) pdf_to_name(ctx, obj);
 int i, c;

 fmt_putc(ctx, fmt, '/');

 for (i = 0; s[i]; i++)
 {
  if (isdelim(s[i]) || iswhite(s[i]) ||
   s[i] == '#' || s[i] < 32 || s[i] >= 127)
  {
   fmt_putc(ctx, fmt, '#');
   c = (s[i] >> 4) & 0xf;
   fmt_putc(ctx, fmt, c < 0xA ? c + '0' : c + 'A' - 0xA);
   c = s[i] & 0xf;
   fmt_putc(ctx, fmt, c < 0xA ? c + '0' : c + 'A' - 0xA);
  }
  else
  {
   fmt_putc(ctx, fmt, s[i]);
  }
 }
}
