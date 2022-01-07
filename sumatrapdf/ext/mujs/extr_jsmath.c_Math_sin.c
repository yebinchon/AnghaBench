
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_pushnumber (int *,int ) ;
 int js_tonumber (int *,int) ;
 int sin (int ) ;

__attribute__((used)) static void Math_sin(js_State *J)
{
 js_pushnumber(J, sin(js_tonumber(J, 1)));
}
