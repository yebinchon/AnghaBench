
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsR_delproperty (int *,int ,char const*) ;
 int js_toobject (int *,int) ;

void js_delproperty(js_State *J, int idx, const char *name)
{
 jsR_delproperty(J, js_toobject(J, idx), name);
}
