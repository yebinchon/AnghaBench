
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_endtry (int *) ;
 int js_pop (int *,int) ;
 int js_toboolean (int *,int) ;
 scalar_t__ js_try (int *) ;

int js_tryboolean(js_State *J, int idx, int error)
{
 int v;
 if (js_try(J)) {
  js_pop(J, 1);
  return error;
 }
 v = js_toboolean(J, idx);
 js_endtry(J);
 return v;
}
