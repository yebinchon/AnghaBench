
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Now () ;
 int js_pushnumber (int *,int ) ;

__attribute__((used)) static void D_now(js_State *J)
{
 js_pushnumber(J, Now());
}
