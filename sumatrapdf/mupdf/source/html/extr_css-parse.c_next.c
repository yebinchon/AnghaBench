
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int lookahead; } ;


 int css_lex (struct lexbuf*) ;

__attribute__((used)) static void next(struct lexbuf *buf)
{
 buf->lookahead = css_lex(buf);
}
