
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int fmtdatetime (char*,double,int ) ;
 int isfinite (double) ;
 int js_pushstring (int *,int ) ;
 int js_rangeerror (int *,char*) ;
 double js_todate (int *,int ) ;

__attribute__((used)) static void Dp_toISOString(js_State *J)
{
 char buf[64];
 double t = js_todate(J, 0);
 if (!isfinite(t))
  js_rangeerror(J, "invalid date");
 js_pushstring(J, fmtdatetime(buf, t, 0));
}
