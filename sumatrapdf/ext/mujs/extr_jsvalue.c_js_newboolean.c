
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_newboolean (int *,int) ;
 int js_pushobject (int *,int ) ;

void js_newboolean(js_State *J, int v)
{
 js_pushobject(J, jsV_newboolean(J, v));
}
