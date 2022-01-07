
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int NAN ;
 int fabs (double) ;
 int isfinite (double) ;
 int js_pushnumber (int *,int ) ;
 double js_tonumber (int *,int) ;
 int pow (double,double) ;

__attribute__((used)) static void Math_pow(js_State *J)
{
 double x = js_tonumber(J, 1);
 double y = js_tonumber(J, 2);
 if (!isfinite(y) && fabs(x) == 1)
  js_pushnumber(J, NAN);
 else
  js_pushnumber(J, pow(x,y));
}
