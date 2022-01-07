
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pc; } ;
typedef TYPE_1__ FuncState ;


 int NO_REG ;
 int luaK_patchtohere (TYPE_1__*,int) ;
 int lua_assert (int) ;
 int patchlistaux (TYPE_1__*,int,int,int ,int) ;

void luaK_patchlist (FuncState *fs, int list, int target) {
  if (target == fs->pc)
    luaK_patchtohere(fs, list);
  else {
    lua_assert(target < fs->pc);
    patchlistaux(fs, list, target, NO_REG, target);
  }
}
