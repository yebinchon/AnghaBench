#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ k; } ;
struct LHS_assign {TYPE_5__ v; struct LHS_assign* prev; } ;
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_20__ {scalar_t__ freereg; } ;
struct TYPE_18__ {TYPE_6__* fs; TYPE_1__* L; } ;
struct TYPE_17__ {scalar_t__ nCcalls; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  LUAI_MAXCCALLS ; 
 scalar_t__ VINDEXED ; 
 int /*<<< orphan*/  VNONRELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct LHS_assign*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void FUNC12 (LexState *ls, struct LHS_assign *lh, int nvars) {
  expdesc e;
  FUNC1(ls, FUNC11(lh->v.k), "syntax error");
  if (FUNC10(ls, ',')) {  /* assignment -> ',' suffixedexp assignment */
    struct LHS_assign nv;
    nv.prev = lh;
    FUNC9(ls, &nv.v);
    if (nv.v.k != VINDEXED)
      FUNC2(ls, lh, &nv.v);
    FUNC3(ls->fs, nvars + ls->L->nCcalls, LUAI_MAXCCALLS,
                    "C levels");
    FUNC12(ls, &nv, nvars+1);
  }
  else {  /* assignment -> `=' explist */
    int nexps;
    FUNC4(ls, '=');
    nexps = FUNC5(ls, &e);
    if (nexps != nvars) {
      FUNC0(ls, nvars, nexps, &e);
      if (nexps > nvars)
        ls->fs->freereg -= nexps - nvars;  /* remove extra values */
    }
    else {
      FUNC7(ls->fs, &e);  /* close last expression */
      FUNC8(ls->fs, &lh->v, &e);
      return;  /* avoid default */
    }
  }
  FUNC6(&e, VNONRELOC, ls->fs->freereg-1);  /* default assignment */
  FUNC8(ls->fs, &lh->v, &e);
}