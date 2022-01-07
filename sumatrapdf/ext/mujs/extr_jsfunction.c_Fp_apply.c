
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 int js_getindex (int *,int,int) ;
 int js_getlength (int *,int) ;
 int js_iscallable (int *,int ) ;
 scalar_t__ js_isnull (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Fp_apply(js_State *J)
{
 int i, n;

 if (!js_iscallable(J, 0))
  js_typeerror(J, "not a function");

 js_copy(J, 0);
 js_copy(J, 1);

 if (js_isnull(J, 2) || js_isundefined(J, 2)) {
  n = 0;
 } else {
  n = js_getlength(J, 2);
  for (i = 0; i < n; ++i)
   js_getindex(J, 2, i);
 }

 js_call(J, n);
}
