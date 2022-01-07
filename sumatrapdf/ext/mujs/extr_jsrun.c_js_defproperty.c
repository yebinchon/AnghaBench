
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsR_defproperty (int *,int ,char const*,int,int ,int *,int *) ;
 int js_pop (int *,int) ;
 int js_toobject (int *,int) ;
 int stackidx (int *,int) ;

void js_defproperty(js_State *J, int idx, const char *name, int atts)
{
 jsR_defproperty(J, js_toobject(J, idx), name, atts, stackidx(J, -1), ((void*)0), ((void*)0));
 js_pop(J, 1);
}
