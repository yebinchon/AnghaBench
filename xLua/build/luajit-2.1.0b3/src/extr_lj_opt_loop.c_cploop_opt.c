
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_CFunction ;
typedef int TValue ;
typedef int LoopState ;


 int UNUSED (int *) ;
 int loop_unroll (int *) ;

__attribute__((used)) static TValue *cploop_opt(lua_State *L, lua_CFunction dummy, void *ud)
{
  UNUSED(L); UNUSED(dummy);
  loop_unroll((LoopState *)ud);
  return ((void*)0);
}
