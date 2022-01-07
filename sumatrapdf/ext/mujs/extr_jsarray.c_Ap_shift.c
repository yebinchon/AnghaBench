
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_delindex (int *,int ,int) ;
 int js_getindex (int *,int ,int ) ;
 int js_getlength (int *,int ) ;
 scalar_t__ js_hasindex (int *,int ,int) ;
 int js_pushundefined (int *) ;
 int js_setindex (int *,int ,int) ;
 int js_setlength (int *,int ,int) ;

__attribute__((used)) static void Ap_shift(js_State *J)
{
 int k, len;

 len = js_getlength(J, 0);

 if (len == 0) {
  js_setlength(J, 0, 0);
  js_pushundefined(J);
  return;
 }

 js_getindex(J, 0, 0);

 for (k = 1; k < len; ++k) {
  if (js_hasindex(J, 0, k))
   js_setindex(J, 0, k - 1);
  else
   js_delindex(J, 0, k - 1);
 }

 js_delindex(J, 0, len - 1);
 js_setlength(J, 0, len - 1);
}
