
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double LocalTime (int ) ;
 int MakeDate (int ,int ) ;
 int MakeDay (double,double,double) ;
 double MonthFromTime (double) ;
 int TimeWithinDay (double) ;
 int UTC (int ) ;
 double YearFromTime (double) ;
 int js_setdate (int *,int ,int ) ;
 int js_todate (int *,int ) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static void Dp_setDate(js_State *J)
{
 double t = LocalTime(js_todate(J, 0));
 double y = YearFromTime(t);
 double m = MonthFromTime(t);
 double d = js_tonumber(J, 1);
 js_setdate(J, 0, UTC(MakeDate(MakeDay(y, m, d), TimeWithinDay(t))));
}
