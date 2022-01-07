
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 scalar_t__ js_isdefined (int *,int) ;
 int js_loadstring (int *,char const*,char const*) ;
 char* js_tostring (int *,int) ;

__attribute__((used)) static void jsB_compile(js_State *J)
{
 const char *source = js_tostring(J, 1);
 const char *filename = js_isdefined(J, 2) ? js_tostring(J, 2) : "[string]";
 js_loadstring(J, filename, source);
}
