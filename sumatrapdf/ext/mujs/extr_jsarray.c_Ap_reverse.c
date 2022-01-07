
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_copy (int *,int ) ;
 int js_delindex (int *,int ,int) ;
 int js_getlength (int *,int ) ;
 int js_hasindex (int *,int ,int) ;
 int js_setindex (int *,int ,int) ;

__attribute__((used)) static void Ap_reverse(js_State *J)
{
 int len, middle, lower;

 len = js_getlength(J, 0);
 middle = len / 2;
 lower = 0;

 while (lower != middle) {
  int upper = len - lower - 1;
  int haslower = js_hasindex(J, 0, lower);
  int hasupper = js_hasindex(J, 0, upper);
  if (haslower && hasupper) {
   js_setindex(J, 0, lower);
   js_setindex(J, 0, upper);
  } else if (hasupper) {
   js_setindex(J, 0, lower);
   js_delindex(J, 0, upper);
  } else if (haslower) {
   js_setindex(J, 0, upper);
   js_delindex(J, 0, lower);
  }
  ++lower;
 }

 js_copy(J, 0);
}
