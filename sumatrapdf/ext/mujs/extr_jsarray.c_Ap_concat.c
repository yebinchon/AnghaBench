
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_copy (int *,int) ;
 int js_getlength (int *,int) ;
 int js_gettop (int *) ;
 scalar_t__ js_hasindex (int *,int,int) ;
 scalar_t__ js_isarray (int *,int) ;
 int js_newarray (int *) ;
 int js_pop (int *,int) ;
 int js_setindex (int *,int,int ) ;

__attribute__((used)) static void Ap_concat(js_State *J)
{
 int i, top = js_gettop(J);
 int n, k, len;

 js_newarray(J);
 n = 0;

 for (i = 0; i < top; ++i) {
  js_copy(J, i);
  if (js_isarray(J, -1)) {
   len = js_getlength(J, -1);
   for (k = 0; k < len; ++k)
    if (js_hasindex(J, -1, k))
     js_setindex(J, -3, n++);
   js_pop(J, 1);
  } else {
   js_setindex(J, -2, n++);
  }
 }
}
