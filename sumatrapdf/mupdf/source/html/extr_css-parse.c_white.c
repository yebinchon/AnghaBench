
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {char lookahead; } ;


 int next (struct lexbuf*) ;

__attribute__((used)) static void white(struct lexbuf *buf)
{
 while (buf->lookahead == ' ')
  next(buf);
}
