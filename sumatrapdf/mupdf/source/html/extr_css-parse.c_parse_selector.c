
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {char lookahead; } ;
typedef int fz_css_selector ;


 char EOF ;
 scalar_t__ accept (struct lexbuf*,char) ;
 int * parse_combinator (struct lexbuf*,char,int *) ;
 int * parse_simple_selector (struct lexbuf*) ;

__attribute__((used)) static fz_css_selector *parse_selector(struct lexbuf *buf)
{
 fz_css_selector *sel = parse_simple_selector(buf);
 for (;;)
 {
  if (accept(buf, ' '))
  {
   if (accept(buf, '+'))
    sel = parse_combinator(buf, '+', sel);
   else if (accept(buf, '>'))
    sel = parse_combinator(buf, '>', sel);
   else if (buf->lookahead != ',' && buf->lookahead != '{' && buf->lookahead != EOF)
    sel = parse_combinator(buf, ' ', sel);
   else
    break;
  }
  else if (accept(buf, '+'))
   sel = parse_combinator(buf, '+', sel);
  else if (accept(buf, '>'))
   sel = parse_combinator(buf, '>', sel);
  else
   break;
 }
 return sel;
}
