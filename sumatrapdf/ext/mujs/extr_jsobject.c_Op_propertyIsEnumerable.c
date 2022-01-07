
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int atts; } ;
typedef TYPE_1__ js_Property ;
typedef int js_Object ;


 int JS_DONTENUM ;
 TYPE_1__* jsV_getownproperty (int *,int *,char const*) ;
 int js_pushboolean (int *,int ) ;
 int * js_toobject (int *,int ) ;
 char* js_tostring (int *,int) ;

__attribute__((used)) static void Op_propertyIsEnumerable(js_State *J)
{
 js_Object *self = js_toobject(J, 0);
 const char *name = js_tostring(J, 1);
 js_Property *ref = jsV_getownproperty(J, self, name);
 js_pushboolean(J, ref && !(ref->atts & JS_DONTENUM));
}
