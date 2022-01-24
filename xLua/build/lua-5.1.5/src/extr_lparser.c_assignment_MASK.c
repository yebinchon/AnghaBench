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
 scalar_t__ LUAI_MAXCCALLS ; 
 scalar_t__ VINDEXED ; 
 scalar_t__ VLOCAL ; 
 int /*<<< orphan*/  VNONRELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct LHS_assign*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,char) ; 

__attribute__((used)) static void FUNC11 (LexState *ls, struct LHS_assign *lh, int nvars) {
  expdesc e;
  FUNC1(ls, VLOCAL <= lh->v.k && lh->v.k <= VINDEXED,
                      "syntax error");
  if (FUNC10(ls, ',')) {  /* assignment -> `,' primaryexp assignment */
    struct LHS_assign nv;
    nv.prev = lh;
    FUNC9(ls, &nv.v);
    if (nv.v.k == VLOCAL)
      FUNC2(ls, lh, &nv.v);
    FUNC8(ls->fs, nvars, LUAI_MAXCCALLS - ls->L->nCcalls,
                    "variables in assignment");
    FUNC11(ls, &nv, nvars+1);
  }
  else {  /* assignment -> `=' explist1 */
    int nexps;
    FUNC3(ls, '=');
    nexps = FUNC4(ls, &e);
    if (nexps != nvars) {
      FUNC0(ls, nvars, nexps, &e);
      if (nexps > nvars)
        ls->fs->freereg -= nexps - nvars;  /* remove extra values */
    }
    else {
      FUNC6(ls->fs, &e);  /* close last expression */
      FUNC7(ls->fs, &lh->v, &e);
      return;  /* avoid default */
    }
  }
  FUNC5(&e, VNONRELOC, ls->fs->freereg-1);  /* default assignment */
  FUNC7(ls->fs, &lh->v, &e);
}