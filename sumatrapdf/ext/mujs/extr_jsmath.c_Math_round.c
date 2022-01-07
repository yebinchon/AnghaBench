
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsM_round (double) ;
 int js_pushnumber (int *,int ) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static void Math_round(js_State *J)
{
 double x = js_tonumber(J, 1);
 js_pushnumber(J, jsM_round(x));
}
