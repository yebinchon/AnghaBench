#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  iEphCsr; } ;
typedef  TYPE_1__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_IfPos ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC9(
  Parse *pParse,
  Window *pMWin,                  /* List of window functions */
  int regCtr,                     /* Register containing number of rows */
  int regGosub,                   /* Register for Gosub addrGosub */
  int addrGosub,                  /* Address of sub-routine for ReturnOneRow */
  int regInvArg,                  /* Array of registers for xInverse args */
  int regInvSize                  /* Register containing size of partition */
){
  int addr;
  Vdbe *v = FUNC1(pParse);
  FUNC6(pParse, pMWin, 0);
  addr = FUNC3(v, OP_IfPos, regCtr, FUNC4(v)+2 ,1);
  FUNC0(v);
  FUNC2(v, OP_Goto, 0, 0);
  FUNC8(pParse, pMWin, regGosub, addrGosub);
  if( regInvArg ){
    FUNC7(pParse, pMWin, pMWin->iEphCsr, 1, regInvArg, regInvSize);
  }
  FUNC2(v, OP_Next, pMWin->iEphCsr, addr);
  FUNC0(v);
  FUNC5(v, addr+1);   /* The OP_Goto */
}