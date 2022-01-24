#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_15__ ;
typedef  struct TYPE_27__   TYPE_11__ ;

/* Type definitions */
struct TYPE_29__ {int /*<<< orphan*/  aux; int /*<<< orphan*/  info; } ;
struct TYPE_30__ {TYPE_1__ s; } ;
struct TYPE_33__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_27__ {scalar_t__ k; } ;
struct TYPE_32__ {TYPE_11__ v; struct TYPE_32__* prev; } ;
struct TYPE_31__ {scalar_t__ level; TYPE_15__* fs; } ;
struct TYPE_28__ {scalar_t__ freereg; } ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ LHSVarList ;
typedef  TYPE_5__ ExpDesc ;
typedef  scalar_t__ BCReg ;

/* Variables and functions */
 scalar_t__ BC_VARG ; 
 int /*<<< orphan*/  LJ_ERR_XSYNTAX ; 
 int /*<<< orphan*/  LJ_MAX_XLEVEL ; 
 scalar_t__ VCALL ; 
 scalar_t__ VINDEXED ; 
 scalar_t__ VLOCAL ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VRELOCABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__,scalar_t__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*,TYPE_11__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_15__*,TYPE_11__*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_15__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_15__*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char) ; 
 scalar_t__ FUNC11 (TYPE_3__*,char) ; 

__attribute__((used)) static void FUNC12(LexState *ls, LHSVarList *lh, BCReg nvars)
{
  ExpDesc e;
  FUNC5(ls, VLOCAL <= lh->v.k && lh->v.k <= VINDEXED, LJ_ERR_XSYNTAX);
  if (FUNC11(ls, ',')) {  /* Collect LHS list and recurse upwards. */
    LHSVarList vl;
    vl.prev = lh;
    FUNC9(ls, &vl.v);
    if (vl.v.k == VLOCAL)
      FUNC1(ls, lh, &vl.v);
    FUNC6(ls->fs, ls->level + nvars, LJ_MAX_XLEVEL, "variable names");
    FUNC12(ls, &vl, nvars+1);
  } else {  /* Parse RHS. */
    BCReg nexps;
    FUNC10(ls, '=');
    nexps = FUNC8(ls, &e);
    if (nexps == nvars) {
      if (e.k == VCALL) {
	if (FUNC2(*FUNC4(ls->fs, &e)) == BC_VARG) {  /* Vararg assignment. */
	  ls->fs->freereg--;
	  e.k = VRELOCABLE;
	} else {  /* Multiple call results. */
	  e.u.s.info = e.u.s.aux;  /* Base of call is not relocatable. */
	  e.k = VNONRELOC;
	}
      }
      FUNC3(ls->fs, &lh->v, &e);
      return;
    }
    FUNC0(ls, nvars, nexps, &e);
    if (nexps > nvars)
      ls->fs->freereg -= nexps - nvars;  /* Drop leftover regs. */
  }
  /* Assign RHS to LHS and recurse downwards. */
  FUNC7(&e, VNONRELOC, ls->fs->freereg-1);
  FUNC3(ls->fs, &lh->v, &e);
}