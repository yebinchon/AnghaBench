
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_call (int *,int ) ;
 int js_endtry (int *) ;
 int js_loadstring (int *,char*,char const*) ;
 int js_pop (int *,int) ;
 int js_pushundefined (int *) ;
 int js_report (int *,int ) ;
 scalar_t__ js_try (int *) ;
 int js_trystring (int *,int,char*) ;

int js_dostring(js_State *J, const char *source)
{
 if (js_try(J)) {
  js_report(J, js_trystring(J, -1, "Error"));
  js_pop(J, 1);
  return 1;
 }
 js_loadstring(J, "[string]", source);
 js_pushundefined(J);
 js_call(J, 0);
 js_pop(J, 1);
 js_endtry(J);
 return 0;
}
