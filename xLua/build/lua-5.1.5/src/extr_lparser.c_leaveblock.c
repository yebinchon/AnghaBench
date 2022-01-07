
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nactvar; int breaklist; scalar_t__ upval; int isbreakable; struct TYPE_7__* previous; } ;
struct TYPE_6__ {scalar_t__ nactvar; scalar_t__ freereg; int ls; TYPE_2__* bl; } ;
typedef TYPE_1__ FuncState ;
typedef TYPE_2__ BlockCnt ;


 int OP_CLOSE ;
 int luaK_codeABC (TYPE_1__*,int ,scalar_t__,int ,int ) ;
 int luaK_patchtohere (TYPE_1__*,int ) ;
 int lua_assert (int) ;
 int removevars (int ,scalar_t__) ;

__attribute__((used)) static void leaveblock (FuncState *fs) {
  BlockCnt *bl = fs->bl;
  fs->bl = bl->previous;
  removevars(fs->ls, bl->nactvar);
  if (bl->upval)
    luaK_codeABC(fs, OP_CLOSE, bl->nactvar, 0, 0);

  lua_assert(!bl->isbreakable || !bl->upval);
  lua_assert(bl->nactvar == fs->nactvar);
  fs->freereg = fs->nactvar;
  luaK_patchtohere(fs, bl->breaklist);
}
