
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int * lua_CFunction ;
struct TYPE_3__ {scalar_t__ maxslot; } ;
typedef TYPE_1__ jit_State ;
typedef int TValue ;


 int UNUSED (int *) ;
 int lj_record_call (TYPE_1__*,int,scalar_t__) ;

__attribute__((used)) static TValue *recff_xpcall_cp(lua_State *L, lua_CFunction dummy, void *ud)
{
  jit_State *J = (jit_State *)ud;
  lj_record_call(J, 1, J->maxslot - 2);
  UNUSED(L); UNUSED(dummy);
  return ((void*)0);
}
