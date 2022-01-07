
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_itoa (char*,int) ;
 int js_setproperty (int *,int,int ) ;

void js_setindex(js_State *J, int idx, int i)
{
 char buf[32];
 js_setproperty(J, idx, js_itoa(buf, i));
}
