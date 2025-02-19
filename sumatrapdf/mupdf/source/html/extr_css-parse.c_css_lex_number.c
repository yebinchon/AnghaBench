
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {char c; } ;


 int CSS_LENGTH ;
 int CSS_NUMBER ;
 int CSS_PERCENT ;
 scalar_t__ css_lex_accept (struct lexbuf*,char) ;
 int css_lex_next (struct lexbuf*) ;
 int css_push_char (struct lexbuf*,char) ;
 scalar_t__ isnmchar (char) ;
 scalar_t__ isnmstart (char) ;

__attribute__((used)) static int css_lex_number(struct lexbuf *buf)
{
 while (buf->c >= '0' && buf->c <= '9')
 {
  css_push_char(buf, buf->c);
  css_lex_next(buf);
 }

 if (css_lex_accept(buf, '.'))
 {
  css_push_char(buf, '.');
  while (buf->c >= '0' && buf->c <= '9')
  {
   css_push_char(buf, buf->c);
   css_lex_next(buf);
  }
 }

 if (css_lex_accept(buf, '%'))
 {
  css_push_char(buf, '%');
  css_push_char(buf, 0);
  return CSS_PERCENT;
 }

 if (isnmstart(buf->c))
 {
  css_push_char(buf, buf->c);
  css_lex_next(buf);
  while (isnmchar(buf->c))
  {
   css_push_char(buf, buf->c);
   css_lex_next(buf);
  }
  css_push_char(buf, 0);
  return CSS_LENGTH;
 }

 css_push_char(buf, 0);
 return CSS_NUMBER;
}
