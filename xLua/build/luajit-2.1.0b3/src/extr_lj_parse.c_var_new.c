
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {size_t nactvar; scalar_t__* varmap; int kt; } ;
struct TYPE_7__ {size_t vtop; size_t sizevstack; TYPE_4__* vstack; int L; TYPE_2__* fs; } ;
typedef size_t MSize ;
typedef TYPE_1__ LexState ;
typedef int GCstr ;
typedef TYPE_2__ FuncState ;
typedef size_t BCReg ;


 int LJ_ERR_XLIMC ;
 int LJ_MAX_LOCVAR ;
 scalar_t__ LJ_MAX_VSTACK ;
 scalar_t__ LJ_UNLIKELY (int) ;
 uintptr_t VARNAME__MAX ;
 int VarInfo ;
 int checklimit (TYPE_2__*,size_t,int ,char*) ;
 int lj_lex_error (TYPE_1__*,int ,int ,scalar_t__) ;
 int lj_mem_growvec (int ,TYPE_4__*,scalar_t__,scalar_t__,int ) ;
 int * lj_tab_getstr (int ,int *) ;
 int lua_assert (int) ;
 int obj2gco (int *) ;
 int setgcref (int ,int ) ;

__attribute__((used)) static void var_new(LexState *ls, BCReg n, GCstr *name)
{
  FuncState *fs = ls->fs;
  MSize vtop = ls->vtop;
  checklimit(fs, fs->nactvar+n, LJ_MAX_LOCVAR, "local variables");
  if (LJ_UNLIKELY(vtop >= ls->sizevstack)) {
    if (ls->sizevstack >= LJ_MAX_VSTACK)
      lj_lex_error(ls, 0, LJ_ERR_XLIMC, LJ_MAX_VSTACK);
    lj_mem_growvec(ls->L, ls->vstack, ls->sizevstack, LJ_MAX_VSTACK, VarInfo);
  }
  lua_assert((uintptr_t)name < VARNAME__MAX ||
      lj_tab_getstr(fs->kt, name) != ((void*)0));

  setgcref(ls->vstack[vtop].name, obj2gco(name));
  fs->varmap[fs->nactvar+n] = (uint16_t)vtop;
  ls->vtop = vtop+1;
}
