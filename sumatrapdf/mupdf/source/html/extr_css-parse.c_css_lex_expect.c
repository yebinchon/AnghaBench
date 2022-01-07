
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int dummy; } ;


 int css_lex_accept (struct lexbuf*,int) ;
 int fz_css_error (struct lexbuf*,char*) ;

__attribute__((used)) static void css_lex_expect(struct lexbuf *buf, int t)
{
 if (!css_lex_accept(buf, t))
  fz_css_error(buf, "unexpected character");
}
