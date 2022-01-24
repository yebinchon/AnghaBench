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
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  BCReg ;
typedef  scalar_t__ BCPos ;

/* Variables and functions */
 scalar_t__ NO_JMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FuncState *fs, BCPos list, BCPos vtarget,
			 BCReg reg, BCPos dtarget)
{
  while (list != NO_JMP) {
    BCPos next = FUNC0(fs, list);
    if (FUNC2(fs, list, reg))
      FUNC1(fs, list, vtarget);  /* Jump to target with value. */
    else
      FUNC1(fs, list, dtarget);  /* Jump to default target. */
    list = next;
  }
}