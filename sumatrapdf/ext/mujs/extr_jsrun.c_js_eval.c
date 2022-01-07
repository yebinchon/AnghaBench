
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_call (int *,int ) ;
 int js_copy (int *,int ) ;
 int js_isstring (int *,int) ;
 int js_loadeval (int *,char*,int ) ;
 int js_rot2pop1 (int *) ;
 int js_tostring (int *,int) ;

void js_eval(js_State *J)
{
 if (!js_isstring(J, -1))
  return;
 js_loadeval(J, "(eval)", js_tostring(J, -1));
 js_rot2pop1(J);
 js_copy(J, 0);
 js_call(J, 0);
}
