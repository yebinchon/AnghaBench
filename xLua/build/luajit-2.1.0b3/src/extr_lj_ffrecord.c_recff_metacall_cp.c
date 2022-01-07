
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_CFunction ;
typedef int jit_State ;
typedef int TValue ;


 int UNUSED (int *) ;
 int lj_record_tailcall (int *,int ,int) ;

__attribute__((used)) static TValue *recff_metacall_cp(lua_State *L, lua_CFunction dummy, void *ud)
{
  jit_State *J = (jit_State *)ud;
  lj_record_tailcall(J, 0, 1);
  UNUSED(L); UNUSED(dummy);
  return ((void*)0);
}
