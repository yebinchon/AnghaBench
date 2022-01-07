
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Day (double) ;
 double HourFromTime (double) ;
 double LocalTime (int ) ;
 int MakeDate (int ,int ) ;
 int MakeTime (double,double,double,double) ;
 double MinFromTime (double) ;
 double SecFromTime (double) ;
 int UTC (int ) ;
 int js_setdate (int *,int ,int ) ;
 int js_todate (int *,int ) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static void Dp_setMilliseconds(js_State *J)
{
 double t = LocalTime(js_todate(J, 0));
 double h = HourFromTime(t);
 double m = MinFromTime(t);
 double s = SecFromTime(t);
 double ms = js_tonumber(J, 1);
 js_setdate(J, 0, UTC(MakeDate(Day(t), MakeTime(h, m, s, ms))));
}
