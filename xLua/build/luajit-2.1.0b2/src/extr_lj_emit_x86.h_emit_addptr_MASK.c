#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {int flags; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int JIT_F_LEA_AGU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  XOg_ADD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(ASMState *as, Reg r, int32_t ofs)
{
  if (ofs) {
    if ((as->flags & JIT_F_LEA_AGU))
      FUNC2(as, XO_LEA, r, r, ofs);
    else
      FUNC1(as, FUNC0(XOg_ADD), r, ofs);
  }
}