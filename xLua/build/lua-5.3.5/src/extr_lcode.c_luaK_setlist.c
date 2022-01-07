
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int freereg; int ls; } ;
typedef TYPE_1__ FuncState ;


 int LFIELDS_PER_FLUSH ;
 int LUA_MULTRET ;
 int MAXARG_Ax ;
 int MAXARG_C ;
 int OP_SETLIST ;
 int codeextraarg (TYPE_1__*,int) ;
 int luaK_codeABC (TYPE_1__*,int ,int,int,int) ;
 int luaX_syntaxerror (int ,char*) ;
 int lua_assert (int) ;

void luaK_setlist (FuncState *fs, int base, int nelems, int tostore) {
  int c = (nelems - 1)/LFIELDS_PER_FLUSH + 1;
  int b = (tostore == LUA_MULTRET) ? 0 : tostore;
  lua_assert(tostore != 0 && tostore <= LFIELDS_PER_FLUSH);
  if (c <= MAXARG_C)
    luaK_codeABC(fs, OP_SETLIST, base, b, c);
  else if (c <= MAXARG_Ax) {
    luaK_codeABC(fs, OP_SETLIST, base, b, 0);
    codeextraarg(fs, c);
  }
  else
    luaX_syntaxerror(fs->ls, "constructor too long");
  fs->freereg = base + 1;
}
