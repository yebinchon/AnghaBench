
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_pushnumber (int *,double) ;
 int js_tostring (int *,int) ;
 double parseDateTime (int ) ;

__attribute__((used)) static void D_parse(js_State *J)
{
 double t = parseDateTime(js_tostring(J, 1));
 js_pushnumber(J, t);
}
