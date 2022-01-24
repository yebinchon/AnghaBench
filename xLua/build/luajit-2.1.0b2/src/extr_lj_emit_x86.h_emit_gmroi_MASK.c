#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
typedef  int x86Group ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(ASMState *as, x86Group xg, Reg rb, int32_t ofs,
		       int32_t i)
{
  x86Op xo;
  if (FUNC2(i)) {
    FUNC4(as, i);
    xo = FUNC1(xg);
  } else {
    FUNC3(as, i);
    xo = FUNC0(xg);
  }
  FUNC5(as, xo, (Reg)(xg & 7), rb, ofs);
}