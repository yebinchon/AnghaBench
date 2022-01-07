
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_setdate (int *,int ,int ) ;
 int js_tonumber (int *,int) ;

__attribute__((used)) static void Dp_setTime(js_State *J)
{
 js_setdate(J, 0, js_tonumber(J, 1));
}
