
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lookahead; } ;
typedef TYPE_1__ js_State ;


 int jsY_lex (TYPE_1__*) ;

__attribute__((used)) static void jsP_next(js_State *J)
{
 J->lookahead = jsY_lex(J);
}
