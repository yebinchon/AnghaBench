
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 int js_getlength (int *,int ) ;
 int js_gettop (int *) ;
 scalar_t__ js_hasindex (int *,int ,int) ;
 int js_iscallable (int *,int) ;
 int js_newarray (int *) ;
 int js_pop (int *,int) ;
 int js_pushnumber (int *,int) ;
 int js_pushundefined (int *) ;
 int js_setindex (int *,int,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Ap_map(js_State *J)
{
 int hasthis = js_gettop(J) >= 3;
 int k, len;

 if (!js_iscallable(J, 1))
  js_typeerror(J, "callback is not a function");

 js_newarray(J);

 len = js_getlength(J, 0);
 for (k = 0; k < len; ++k) {
  if (js_hasindex(J, 0, k)) {
   js_copy(J, 1);
   if (hasthis)
    js_copy(J, 2);
   else
    js_pushundefined(J);
   js_copy(J, -3);
   js_pushnumber(J, k);
   js_copy(J, 0);
   js_call(J, 3);
   js_setindex(J, -3, k);
   js_pop(J, 1);
  }
 }
}
