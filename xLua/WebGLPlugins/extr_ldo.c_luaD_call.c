
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nCcalls; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 scalar_t__ LUAI_MAXCCALLS ;
 int luaD_precall (TYPE_1__*,int ,int) ;
 int luaV_execute (TYPE_1__*) ;
 int stackerror (TYPE_1__*) ;

void luaD_call (lua_State *L, StkId func, int nResults) {
  if (++L->nCcalls >= LUAI_MAXCCALLS)
    stackerror(L);
  if (!luaD_precall(L, func, nResults))
    luaV_execute(L);
  L->nCcalls--;
}
