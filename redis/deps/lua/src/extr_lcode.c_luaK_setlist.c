
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int freereg; TYPE_1__* ls; } ;
struct TYPE_6__ {int lastline; } ;
typedef TYPE_2__ FuncState ;


 int Instruction ;
 int LFIELDS_PER_FLUSH ;
 int LUA_MULTRET ;
 int MAXARG_C ;
 int OP_SETLIST ;
 int cast (int ,int) ;
 int luaK_code (TYPE_2__*,int ,int ) ;
 int luaK_codeABC (TYPE_2__*,int ,int,int,int) ;
 int lua_assert (int) ;

void luaK_setlist (FuncState *fs, int base, int nelems, int tostore) {
  int c = (nelems - 1)/LFIELDS_PER_FLUSH + 1;
  int b = (tostore == LUA_MULTRET) ? 0 : tostore;
  lua_assert(tostore != 0);
  if (c <= MAXARG_C)
    luaK_codeABC(fs, OP_SETLIST, base, b, c);
  else {
    luaK_codeABC(fs, OP_SETLIST, base, b, 0);
    luaK_code(fs, cast(Instruction, c), fs->ls->lastline);
  }
  fs->freereg = base + 1;
}
