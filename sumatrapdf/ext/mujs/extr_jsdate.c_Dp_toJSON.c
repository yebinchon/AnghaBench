
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int JS_HNUMBER ;
 int isfinite (int ) ;
 int js_call (int *,int ) ;
 int js_copy (int *,int ) ;
 int js_getproperty (int *,int ,char*) ;
 int js_iscallable (int *,int) ;
 scalar_t__ js_isnumber (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushnull (int *) ;
 int js_tonumber (int *,int) ;
 int js_toprimitive (int *,int,int ) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Dp_toJSON(js_State *J)
{
 js_copy(J, 0);
 js_toprimitive(J, -1, JS_HNUMBER);
 if (js_isnumber(J, -1) && !isfinite(js_tonumber(J, -1))) {
  js_pushnull(J);
  return;
 }
 js_pop(J, 1);

 js_getproperty(J, 0, "toISOString");
 if (!js_iscallable(J, -1))
  js_typeerror(J, "this.toISOString is not a function");
 js_copy(J, 0);
 js_call(J, 0);
}
