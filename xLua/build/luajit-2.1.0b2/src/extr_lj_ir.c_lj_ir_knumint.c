
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int jit_State ;
typedef int int32_t ;
typedef int TRef ;


 int lj_ir_kint (int *,int ) ;
 int lj_ir_knum (int *,int ) ;
 scalar_t__ numistrueint (int ,int *) ;

TRef lj_ir_knumint(jit_State *J, lua_Number n)
{
  int32_t k;
  if (numistrueint(n, &k))
    return lj_ir_kint(J, k);
  else
    return lj_ir_knum(J, n);
}
