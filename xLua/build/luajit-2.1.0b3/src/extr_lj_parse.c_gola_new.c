
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_8__ {void* info; void* slot; int startpc; int name; } ;
struct TYPE_7__ {scalar_t__ nactvar; int kt; } ;
struct TYPE_6__ {size_t vtop; size_t sizevstack; TYPE_3__* vstack; int L; TYPE_2__* fs; } ;
typedef size_t MSize ;
typedef TYPE_1__ LexState ;
typedef int GCstr ;
typedef TYPE_2__ FuncState ;
typedef int BCPos ;


 int LJ_ERR_XLIMC ;
 scalar_t__ LJ_MAX_VSTACK ;
 scalar_t__ LJ_UNLIKELY (int) ;
 int * NAME_BREAK ;
 int VarInfo ;
 int lj_lex_error (TYPE_1__*,int ,int ,scalar_t__) ;
 int lj_mem_growvec (int ,TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 int * lj_tab_getstr (int ,int *) ;
 int lua_assert (int) ;
 int obj2gco (int *) ;
 int setgcref (int ,int ) ;

__attribute__((used)) static MSize gola_new(LexState *ls, GCstr *name, uint8_t info, BCPos pc)
{
  FuncState *fs = ls->fs;
  MSize vtop = ls->vtop;
  if (LJ_UNLIKELY(vtop >= ls->sizevstack)) {
    if (ls->sizevstack >= LJ_MAX_VSTACK)
      lj_lex_error(ls, 0, LJ_ERR_XLIMC, LJ_MAX_VSTACK);
    lj_mem_growvec(ls->L, ls->vstack, ls->sizevstack, LJ_MAX_VSTACK, VarInfo);
  }
  lua_assert(name == NAME_BREAK || lj_tab_getstr(fs->kt, name) != ((void*)0));

  setgcref(ls->vstack[vtop].name, obj2gco(name));
  ls->vstack[vtop].startpc = pc;
  ls->vstack[vtop].slot = (uint8_t)fs->nactvar;
  ls->vstack[vtop].info = info;
  ls->vtop = vtop+1;
  return vtop;
}
