#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_17__ {int /*<<< orphan*/  t; } ;
struct TYPE_16__ {scalar_t__ topslot; } ;
struct TYPE_15__ {int /*<<< orphan*/  op2; } ;
typedef  int Reg ;
typedef  TYPE_1__ IRIns ;
typedef  scalar_t__ BCReg ;
typedef  int /*<<< orphan*/  BCIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NE ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LJ_FR2 ; 
 int /*<<< orphan*/  REF_BASE ; 
 int REX_GC64 ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_CMP ; 
 int /*<<< orphan*/  XOg_CMP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jit_base ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 

__attribute__((used)) static void FUNC16(ASMState *as, IRIns *ir)
{
  Reg base = FUNC12(as, REF_BASE, RSET_GPR);
#if LJ_FR2
  Reg rpc = ra_scratch(as, rset_exclude(RSET_GPR, base));
#endif
  void *pc = FUNC9(FUNC0(ir->op2));
  int32_t delta = 1+LJ_FR2+FUNC3(*((const BCIns *)pc - 1));
  as->topslot -= (BCReg)delta;
  if ((int32_t)as->topslot < 0) as->topslot = 0;
  FUNC10(FUNC0(REF_BASE)->t);  /* Children must not coalesce with BASE reg. */
  FUNC8(as, base, jit_base);
  FUNC4(as, base, -8*delta);
  FUNC2(as, CC_NE);
#if LJ_FR2
  emit_rmro(as, XO_CMP, rpc|REX_GC64, base, -8);
  emit_loadu64(as, rpc, u64ptr(pc));
#else
  FUNC5(as, FUNC1(XOg_CMP), base, -4, FUNC11(pc));
#endif
}