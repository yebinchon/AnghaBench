
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {struct TYPE_3__* prototype; } ;
typedef TYPE_1__ js_Object ;


 int js_getproperty (int *,int,char*) ;
 int js_iscallable (int *,int) ;
 int js_isobject (int *,int) ;
 int js_pop (int *,int) ;
 TYPE_1__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

int js_instanceof(js_State *J)
{
 js_Object *O, *V;

 if (!js_iscallable(J, -1))
  js_typeerror(J, "instanceof: invalid operand");

 if (!js_isobject(J, -2))
  return 0;

 js_getproperty(J, -1, "prototype");
 if (!js_isobject(J, -1))
  js_typeerror(J, "instanceof: 'prototype' property is not an object");
 O = js_toobject(J, -1);
 js_pop(J, 1);

 V = js_toobject(J, -2);
 while (V) {
  V = V->prototype;
  if (O == V)
   return 1;
 }

 return 0;
}
