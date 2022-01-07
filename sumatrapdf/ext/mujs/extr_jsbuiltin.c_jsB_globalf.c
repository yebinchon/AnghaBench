
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_CFunction ;


 int JS_DONTENUM ;
 int js_defglobal (int *,char const*,int ) ;
 int js_newcfunction (int *,int ,char const*,int) ;

__attribute__((used)) static void jsB_globalf(js_State *J, const char *name, js_CFunction cfun, int n)
{
 js_newcfunction(J, cfun, name, n);
 js_defglobal(J, name, JS_DONTENUM);
}
