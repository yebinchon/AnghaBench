
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ nactvar; int flags; struct TYPE_14__* prev; } ;
struct TYPE_13__ {scalar_t__ freereg; scalar_t__ nactvar; int pc; TYPE_3__* bl; TYPE_1__* ls; } ;
struct TYPE_12__ {int vtop; } ;
typedef int MSize ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;
typedef TYPE_3__ FuncScope ;


 int BC_UCLO ;
 int FSCOPE_BREAK ;
 int FSCOPE_GOLA ;
 int FSCOPE_LOOP ;
 int FSCOPE_NOCLOSE ;
 int FSCOPE_UPVAL ;
 int NAME_BREAK ;
 int VSTACK_LABEL ;
 int bcemit_AJ (TYPE_2__*,int ,scalar_t__,int ) ;
 int gola_fixup (TYPE_1__*,TYPE_3__*) ;
 int gola_new (TYPE_1__*,int ,int ,int ) ;
 int gola_resolve (TYPE_1__*,TYPE_3__*,int ) ;
 int lua_assert (int) ;
 int var_remove (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void fscope_end(FuncState *fs)
{
  FuncScope *bl = fs->bl;
  LexState *ls = fs->ls;
  fs->bl = bl->prev;
  var_remove(ls, bl->nactvar);
  fs->freereg = fs->nactvar;
  lua_assert(bl->nactvar == fs->nactvar);
  if ((bl->flags & (FSCOPE_UPVAL|FSCOPE_NOCLOSE)) == FSCOPE_UPVAL)
    bcemit_AJ(fs, BC_UCLO, bl->nactvar, 0);
  if ((bl->flags & FSCOPE_BREAK)) {
    if ((bl->flags & FSCOPE_LOOP)) {
      MSize idx = gola_new(ls, NAME_BREAK, VSTACK_LABEL, fs->pc);
      ls->vtop = idx;
      gola_resolve(ls, bl, idx);
    } else {
      gola_fixup(ls, bl);
      return;
    }
  }
  if ((bl->flags & FSCOPE_GOLA)) {
    gola_fixup(ls, bl);
  }
}
