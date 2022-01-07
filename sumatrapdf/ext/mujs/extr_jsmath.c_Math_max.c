
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double INFINITY ;
 scalar_t__ isnan (double) ;
 int js_gettop (int *) ;
 int js_pushnumber (int *,double) ;
 double js_tonumber (int *,int) ;
 scalar_t__ signbit (double) ;

__attribute__((used)) static void Math_max(js_State *J)
{
 int i, n = js_gettop(J);
 double x = -INFINITY;
 for (i = 1; i < n; ++i) {
  double y = js_tonumber(J, i);
  if (isnan(y)) {
   x = y;
   break;
  }
  if (signbit(x) == signbit(y))
   x = x > y ? x : y;
  else if (signbit(x))
   x = y;
 }
 js_pushnumber(J, x);
}
