
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_call (int *,int) ;
 int js_copy (int *,int) ;
 int js_gettop (int *) ;
 int js_iscallable (int *,int ) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Fp_call(js_State *J)
{
 int i, top = js_gettop(J);

 if (!js_iscallable(J, 0))
  js_typeerror(J, "not a function");

 for (i = 0; i < top; ++i)
  js_copy(J, i);

 js_call(J, top - 2);
}
