
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double MakeDate (int ,int ) ;
 int MakeDay (double,double,double) ;
 int MakeTime (double,double,double,double) ;
 double TimeClip (double) ;
 double js_optnumber (int *,int,int) ;
 int js_pushnumber (int *,double) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static void D_UTC(js_State *J)
{
 double y, m, d, H, M, S, ms, t;
 y = js_tonumber(J, 1);
 if (y < 100) y += 1900;
 m = js_tonumber(J, 2);
 d = js_optnumber(J, 3, 1);
 H = js_optnumber(J, 4, 0);
 M = js_optnumber(J, 5, 0);
 S = js_optnumber(J, 6, 0);
 ms = js_optnumber(J, 7, 0);
 t = MakeDate(MakeDay(y, m, d), MakeTime(H, M, S, ms));
 t = TimeClip(t);
 js_pushnumber(J, t);
}
