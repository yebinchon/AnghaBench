
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_26__ {TYPE_4__* Object_prototype; int tracetop; } ;
typedef TYPE_3__ js_State ;
struct TYPE_24__ {scalar_t__ constructor; int length; int name; } ;
struct TYPE_25__ {TYPE_1__ c; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_4__ js_Object ;


 int BOT ;
 scalar_t__ JS_CCFUNCTION ;
 int JS_COBJECT ;
 int TOP ;
 int jsR_callcfunction (TYPE_3__*,int,int ,scalar_t__) ;
 int jsR_pushtrace (TYPE_3__*,int ,char*,int ) ;
 TYPE_4__* jsV_newobject (TYPE_3__*,int ,TYPE_4__*) ;
 int js_call (TYPE_3__*,int) ;
 int js_getproperty (TYPE_3__*,int,char*) ;
 int js_iscallable (TYPE_3__*,int) ;
 scalar_t__ js_isobject (TYPE_3__*,int) ;
 int js_pop (TYPE_3__*,int) ;
 int js_pushnull (TYPE_3__*) ;
 int js_pushobject (TYPE_3__*,TYPE_4__*) ;
 int js_rot (TYPE_3__*,int) ;
 TYPE_4__* js_toobject (TYPE_3__*,int) ;
 int js_typeerror (TYPE_3__*,char*,int ) ;
 int js_typeof (TYPE_3__*,int) ;

void js_construct(js_State *J, int n)
{
 js_Object *obj;
 js_Object *prototype;
 js_Object *newobj;

 if (!js_iscallable(J, -n-1))
  js_typeerror(J, "%s is not callable", js_typeof(J, -n-1));

 obj = js_toobject(J, -n-1);


 if (obj->type == JS_CCFUNCTION && obj->u.c.constructor) {
  int savebot = BOT;
  js_pushnull(J);
  if (n > 0)
   js_rot(J, n + 1);
  BOT = TOP - n - 1;

  jsR_pushtrace(J, obj->u.c.name, "native", 0);
  jsR_callcfunction(J, n, obj->u.c.length, obj->u.c.constructor);
  --J->tracetop;

  BOT = savebot;
  return;
 }


 js_getproperty(J, -n - 1, "prototype");
 if (js_isobject(J, -1))
  prototype = js_toobject(J, -1);
 else
  prototype = J->Object_prototype;
 js_pop(J, 1);


 newobj = jsV_newobject(J, JS_COBJECT, prototype);
 js_pushobject(J, newobj);
 if (n > 0)
  js_rot(J, n + 1);


 js_call(J, n);


 if (!js_isobject(J, -1)) {
  js_pop(J, 1);
  js_pushobject(J, newobj);
 }
}
