
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int LocalTime (double) ;
 int js_pushnumber (int *,int ) ;
 double js_todate (int *,int ) ;
 int msFromTime (int ) ;

__attribute__((used)) static void Dp_getMilliseconds(js_State *J)
{
 double t = js_todate(J, 0);
 js_pushnumber(J, msFromTime(LocalTime(t)));
}
