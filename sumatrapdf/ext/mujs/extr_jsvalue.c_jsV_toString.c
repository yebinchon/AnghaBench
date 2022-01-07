
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Object ;


 int js_call (int *,int ) ;
 int js_getproperty (int *,int,char*) ;
 scalar_t__ js_iscallable (int *,int) ;
 scalar_t__ js_isprimitive (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushobject (int *,int *) ;
 int js_rot2 (int *) ;

__attribute__((used)) static int jsV_toString(js_State *J, js_Object *obj)
{
 js_pushobject(J, obj);
 js_getproperty(J, -1, "toString");
 if (js_iscallable(J, -1)) {
  js_rot2(J);
  js_call(J, 0);
  if (js_isprimitive(J, -1))
   return 1;
  js_pop(J, 1);
  return 0;
 }
 js_pop(J, 2);
 return 0;
}
