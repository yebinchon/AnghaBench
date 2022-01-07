
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
 int js_newarray (int *) ;
 int js_setindex (int *,int,int) ;
 int js_setlength (int *,int,int) ;
 double js_tointeger (int *,int) ;

__attribute__((used)) static void Ap_splice(js_State *J)
{
 int top = js_gettop(J);
 int len, start, del, add, k;
 double f;

 js_newarray(J);

 len = js_getlength(J, 0);

 f = js_tointeger(J, 1);
 if (f < 0) f = f + len;
 start = f < 0 ? 0 : f > len ? len : f;

 f = js_tointeger(J, 2);
 del = f < 0 ? 0 : f > len - start ? len - start : f;


 for (k = 0; k < del; ++k)
  if (js_hasindex(J, 0, start + k))
   js_setindex(J, -2, k);
 js_setlength(J, -1, del);


 add = top - 3;
 if (add < del) {
  for (k = start; k < len - del; ++k) {
   if (js_hasindex(J, 0, k + del))
    js_setindex(J, 0, k + add);
   else
    js_delindex(J, 0, k + add);
  }
  for (k = len; k > len - del + add; --k)
   js_delindex(J, 0, k - 1);
 } else if (add > del) {
  for (k = len - del; k > start; --k) {
   if (js_hasindex(J, 0, k + del - 1))
    js_setindex(J, 0, k + add - 1);
   else
    js_delindex(J, 0, k + add - 1);
  }
 }


 for (k = 0; k < add; ++k) {
  js_copy(J, 3 + k);
  js_setindex(J, 0, start + k);
 }

 js_setlength(J, 0, len - del + add);
}
