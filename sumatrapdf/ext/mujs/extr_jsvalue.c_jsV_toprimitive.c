
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {char* litstr; TYPE_4__* object; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ js_Value ;
struct TYPE_17__ {scalar_t__ strict; } ;
typedef TYPE_3__ js_State ;
struct TYPE_18__ {scalar_t__ type; } ;
typedef TYPE_4__ js_Object ;


 scalar_t__ JS_CDATE ;
 int JS_HNONE ;
 int JS_HNUMBER ;
 int JS_HSTRING ;
 scalar_t__ JS_TLITSTR ;
 scalar_t__ JS_TOBJECT ;
 scalar_t__ jsV_toString (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ jsV_valueOf (TYPE_3__*,TYPE_4__*) ;
 int js_pop (TYPE_3__*,int) ;
 TYPE_2__* js_tovalue (TYPE_3__*,int) ;
 int js_typeerror (TYPE_3__*,char*) ;

void jsV_toprimitive(js_State *J, js_Value *v, int preferred)
{
 js_Object *obj;

 if (v->type != JS_TOBJECT)
  return;

 obj = v->u.object;

 if (preferred == JS_HNONE)
  preferred = obj->type == JS_CDATE ? JS_HSTRING : JS_HNUMBER;

 if (preferred == JS_HSTRING) {
  if (jsV_toString(J, obj) || jsV_valueOf(J, obj)) {
   *v = *js_tovalue(J, -1);
   js_pop(J, 1);
   return;
  }
 } else {
  if (jsV_valueOf(J, obj) || jsV_toString(J, obj)) {
   *v = *js_tovalue(J, -1);
   js_pop(J, 1);
   return;
  }
 }

 if (J->strict)
  js_typeerror(J, "cannot convert object to primitive");

 v->type = JS_TLITSTR;
 v->u.litstr = "[object]";
 return;
}
