
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int DateFromTime (double) ;
 double LocalTime (int ) ;
 int MakeDate (int ,int ) ;
 int MakeDay (double,double,double) ;
 int MonthFromTime (double) ;
 int TimeWithinDay (double) ;
 int UTC (int ) ;
 double js_optnumber (int *,int,int ) ;
 int js_setdate (int *,int ,int ) ;
 int js_todate (int *,int ) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static void Dp_setFullYear(js_State *J)
{
 double t = LocalTime(js_todate(J, 0));
 double y = js_tonumber(J, 1);
 double m = js_optnumber(J, 2, MonthFromTime(t));
 double d = js_optnumber(J, 3, DateFromTime(t));
 js_setdate(J, 0, UTC(MakeDate(MakeDay(y, m, d), TimeWithinDay(t))));
}
