
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmtbuf {int dummy; } ;


 int fmtputc (struct fmtbuf*,char) ;
 char* fz_hex_digits ;

__attribute__((used)) static void fmtuint32(struct fmtbuf *out, unsigned int a, int s, int z, int w, int base)
{
 char buf[40];
 int i;

 i = 0;
 if (a == 0)
  buf[i++] = '0';
 while (a) {
  buf[i++] = fz_hex_digits[a % base];
  a /= base;
 }
 if (s) {
  if (z == '0')
   while (i < w - 1)
    buf[i++] = z;
  buf[i++] = s;
 }
 while (i < w)
  buf[i++] = z;
 while (i > 0)
  fmtputc(out, buf[--i]);
}
