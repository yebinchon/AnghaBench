
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_RegExp_prototype_exec (int *,int ,int ) ;
 int js_toregexp (int *,int ) ;
 int js_tostring (int *,int) ;

__attribute__((used)) static void Rp_exec(js_State *J)
{
 js_RegExp_prototype_exec(J, js_toregexp(J, 0), js_tostring(J, 1));
}
