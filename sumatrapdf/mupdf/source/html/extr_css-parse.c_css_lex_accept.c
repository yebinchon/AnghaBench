
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int c; } ;


 int css_lex_next (struct lexbuf*) ;

__attribute__((used)) static int css_lex_accept(struct lexbuf *buf, int t)
{
 if (buf->c == t)
 {
  css_lex_next(buf);
  return 1;
 }
 return 0;
}
