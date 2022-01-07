
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsR_getproperty (int *,int ,char const*) ;
 int js_toobject (int *,int) ;

void js_getproperty(js_State *J, int idx, const char *name)
{
 jsR_getproperty(J, js_toobject(J, idx), name);
}
