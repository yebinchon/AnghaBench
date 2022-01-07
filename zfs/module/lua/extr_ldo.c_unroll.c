
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ci; int base_ci; } ;
typedef TYPE_1__ lua_State ;


 int UNUSED (void*) ;
 int finishCcall (TYPE_1__*) ;
 int isLua (int *) ;
 int luaV_execute (TYPE_1__*) ;
 int luaV_finishOp (TYPE_1__*) ;

__attribute__((used)) static void unroll (lua_State *L, void *ud) {
  UNUSED(ud);
  for (;;) {
    if (L->ci == &L->base_ci)
      return;
    if (!isLua(L->ci))
      finishCcall(L);
    else {
      luaV_finishOp(L);
      luaV_execute(L);
    }
  }
}
