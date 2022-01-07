
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ l_mem ;
struct TYPE_4__ {scalar_t__ GCdebt; scalar_t__ totalbytes; } ;
typedef TYPE_1__ global_State ;


 scalar_t__ MAX_LMEM ;
 scalar_t__ gettotalbytes (TYPE_1__*) ;
 int lua_assert (int) ;

void luaE_setdebt (global_State *g, l_mem debt) {
  l_mem tb = gettotalbytes(g);
  lua_assert(tb > 0);
  if (debt < tb - MAX_LMEM)
    debt = tb - MAX_LMEM;
  g->totalbytes = tb - debt;
  g->GCdebt = debt;
}
