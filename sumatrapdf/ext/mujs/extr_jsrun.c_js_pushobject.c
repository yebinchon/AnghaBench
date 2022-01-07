
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
typedef int js_Object ;
struct TYPE_3__ {int * object; } ;
struct TYPE_4__ {TYPE_1__ u; int type; } ;


 int CHECKSTACK (int) ;
 int JS_TOBJECT ;
 TYPE_2__* STACK ;
 size_t TOP ;

void js_pushobject(js_State *J, js_Object *v)
{
 CHECKSTACK(1);
 STACK[TOP].type = JS_TOBJECT;
 STACK[TOP].u.object = v;
 ++TOP;
}
