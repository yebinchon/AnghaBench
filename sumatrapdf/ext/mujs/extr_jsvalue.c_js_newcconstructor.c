
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int Function_prototype; } ;
typedef TYPE_3__ js_State ;
struct TYPE_14__ {char const* name; int length; void* constructor; void* function; } ;
struct TYPE_15__ {TYPE_1__ c; } ;
struct TYPE_17__ {TYPE_2__ u; } ;
typedef TYPE_4__ js_Object ;
typedef void* js_CFunction ;


 int JS_CCFUNCTION ;
 int JS_DONTCONF ;
 int JS_DONTENUM ;
 int JS_READONLY ;
 TYPE_4__* jsV_newobject (TYPE_3__*,int ,int ) ;
 int js_copy (TYPE_3__*,int) ;
 int js_defproperty (TYPE_3__*,int,char*,int) ;
 int js_pushnumber (TYPE_3__*,int) ;
 int js_pushobject (TYPE_3__*,TYPE_4__*) ;
 int js_rot2 (TYPE_3__*) ;

void js_newcconstructor(js_State *J, js_CFunction cfun, js_CFunction ccon, const char *name, int length)
{
 js_Object *obj = jsV_newobject(J, JS_CCFUNCTION, J->Function_prototype);
 obj->u.c.name = name;
 obj->u.c.function = cfun;
 obj->u.c.constructor = ccon;
 obj->u.c.length = length;
 js_pushobject(J, obj);
 {
  js_pushnumber(J, length);
  js_defproperty(J, -2, "length", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
  js_rot2(J);
  js_copy(J, -2);
  js_defproperty(J, -2, "constructor", JS_DONTENUM);
  js_defproperty(J, -2, "prototype", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
 }
}
