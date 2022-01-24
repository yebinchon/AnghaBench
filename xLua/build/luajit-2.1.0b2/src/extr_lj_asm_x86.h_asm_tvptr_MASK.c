#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  J; } ;
struct TYPE_16__ {int /*<<< orphan*/  t; int /*<<< orphan*/  i; } ;
struct TYPE_15__ {int /*<<< orphan*/  tmptv; } ;
typedef  int Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_13__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LJ_64 ; 
 int REX_64 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  RID_ESP ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(ASMState *as, Reg dest, IRRef ref)
{
  IRIns *ir = FUNC0(ref);
  if (FUNC10(ir->t)) {
    /* For numbers use the constant itself or a spill slot as a TValue. */
    if (FUNC8(ref))
      FUNC3(as, dest, FUNC7(ir));
    else
      FUNC6(as, XO_LEA, dest|REX_64, RID_ESP, FUNC14(as, ir));
  } else {
    /* Otherwise use g->tmptv to hold the TValue. */
    if (!FUNC8(ref)) {
      Reg src = FUNC13(as, ref, FUNC15(RSET_GPR, dest));
      FUNC5(as, FUNC2(ir, src), dest, 0);
    } else if (!FUNC11(ir->t)) {
      FUNC4(as, dest, 0, ir->i);
    }
    if (!(LJ_64 && FUNC9(ir->t)))
      FUNC4(as, dest, 4, FUNC12(ir->t));
    FUNC3(as, dest, &FUNC1(as->J)->tmptv);
  }
}