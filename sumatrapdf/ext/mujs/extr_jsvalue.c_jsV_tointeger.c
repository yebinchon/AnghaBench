
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_Value ;
typedef int js_State ;


 double jsV_numbertointeger (int ) ;
 int jsV_tonumber (int *,int *) ;

double jsV_tointeger(js_State *J, js_Value *v)
{
 return jsV_numbertointeger(jsV_tonumber(J, v));
}
