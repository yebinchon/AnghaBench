
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmtbuf {int dummy; } ;


 int fmtputc (struct fmtbuf*,int ) ;
 int snprintf (char*,int,char*,int,int,double) ;

__attribute__((used)) static void fmtfloat_e(struct fmtbuf *out, double f, int w, int p)
{
 char buf[100], *s = buf;
 snprintf(buf, sizeof buf, "%*.*e", w, p, f);
 while (*s)
  fmtputc(out, *s++);
}
