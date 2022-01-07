
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_pushnumber (int *,int) ;
 int js_setproperty (int *,int,char*) ;

void js_setlength(js_State *J, int idx, int len)
{
 js_pushnumber(J, len);
 js_setproperty(J, idx < 0 ? idx - 1 : idx, "length");
}
