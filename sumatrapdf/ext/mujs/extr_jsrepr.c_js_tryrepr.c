
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_endtry (int *) ;
 int js_pop (int *,int) ;
 char* js_torepr (int *,int) ;
 scalar_t__ js_try (int *) ;

const char *js_tryrepr(js_State *J, int idx, const char *error)
{
 const char *s;
 if (js_try(J)) {
  js_pop(J, 1);
  return error;
 }
 s = js_torepr(J, idx);
 js_endtry(J);
 return s;
}
