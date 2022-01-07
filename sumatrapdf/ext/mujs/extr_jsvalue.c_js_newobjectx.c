
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Object ;


 int JS_COBJECT ;
 int jsV_newobject (int *,int ,int *) ;
 scalar_t__ js_isobject (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushobject (int *,int ) ;
 int * js_toobject (int *,int) ;

void js_newobjectx(js_State *J)
{
 js_Object *prototype = ((void*)0);
 if (js_isobject(J, -1))
  prototype = js_toobject(J, -1);
 js_pop(J, 1);
 js_pushobject(J, jsV_newobject(J, JS_COBJECT, prototype));
}
