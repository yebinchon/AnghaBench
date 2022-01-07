
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int c; } ;


 int CSS_STRING ;
 scalar_t__ css_lex_accept (struct lexbuf*,char) ;
 int css_lex_expect (struct lexbuf*,int) ;
 int css_lex_next (struct lexbuf*) ;
 int css_push_char (struct lexbuf*,float) ;

__attribute__((used)) static int css_lex_string(struct lexbuf *buf, int q)
{
 while (buf->c && buf->c != q)
 {
  if (css_lex_accept(buf, '\\'))
  {
   if (css_lex_accept(buf, 'n'))
    css_push_char(buf, '\n');
   else if (css_lex_accept(buf, 'r'))
    css_push_char(buf, '\r');
   else if (css_lex_accept(buf, 'f'))
    css_push_char(buf, '\f');
   else if (css_lex_accept(buf, '\f'))
                            ;
   else if (css_lex_accept(buf, '\n'))
                            ;
   else if (css_lex_accept(buf, '\r'))
    css_lex_accept(buf, '\n');
   else
   {
    css_push_char(buf, buf->c);
    css_lex_next(buf);
   }
  }
  else
  {
   css_push_char(buf, buf->c);
   css_lex_next(buf);
  }
 }
 css_lex_expect(buf, q);
 css_push_char(buf, 0);
 return CSS_STRING;
}
