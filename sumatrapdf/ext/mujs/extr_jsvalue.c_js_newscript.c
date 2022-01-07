
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_6__ {int * scope; int * function; } ;
struct TYPE_7__ {TYPE_1__ f; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ js_Object ;
typedef int js_Function ;
typedef int js_Environment ;


 int JS_CSCRIPT ;
 TYPE_3__* jsV_newobject (int *,int ,int *) ;
 int js_pushobject (int *,TYPE_3__*) ;

void js_newscript(js_State *J, js_Function *fun, js_Environment *scope)
{
 js_Object *obj = jsV_newobject(J, JS_CSCRIPT, ((void*)0));
 obj->u.f.function = fun;
 obj->u.f.scope = scope;
 js_pushobject(J, obj);
}
