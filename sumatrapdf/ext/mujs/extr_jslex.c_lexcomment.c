
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lexchar; } ;
typedef TYPE_1__ js_State ;


 scalar_t__ jsY_accept (TYPE_1__*,char) ;
 int jsY_next (TYPE_1__*) ;

__attribute__((used)) static int lexcomment(js_State *J)
{

 while (J->lexchar != 0) {
  if (jsY_accept(J, '*')) {
   while (J->lexchar == '*')
    jsY_next(J);
   if (jsY_accept(J, '/'))
    return 0;
  }
  else
   jsY_next(J);
 }
 return -1;
}
