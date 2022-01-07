
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ slot; size_t startpc; int name; } ;
typedef TYPE_2__ VarInfo ;
struct TYPE_20__ {TYPE_1__* bcbase; } ;
struct TYPE_19__ {int name; } ;
struct TYPE_18__ {int vstart; } ;
struct TYPE_17__ {TYPE_7__* fs; int linenumber; TYPE_2__* vstack; } ;
struct TYPE_15__ {int line; } ;
typedef int MSize ;
typedef TYPE_3__ LexState ;
typedef int GCstr ;
typedef TYPE_4__ FuncScope ;


 int LJ_ERR_XGSCOPE ;
 int * NAME_BREAK ;
 uintptr_t VARNAME__MAX ;
 scalar_t__ gcrefeq (int ,int ) ;
 scalar_t__ gola_isgoto (TYPE_2__*) ;
 int gola_patch (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 int lj_lex_error (TYPE_3__*,int ,int ,int ,int ) ;
 int lua_assert (int) ;
 int strdata (int *) ;
 int * strref (int ) ;
 TYPE_5__ var_get (TYPE_3__*,TYPE_7__*,scalar_t__) ;

__attribute__((used)) static void gola_resolve(LexState *ls, FuncScope *bl, MSize idx)
{
  VarInfo *vg = ls->vstack + bl->vstart;
  VarInfo *vl = ls->vstack + idx;
  for (; vg < vl; vg++)
    if (gcrefeq(vg->name, vl->name) && gola_isgoto(vg)) {
      if (vg->slot < vl->slot) {
 GCstr *name = strref(var_get(ls, ls->fs, vg->slot).name);
 lua_assert((uintptr_t)name >= VARNAME__MAX);
 ls->linenumber = ls->fs->bcbase[vg->startpc].line;
 lua_assert(strref(vg->name) != NAME_BREAK);
 lj_lex_error(ls, 0, LJ_ERR_XGSCOPE,
       strdata(strref(vg->name)), strdata(name));
      }
      gola_patch(ls, vg, vl);
    }
}
