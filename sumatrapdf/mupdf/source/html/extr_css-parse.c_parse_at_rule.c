
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {scalar_t__ lookahead; } ;


 int CSS_KEYWORD ;
 scalar_t__ EOF ;
 scalar_t__ accept (struct lexbuf*,char) ;
 int expect (struct lexbuf*,int ) ;
 int next (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static void parse_at_rule(struct lexbuf *buf)
{
 expect(buf, CSS_KEYWORD);


 while (buf->lookahead != EOF)
 {
  if (accept(buf, ';'))
  {
   white(buf);
   return;
  }
  if (accept(buf, '{'))
  {
   int depth = 1;
   while (buf->lookahead != EOF && depth > 0)
   {
    if (accept(buf, '{'))
     ++depth;
    else if (accept(buf, '}'))
     --depth;
    else
     next(buf);
   }
   white(buf);
   return;
  }
  next(buf);
 }
}
