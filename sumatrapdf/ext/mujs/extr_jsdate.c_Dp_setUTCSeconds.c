
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Day (double) ;
 double HourFromTime (double) ;
 int MakeDate (int ,int ) ;
 int MakeTime (double,double,double,double) ;
 double MinFromTime (double) ;
 double js_optnumber (int *,int,int ) ;
 int js_setdate (int *,int ,int ) ;
 double js_todate (int *,int ) ;
 double js_tonumber (int *,int) ;
 int msFromTime (double) ;

__attribute__((used)) static void Dp_setUTCSeconds(js_State *J)
{
 double t = js_todate(J, 0);
 double h = HourFromTime(t);
 double m = MinFromTime(t);
 double s = js_tonumber(J, 1);
 double ms = js_optnumber(J, 2, msFromTime(t));
 js_setdate(J, 0, MakeDate(Day(t), MakeTime(h, m, s, ms)));
}
