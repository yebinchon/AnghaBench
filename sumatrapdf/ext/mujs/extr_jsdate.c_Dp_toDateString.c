
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int LocalTime (double) ;
 int fmtdate (char*,int ) ;
 int js_pushstring (int *,int ) ;
 double js_todate (int *,int ) ;

__attribute__((used)) static void Dp_toDateString(js_State *J)
{
 char buf[64];
 double t = js_todate(J, 0);
 js_pushstring(J, fmtdate(buf, LocalTime(t)));
}
