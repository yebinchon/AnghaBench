
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char lexchar; } ;
typedef TYPE_1__ js_State ;


 int jsY_next (TYPE_1__*) ;

__attribute__((used)) static void lexlinecomment(js_State *J)
{
 while (J->lexchar && J->lexchar != '\n')
  jsY_next(J);
}
