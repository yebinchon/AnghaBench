
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int dummy; } ;
typedef int fz_context ;
typedef int c ;


 int fmt_putc (int *,struct fmt*,int) ;
 int fmt_puts (int *,struct fmt*,char*) ;

__attribute__((used)) static void fmt_str_out(fz_context *ctx, void *fmt_, const unsigned char *s, int n)
{
 struct fmt *fmt = (struct fmt *)fmt_;
 int i, c;

 for (i = 0; i < n; i++)
 {
  c = (unsigned char)s[i];
  if (c == '\n')
   fmt_puts(ctx, fmt, "\\n");
  else if (c == '\r')
   fmt_puts(ctx, fmt, "\\r");
  else if (c == '\t')
   fmt_puts(ctx, fmt, "\\t");
  else if (c == '\b')
   fmt_puts(ctx, fmt, "\\b");
  else if (c == '\f')
   fmt_puts(ctx, fmt, "\\f");
  else if (c == '(')
   fmt_puts(ctx, fmt, "\\(");
  else if (c == ')')
   fmt_puts(ctx, fmt, "\\)");
  else if (c == '\\')
   fmt_puts(ctx, fmt, "\\\\");
  else if (c < 32 || c >= 127) {
   fmt_putc(ctx, fmt, '\\');
   fmt_putc(ctx, fmt, '0' + ((c / 64) & 7));
   fmt_putc(ctx, fmt, '0' + ((c / 8) & 7));
   fmt_putc(ctx, fmt, '0' + ((c) & 7));
  }
  else
   fmt_putc(ctx, fmt, c);
 }
}
