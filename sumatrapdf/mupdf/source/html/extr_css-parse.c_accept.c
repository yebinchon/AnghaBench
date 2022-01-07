
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int lookahead; } ;


 int next (struct lexbuf*) ;

__attribute__((used)) static int accept(struct lexbuf *buf, int t)
{
 if (buf->lookahead == t)
 {
  next(buf);
  return 1;
 }
 return 0;
}
