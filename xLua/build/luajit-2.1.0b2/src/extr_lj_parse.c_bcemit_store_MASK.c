#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_27__ {size_t aux; int info; } ;
struct TYPE_28__ {TYPE_3__ s; } ;
struct TYPE_30__ {scalar_t__ k; TYPE_4__ u; } ;
struct TYPE_29__ {int nactvar; TYPE_2__* ls; } ;
struct TYPE_26__ {TYPE_1__* vstack; } ;
struct TYPE_25__ {int /*<<< orphan*/  info; } ;
typedef  TYPE_5__ FuncState ;
typedef  TYPE_6__ ExpDesc ;
typedef  int BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int BCMAX_C ; 
 int /*<<< orphan*/  BC_GSET ; 
 int /*<<< orphan*/  BC_TSETB ; 
 int /*<<< orphan*/  BC_TSETS ; 
 int /*<<< orphan*/  BC_TSETV ; 
 int /*<<< orphan*/  BC_USETN ; 
 int /*<<< orphan*/  BC_USETP ; 
 int /*<<< orphan*/  BC_USETS ; 
 int /*<<< orphan*/  BC_USETV ; 
 scalar_t__ VGLOBAL ; 
 scalar_t__ VINDEXED ; 
 scalar_t__ VKNUM ; 
 scalar_t__ VKSTR ; 
 scalar_t__ VKTRUE ; 
 scalar_t__ VLOCAL ; 
 scalar_t__ VNONRELOC ; 
 int /*<<< orphan*/  VSTACK_VAR_RW ; 
 scalar_t__ VUPVAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int FUNC4 (TYPE_5__*,TYPE_6__*) ; 
 int FUNC5 (TYPE_6__*) ; 
 int FUNC6 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_6__*) ; 
 int FUNC8 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(FuncState *fs, ExpDesc *var, ExpDesc *e)
{
  BCIns ins;
  if (var->k == VLOCAL) {
    fs->ls->vstack[var->u.s.aux].info |= VSTACK_VAR_RW;
    FUNC7(fs, e);
    FUNC9(fs, e, var->u.s.info);
    return;
  } else if (var->k == VUPVAL) {
    fs->ls->vstack[var->u.s.aux].info |= VSTACK_VAR_RW;
    FUNC10(fs, e);
    if (e->k <= VKTRUE)
      ins = FUNC1(BC_USETP, var->u.s.info, FUNC5(e));
    else if (e->k == VKSTR)
      ins = FUNC1(BC_USETS, var->u.s.info, FUNC6(fs, e));
    else if (e->k == VKNUM)
      ins = FUNC1(BC_USETN, var->u.s.info, FUNC4(fs, e));
    else
      ins = FUNC1(BC_USETV, var->u.s.info, FUNC8(fs, e));
  } else if (var->k == VGLOBAL) {
    BCReg ra = FUNC8(fs, e);
    ins = FUNC1(BC_GSET, ra, FUNC6(fs, var));
  } else {
    BCReg ra, rc;
    FUNC11(var->k == VINDEXED);
    ra = FUNC8(fs, e);
    rc = var->u.s.aux;
    if ((int32_t)rc < 0) {
      ins = FUNC0(BC_TSETS, ra, var->u.s.info, ~rc);
    } else if (rc > BCMAX_C) {
      ins = FUNC0(BC_TSETB, ra, var->u.s.info, rc-(BCMAX_C+1));
    } else {
      /* Free late alloced key reg to avoid assert on free of value reg. */
      /* This can only happen when called from expr_table(). */
      FUNC11(e->k != VNONRELOC || ra < fs->nactvar ||
		 rc < ra || (FUNC3(fs, rc),1));
      ins = FUNC0(BC_TSETV, ra, var->u.s.info, rc);
    }
  }
  FUNC2(fs, ins);
  FUNC7(fs, e);
}