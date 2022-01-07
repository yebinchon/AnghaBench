
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_newstring (int *,char const*) ;
 int js_pushobject (int *,int ) ;

void js_newstring(js_State *J, const char *v)
{
 js_pushobject(J, jsV_newstring(J, v));
}
