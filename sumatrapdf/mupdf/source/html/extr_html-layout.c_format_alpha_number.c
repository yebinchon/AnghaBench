
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_runetochar (char*,int) ;

__attribute__((used)) static void format_alpha_number(fz_context *ctx, char *buf, int size, int n, int alpha, int omega)
{
 int base = omega - alpha + 1;
 int tmp[40];
 int i, c;

 if (alpha > 256)
  --base;


 i = 0;
 while (n > 0)
 {
  --n;
  c = n % base + alpha;
  if (alpha > 256 && c > alpha + 16)
   ++c;
  tmp[i++] = c;
  n /= base;
 }

 while (i > 0)
  buf += fz_runetochar(buf, tmp[--i]);
 *buf++ = '.';
 *buf++ = ' ';
 *buf = 0;
}
