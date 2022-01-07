
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int isnan (double) ;
 int js_pushboolean (int *,int ) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static void jsB_isNaN(js_State *J)
{
 double n = js_tonumber(J, 1);
 js_pushboolean(J, isnan(n));
}
