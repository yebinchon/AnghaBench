
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Day (double) ;
 double LocalTime (int ) ;
 int MakeDate (int ,int ) ;
 int MakeTime (double,double,double,double) ;
 int MinFromTime (double) ;
 int SecFromTime (double) ;
 int UTC (int ) ;
 double js_optnumber (int *,int,int ) ;
 int js_setdate (int *,int ,int ) ;
 int js_todate (int *,int ) ;
 double js_tonumber (int *,int) ;
 int msFromTime (double) ;

__attribute__((used)) static void Dp_setHours(js_State *J)
{
 double t = LocalTime(js_todate(J, 0));
 double h = js_tonumber(J, 1);
 double m = js_optnumber(J, 2, MinFromTime(t));
 double s = js_optnumber(J, 3, SecFromTime(t));
 double ms = js_optnumber(J, 4, msFromTime(t));
 js_setdate(J, 0, UTC(MakeDate(Day(t), MakeTime(h, m, s, ms))));
}
