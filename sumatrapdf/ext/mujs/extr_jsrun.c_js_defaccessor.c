
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsR_defproperty (int *,int ,char const*,int,int *,int ,int ) ;
 int jsR_tofunction (int *,int) ;
 int js_pop (int *,int) ;
 int js_toobject (int *,int) ;

void js_defaccessor(js_State *J, int idx, const char *name, int atts)
{
 jsR_defproperty(J, js_toobject(J, idx), name, atts, ((void*)0), jsR_tofunction(J, -2), jsR_tofunction(J, -1));
 js_pop(J, 2);
}
