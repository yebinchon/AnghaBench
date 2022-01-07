
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_2__ {int type; } ;


 int CHECKSTACK (int) ;
 int JS_TNULL ;
 TYPE_1__* STACK ;
 size_t TOP ;

void js_pushnull(js_State *J)
{
 CHECKSTACK(1);
 STACK[TOP].type = JS_TNULL;
 ++TOP;
}
