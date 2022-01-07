
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int * STACK ;
 int TOP ;
 int js_call (int *,int) ;
 int js_endtry (int *) ;
 scalar_t__ js_try (int *) ;

int js_pcall(js_State *J, int n)
{
 int savetop = TOP - n - 2;
 if (js_try(J)) {

  STACK[savetop] = STACK[TOP-1];
  TOP = savetop + 1;
  return 1;
 }
 js_call(J, n);
 js_endtry(J);
 return 0;
}
