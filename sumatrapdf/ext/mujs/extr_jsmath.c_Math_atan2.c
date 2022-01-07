
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int atan2 (double,double) ;
 int js_pushnumber (int *,int ) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static void Math_atan2(js_State *J)
{
 double y = js_tonumber(J, 1);
 double x = js_tonumber(J, 2);
 js_pushnumber(J, atan2(y, x));
}
