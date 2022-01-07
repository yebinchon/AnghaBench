
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_CFunction ;


 int JS_DONTENUM ;
 int js_defproperty (int *,int,char const*,int ) ;
 int js_newcfunction (int *,int ,char const*,int) ;
 char* strrchr (char const*,char) ;

void jsB_propf(js_State *J, const char *name, js_CFunction cfun, int n)
{
 const char *pname = strrchr(name, '.');
 pname = pname ? pname + 1 : name;
 js_newcfunction(J, cfun, name, n);
 js_defproperty(J, -2, pname, JS_DONTENUM);
}
