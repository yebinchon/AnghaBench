
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsR_hasproperty (int *,int ,char const*) ;
 int js_toobject (int *,int) ;

int js_hasproperty(js_State *J, int idx, const char *name)
{
 return jsR_hasproperty(J, js_toobject(J, idx), name);
}
