
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int JS_DONTCONF ;
 int JS_DONTENUM ;
 int JS_READONLY ;
 int js_defproperty (int *,int,char const*,int) ;
 int js_pushnumber (int *,double) ;

void jsB_propn(js_State *J, const char *name, double number)
{
 js_pushnumber(J, number);
 js_defproperty(J, -2, name, JS_READONLY | JS_DONTENUM | JS_DONTCONF);
}
