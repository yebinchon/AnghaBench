
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int boolean; } ;
struct TYPE_4__ {TYPE_1__ u; int type; } ;


 int CHECKSTACK (int) ;
 int JS_TBOOLEAN ;
 TYPE_2__* STACK ;
 size_t TOP ;

void js_pushboolean(js_State *J, int v)
{
 CHECKSTACK(1);
 STACK[TOP].type = JS_TBOOLEAN;
 STACK[TOP].u.boolean = !!v;
 ++TOP;
}
