
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int dummy; } ;


 scalar_t__ accept (struct lexbuf*,int) ;
 int fz_css_error (struct lexbuf*,char*) ;

__attribute__((used)) static void expect(struct lexbuf *buf, int t)
{
 if (accept(buf, t))
  return;
 fz_css_error(buf, "unexpected token");
}
