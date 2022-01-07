
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int LocalTZA () ;
 int LocalTime (int ) ;
 int Now () ;
 int fmtdatetime (char*,int ,int ) ;
 int js_pushstring (int *,int ) ;

__attribute__((used)) static void jsB_Date(js_State *J)
{
 char buf[64];
 js_pushstring(J, fmtdatetime(buf, LocalTime(Now()), LocalTZA()));
}
