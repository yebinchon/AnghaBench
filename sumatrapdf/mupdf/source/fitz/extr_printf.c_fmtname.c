
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmtbuf {int dummy; } ;
typedef size_t c ;


 int fmtputc (struct fmtbuf*,int) ;

__attribute__((used)) static void fmtname(struct fmtbuf *out, const char *s)
{
 int c;
 fmtputc(out, '/');
 while ((c = *s++) != 0) {
  if (c <= 32 || c == '/' || c == '#') {
   fmtputc(out, '#');
   fmtputc(out, "0123456789ABCDEF"[(c>>4)&15]);
   fmtputc(out, "0123456789ABCDEF"[(c)&15]);
  } else {
   fmtputc(out, c);
  }
 }
}
