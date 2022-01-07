
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int JS_DONTENUM ;
 int js_defproperty (int *,int,char const*,int ) ;
 int js_pushliteral (int *,char const*) ;

void jsB_props(js_State *J, const char *name, const char *string)
{
 js_pushliteral(J, string);
 js_defproperty(J, -2, name, JS_DONTENUM);
}
