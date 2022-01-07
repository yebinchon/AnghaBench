
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int JS_DONTCONF ;
 int JS_DONTENUM ;
 int JS_READONLY ;
 int callbound ;
 int constructbound ;
 int js_copy (int *,int) ;
 int js_defproperty (int *,int,char*,int) ;
 int js_getlength (int *,int ) ;
 int js_getproperty (int *,int ,char*) ;
 int js_gettop (int *) ;
 int js_iscallable (int *,int ) ;
 int js_newarray (int *) ;
 int js_newcconstructor (int *,int ,int ,char*,int) ;
 int js_setindex (int *,int,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Fp_bind(js_State *J)
{
 int i, top = js_gettop(J);
 int n;

 if (!js_iscallable(J, 0))
  js_typeerror(J, "not a function");

 n = js_getlength(J, 0);
 if (n > top - 2)
  n -= top - 2;
 else
  n = 0;


 js_getproperty(J, 0, "prototype");
 js_newcconstructor(J, callbound, constructbound, "[bind]", n);


 js_copy(J, 0);
 js_defproperty(J, -2, "__TargetFunction__", JS_READONLY | JS_DONTENUM | JS_DONTCONF);


 js_copy(J, 1);
 js_defproperty(J, -2, "__BoundThis__", JS_READONLY | JS_DONTENUM | JS_DONTCONF);


 js_newarray(J);
 for (i = 2; i < top; ++i) {
  js_copy(J, i);
  js_setindex(J, -2, i - 2);
 }
 js_defproperty(J, -2, "__BoundArguments__", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
}
