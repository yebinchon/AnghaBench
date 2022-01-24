#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_15__ {int /*<<< orphan*/  J; } ;
struct TYPE_14__ {int r; } ;
struct TYPE_13__ {int /*<<< orphan*/  jit_base; } ;
typedef  scalar_t__ RegSet ;
typedef  int Reg ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ExitNo ;
typedef  int BCReg ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_B ; 
 TYPE_12__* FUNC0 (int /*<<< orphan*/ ) ; 
 int REX_64 ; 
 int REX_GC64 ; 
 int RID_BASE ; 
 int RID_DISPATCH ; 
 int RID_EAX ; 
 int RID_ESP ; 
 int RID_NONE ; 
 scalar_t__ RSET_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVto ; 
 int /*<<< orphan*/  XOg_CMP ; 
 int /*<<< orphan*/  XOg_SUB ; 
 int /*<<< orphan*/  cur_L ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lua_State ; 
 int /*<<< orphan*/  maxstack ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int FUNC14 (scalar_t__) ; 

__attribute__((used)) static void FUNC15(ASMState *as, BCReg topslot,
			    IRIns *irp, RegSet allow, ExitNo exitno)
{
  /* Try to get an unused temp. register, otherwise spill/restore eax. */
  Reg pbase = irp ? irp->r : RID_BASE;
  Reg r = allow ? FUNC14(allow) : RID_EAX;
  FUNC6(as, CC_B, FUNC9(as->J, exitno));
  if (allow == RSET_EMPTY)  /* Restore temp. register. */
    FUNC7(as, XO_MOV, r|REX_64, RID_ESP, 0);
  else
    FUNC13(as, r);
  FUNC5(as, FUNC1(XOg_CMP), r|REX_GC64, (int32_t)(8*topslot));
  if (FUNC12(pbase) && pbase != r)
    FUNC8(as, FUNC2(XOg_SUB), r|REX_GC64, pbase);
  else
#if LJ_GC64
    emit_rmro(as, XO_ARITH(XOg_SUB), r|REX_64, RID_DISPATCH,
	      (int32_t)dispofs(as, &J2G(as->J)->jit_base));
#else
    FUNC7(as, FUNC2(XOg_SUB), r, RID_NONE,
	      FUNC11(&FUNC0(as->J)->jit_base));
#endif
  FUNC7(as, XO_MOV, r|REX_GC64, r, FUNC10(lua_State, maxstack));
  FUNC4(as, r, cur_L);
  if (allow == RSET_EMPTY)  /* Spill temp. register. */
    FUNC7(as, XO_MOVto, r|REX_64, RID_ESP, 0);
}