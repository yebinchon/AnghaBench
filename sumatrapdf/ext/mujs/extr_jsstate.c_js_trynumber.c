
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_endtry (int *) ;
 int js_pop (int *,int) ;
 double js_tonumber (int *,int) ;
 scalar_t__ js_try (int *) ;

double js_trynumber(js_State *J, int idx, double error)
{
 double v;
 if (js_try(J)) {
  js_pop(J, 1);
  return error;
 }
 v = js_tonumber(J, idx);
 js_endtry(J);
 return v;
}
