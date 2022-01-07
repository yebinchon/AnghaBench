
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_copy (int *,int) ;
 int js_delindex (int *,int ,int) ;
 int js_getlength (int *,int ) ;
 int js_gettop (int *) ;
 scalar_t__ js_hasindex (int *,int ,int) ;
 int js_pushnumber (int *,int) ;
 int js_setindex (int *,int ,int) ;
 int js_setlength (int *,int ,int) ;

__attribute__((used)) static void Ap_unshift(js_State *J)
{
 int i, top = js_gettop(J);
 int k, len;

 len = js_getlength(J, 0);

 for (k = len; k > 0; --k) {
  int from = k - 1;
  int to = k + top - 2;
  if (js_hasindex(J, 0, from))
   js_setindex(J, 0, to);
  else
   js_delindex(J, 0, to);
 }

 for (i = 1; i < top; ++i) {
  js_copy(J, i);
  js_setindex(J, 0, i - 1);
 }

 js_setlength(J, 0, len + top - 1);

 js_pushnumber(J, len + top - 1);
}
