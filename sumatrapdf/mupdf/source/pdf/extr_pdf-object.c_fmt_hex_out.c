
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmt {int dummy; } ;
typedef int fz_context ;
typedef int b ;


 int fmt_putc (int *,struct fmt*,int) ;

__attribute__((used)) static void fmt_hex_out(fz_context *ctx, void *arg, const unsigned char *s, int n)
{
 struct fmt *fmt = (struct fmt *)arg;
 int i, b, c;

 for (i = 0; i < n; i++) {
  b = (unsigned char) s[i];
  c = (b >> 4) & 0x0f;
  fmt_putc(ctx, fmt, c < 0xA ? c + '0' : c + 'A' - 0xA);
  c = (b) & 0x0f;
  fmt_putc(ctx, fmt, c < 0xA ? c + '0' : c + 'A' - 0xA);
 }
}
