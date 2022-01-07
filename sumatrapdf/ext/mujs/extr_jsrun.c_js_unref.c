
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_delregistry (int *,char const*) ;

void js_unref(js_State *J, const char *ref)
{
 js_delregistry(J, ref);
}
