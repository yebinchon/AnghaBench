
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int atts; int setter; int getter; int value; } ;
typedef TYPE_1__ js_Property ;
typedef int js_Object ;


 int JS_DONTCONF ;
 int JS_DONTENUM ;
 int JS_READONLY ;
 TYPE_1__* jsV_getproperty (int *,int *,int ) ;
 int js_isobject (int *,int) ;
 int js_newobject (int *) ;
 int js_pushboolean (int *,int) ;
 int js_pushobject (int *,int ) ;
 int js_pushundefined (int *) ;
 int js_pushvalue (int *,int ) ;
 int js_setproperty (int *,int,char*) ;
 int * js_toobject (int *,int) ;
 int js_tostring (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_getOwnPropertyDescriptor(js_State *J)
{
 js_Object *obj;
 js_Property *ref;
 if (!js_isobject(J, 1))
  js_typeerror(J, "not an object");
 obj = js_toobject(J, 1);
 ref = jsV_getproperty(J, obj, js_tostring(J, 2));
 if (!ref)
  js_pushundefined(J);
 else {
  js_newobject(J);
  if (!ref->getter && !ref->setter) {
   js_pushvalue(J, ref->value);
   js_setproperty(J, -2, "value");
   js_pushboolean(J, !(ref->atts & JS_READONLY));
   js_setproperty(J, -2, "writable");
  } else {
   if (ref->getter)
    js_pushobject(J, ref->getter);
   else
    js_pushundefined(J);
   js_setproperty(J, -2, "get");
   if (ref->setter)
    js_pushobject(J, ref->setter);
   else
    js_pushundefined(J);
   js_setproperty(J, -2, "set");
  }
  js_pushboolean(J, !(ref->atts & JS_DONTENUM));
  js_setproperty(J, -2, "enumerable");
  js_pushboolean(J, !(ref->atts & JS_DONTCONF));
  js_setproperty(J, -2, "configurable");
 }
}
