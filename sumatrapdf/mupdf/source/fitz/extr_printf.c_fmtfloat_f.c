
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmtbuf {int dummy; } ;


 int fmtputc (struct fmtbuf*,int ) ;
 int snprintf (char*,int,char*,int,int,double) ;

__attribute__((used)) static void fmtfloat_f(struct fmtbuf *out, double f, int w, int p)
{
 char buf[100], *s = buf;
 snprintf(buf, sizeof buf, "%*.*f", w, p, f);
 while (*s)
  fmtputc(out, *s++);
}
