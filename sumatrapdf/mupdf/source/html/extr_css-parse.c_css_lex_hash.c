
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int c; } ;


 int CSS_HASH ;
 int css_lex_next (struct lexbuf*) ;
 int css_push_char (struct lexbuf*,int ) ;
 scalar_t__ isnmchar (int ) ;

__attribute__((used)) static int css_lex_hash(struct lexbuf *buf)
{
 while (isnmchar(buf->c))
 {
  css_push_char(buf, buf->c);
  css_lex_next(buf);
 }
 css_push_char(buf, 0);
 return CSS_HASH;
}
