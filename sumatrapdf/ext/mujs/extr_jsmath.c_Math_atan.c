
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int atan (int ) ;
 int js_pushnumber (int *,int ) ;
 int js_tonumber (int *,int) ;

__attribute__((used)) static void Math_atan(js_State *J)
{
 js_pushnumber(J, atan(js_tonumber(J, 1)));
}
