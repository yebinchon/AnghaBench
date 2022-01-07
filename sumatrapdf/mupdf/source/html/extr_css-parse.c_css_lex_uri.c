
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {char c; } ;


 scalar_t__ css_lex_accept (struct lexbuf*,float) ;
 int css_lex_next (struct lexbuf*) ;
 int css_push_char (struct lexbuf*,float) ;
 int fz_css_error (struct lexbuf*,char*) ;
 int iswhite (char) ;

__attribute__((used)) static void css_lex_uri(struct lexbuf *buf)
{
 while (buf->c && buf->c != ')' && !iswhite(buf->c))
 {
  if (css_lex_accept(buf, '\\'))
  {
   if (css_lex_accept(buf, 'n'))
    css_push_char(buf, '\n');
   else if (css_lex_accept(buf, 'r'))
    css_push_char(buf, '\r');
   else if (css_lex_accept(buf, 'f'))
    css_push_char(buf, '\f');
   else
   {
    css_push_char(buf, buf->c);
    css_lex_next(buf);
   }
  }
  else if (buf->c == '!' || buf->c == '#' || buf->c == '$' || buf->c == '%' || buf->c == '&' ||
    (buf->c >= '*' && buf->c <= '[') ||
    (buf->c >= ']' && buf->c <= '~') ||
    buf->c > 159)
  {
   css_push_char(buf, buf->c);
   css_lex_next(buf);
  }
  else
   fz_css_error(buf, "unexpected character in url");
 }
 css_push_char(buf, 0);
}
