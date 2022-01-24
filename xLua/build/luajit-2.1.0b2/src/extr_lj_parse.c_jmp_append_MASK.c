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
typedef  scalar_t__ BCPos ;

/* Variables and functions */
 scalar_t__ NO_JMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(FuncState *fs, BCPos *l1, BCPos l2)
{
  if (l2 == NO_JMP) {
    return;
  } else if (*l1 == NO_JMP) {
    *l1 = l2;
  } else {
    BCPos list = *l1;
    BCPos next;
    while ((next = FUNC0(fs, list)) != NO_JMP)  /* Find last element. */
      list = next;
    FUNC1(fs, list, l2);
  }
}