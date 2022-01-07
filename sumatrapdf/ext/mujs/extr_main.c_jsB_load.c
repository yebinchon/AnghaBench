
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_call (int *,int ) ;
 int js_gettop (int *) ;
 int js_loadfile (int *,int ) ;
 int js_pop (int *,int) ;
 int js_pushundefined (int *) ;
 int js_tostring (int *,int) ;

__attribute__((used)) static void jsB_load(js_State *J)
{
 int i, n = js_gettop(J);
 for (i = 1; i < n; ++i) {
  js_loadfile(J, js_tostring(J, i));
  js_pushundefined(J);
  js_call(J, 0);
  js_pop(J, 1);
 }
 js_pushundefined(J);
}
