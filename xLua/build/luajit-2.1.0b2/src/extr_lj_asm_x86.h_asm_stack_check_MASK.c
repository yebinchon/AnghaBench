#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_14__ {int /*<<< orphan*/  J; } ;
struct TYPE_13__ {int r; } ;
struct TYPE_12__ {int /*<<< orphan*/  jit_base; } ;
typedef  scalar_t__ RegSet ;
typedef  int Reg ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ExitNo ;
typedef  int BCReg ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_B ; 
 TYPE_11__* FUNC0 (int /*<<< orphan*/ ) ; 
 int REX_64 ; 
 int RID_BASE ; 
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
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lua_State ; 
 int /*<<< orphan*/  maxstack ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int FUNC13 (scalar_t__) ; 

__attribute__((used)) static void FUNC14(ASMState *as, BCReg topslot,
			    IRIns *irp, RegSet allow, ExitNo exitno)
{
  /* Try to get an unused temp. register, otherwise spill/restore eax. */
  Reg pbase = irp ? irp->r : RID_BASE;
  Reg r = allow ? FUNC13(allow) : RID_EAX;
  FUNC5(as, CC_B, FUNC8(as->J, exitno));
  if (allow == RSET_EMPTY)  /* Restore temp. register. */
    FUNC6(as, XO_MOV, r|REX_64, RID_ESP, 0);
  else
    FUNC12(as, r);
  FUNC4(as, FUNC1(XOg_CMP), r, (int32_t)(8*topslot));
  if (FUNC11(pbase) && pbase != r)
    FUNC7(as, FUNC2(XOg_SUB), r, pbase);
  else
    FUNC6(as, FUNC2(XOg_SUB), r, RID_NONE,
	      FUNC10(&FUNC0(as->J)->jit_base));
  FUNC6(as, XO_MOV, r, r, FUNC9(lua_State, maxstack));
  FUNC3(as, r, cur_L);
  if (allow == RSET_EMPTY)  /* Spill temp. register. */
    FUNC6(as, XO_MOVto, r|REX_64, RID_ESP, 0);
}