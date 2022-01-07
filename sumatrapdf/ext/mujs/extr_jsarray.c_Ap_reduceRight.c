
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
 int js_pushnumber (int *,int) ;
 int js_pushundefined (int *) ;
 int js_rot (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Ap_reduceRight(js_State *J)
{
 int hasinitial = js_gettop(J) >= 3;
 int k, len;

 if (!js_iscallable(J, 1))
  js_typeerror(J, "callback is not a function");

 len = js_getlength(J, 0);
 k = len - 1;

 if (len == 0 && !hasinitial)
  js_typeerror(J, "no initial value");


 if (hasinitial)
  js_copy(J, 2);
 else {
  while (k >= 0)
   if (js_hasindex(J, 0, k--))
    break;
  if (k < 0)
   js_typeerror(J, "no initial value");
 }

 while (k >= 0) {
  if (js_hasindex(J, 0, k)) {
   js_copy(J, 1);
   js_pushundefined(J);
   js_rot(J, 4);
   js_rot(J, 4);
   js_pushnumber(J, k);
   js_copy(J, 0);
   js_call(J, 4);
  }
  --k;
 }


}
