#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  grayagain; } ;
struct TYPE_4__ {int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  MCLabel ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_Z ; 
 int /*<<< orphan*/  GCtab ; 
 int /*<<< orphan*/  LJ_GC_BLACK ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_ARITHib ; 
 int /*<<< orphan*/  XO_GROUP3b ; 
 int /*<<< orphan*/  XOg_AND ; 
 int /*<<< orphan*/  XOg_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ gc ; 
 int /*<<< orphan*/  gclist ; 
 int /*<<< orphan*/  marked ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(ASMState *as, IRIns *ir)
{
  Reg tab = FUNC8(as, ir->op1, RSET_GPR);
  Reg tmp = FUNC9(as, FUNC10(RSET_GPR, tab));
  MCLabel l_end = FUNC2(as);
  FUNC3(as, tmp, tab, FUNC7(GCtab, gclist));
  FUNC5(as, tab, gc.grayagain);
  FUNC0(as, tmp, gc.grayagain);
  FUNC1(as, ~LJ_GC_BLACK);
  FUNC4(as, XO_ARITHib, XOg_AND, tab, FUNC7(GCtab, marked));
  FUNC6(as, CC_Z, l_end);
  FUNC1(as, LJ_GC_BLACK);
  FUNC4(as, XO_GROUP3b, XOg_TEST, tab, FUNC7(GCtab, marked));
}