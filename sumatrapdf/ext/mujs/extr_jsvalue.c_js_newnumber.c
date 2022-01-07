
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_newnumber (int *,double) ;
 int js_pushobject (int *,int ) ;

void js_newnumber(js_State *J, double v)
{
 js_pushobject(J, jsV_newnumber(J, v));
}
