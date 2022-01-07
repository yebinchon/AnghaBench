
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_delindex (int *,int ,int) ;
 int js_getindex (int *,int ,int) ;
 int js_getlength (int *,int ) ;
 int js_pushundefined (int *) ;
 int js_setlength (int *,int ,int) ;

__attribute__((used)) static void Ap_pop(js_State *J)
{
 int n;

 n = js_getlength(J, 0);

 if (n > 0) {
  js_getindex(J, 0, n - 1);
  js_delindex(J, 0, n - 1);
  js_setlength(J, 0, n - 1);
 } else {
  js_setlength(J, 0, 0);
  js_pushundefined(J);
 }
}
