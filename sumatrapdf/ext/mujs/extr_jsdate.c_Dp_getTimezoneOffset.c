
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double LocalTime (double) ;
 int js_pushnumber (int *,double) ;
 double js_todate (int *,int ) ;
 double msPerMinute ;

__attribute__((used)) static void Dp_getTimezoneOffset(js_State *J)
{
 double t = js_todate(J, 0);
 js_pushnumber(J, (t - LocalTime(t)) / msPerMinute);
}
