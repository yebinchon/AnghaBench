
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ k; } ;
struct LHS_assign {TYPE_5__ v; struct LHS_assign* prev; } ;
typedef int expdesc ;
struct TYPE_20__ {scalar_t__ freereg; } ;
struct TYPE_18__ {TYPE_6__* fs; TYPE_1__* L; } ;
struct TYPE_17__ {scalar_t__ nCcalls; } ;
typedef TYPE_2__ LexState ;


 int LUAI_MAXCCALLS ;
 scalar_t__ VINDEXED ;
 int VNONRELOC ;
 int adjust_assign (TYPE_2__*,int,int,int *) ;
 int check_condition (TYPE_2__*,int ,char*) ;
 int check_conflict (TYPE_2__*,struct LHS_assign*,TYPE_5__*) ;
 int checklimit (TYPE_6__*,scalar_t__,int ,char*) ;
 int checknext (TYPE_2__*,char) ;
 int explist (TYPE_2__*,int *) ;
 int init_exp (int *,int ,scalar_t__) ;
 int luaK_setoneret (TYPE_6__*,int *) ;
 int luaK_storevar (TYPE_6__*,TYPE_5__*,int *) ;
 int suffixedexp (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ testnext (TYPE_2__*,char) ;
 int vkisvar (scalar_t__) ;

__attribute__((used)) static void assignment (LexState *ls, struct LHS_assign *lh, int nvars) {
  expdesc e;
  check_condition(ls, vkisvar(lh->v.k), "syntax error");
  if (testnext(ls, ',')) {
    struct LHS_assign nv;
    nv.prev = lh;
    suffixedexp(ls, &nv.v);
    if (nv.v.k != VINDEXED)
      check_conflict(ls, lh, &nv.v);
    checklimit(ls->fs, nvars + ls->L->nCcalls, LUAI_MAXCCALLS,
                    "C levels");
    assignment(ls, &nv, nvars+1);
  }
  else {
    int nexps;
    checknext(ls, '=');
    nexps = explist(ls, &e);
    if (nexps != nvars) {
      adjust_assign(ls, nvars, nexps, &e);
      if (nexps > nvars)
        ls->fs->freereg -= nexps - nvars;
    }
    else {
      luaK_setoneret(ls->fs, &e);
      luaK_storevar(ls->fs, &lh->v, &e);
      return;
    }
  }
  init_exp(&e, VNONRELOC, ls->fs->freereg-1);
  luaK_storevar(ls->fs, &lh->v, &e);
}
