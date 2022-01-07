
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_copy (int *,int) ;
 int js_getlength (int *,int ) ;
 scalar_t__ js_hasindex (int *,int ,int) ;
 scalar_t__ js_isdefined (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushnumber (int *,int) ;
 scalar_t__ js_strictequal (int *) ;
 int js_tointeger (int *,int) ;

__attribute__((used)) static void Ap_lastIndexOf(js_State *J)
{
 int k, len, from;

 len = js_getlength(J, 0);
 from = js_isdefined(J, 2) ? js_tointeger(J, 2) : len - 1;
 if (from > len - 1) from = len - 1;
 if (from < 0) from = len + from;

 js_copy(J, 1);
 for (k = from; k >= 0; --k) {
  if (js_hasindex(J, 0, k)) {
   if (js_strictequal(J)) {
    js_pushnumber(J, k);
    return;
   }
   js_pop(J, 1);
  }
 }

 js_pushnumber(J, -1);
}
