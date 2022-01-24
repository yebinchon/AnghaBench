#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  t; } ;
typedef  scalar_t__ Reg ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ RID_MAX_GPR ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVSD ; 
 int /*<<< orphan*/  XO_MOVSS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ASMState *as, IRIns *ir, Reg r, Reg base, int32_t ofs)
{
  if (r < RID_MAX_GPR)
    FUNC1(as, XO_MOV, FUNC0(ir, r), base, ofs);
  else
    FUNC1(as, FUNC2(ir->t) ? XO_MOVSD : XO_MOVSS, r, base, ofs);
}