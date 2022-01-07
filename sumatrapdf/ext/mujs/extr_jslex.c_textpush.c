
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int cap; int text; } ;
struct TYPE_6__ {TYPE_1__ lexbuf; } ;
typedef TYPE_2__ js_State ;
typedef int Rune ;


 int js_realloc (TYPE_2__*,int,int) ;
 int runelen (int ) ;
 int runetochar (int,int *) ;

__attribute__((used)) static void textpush(js_State *J, Rune c)
{
 int n = runelen(c);
 if (J->lexbuf.len + n > J->lexbuf.cap) {
  J->lexbuf.cap = J->lexbuf.cap * 2;
  J->lexbuf.text = js_realloc(J, J->lexbuf.text, J->lexbuf.cap);
 }
 J->lexbuf.len += runetochar(J->lexbuf.text + J->lexbuf.len, &c);
}
