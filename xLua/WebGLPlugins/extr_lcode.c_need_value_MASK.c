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
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NO_JUMP ; 
 scalar_t__ OP_TESTSET ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3 (FuncState *fs, int list) {
  for (; list != NO_JUMP; list = FUNC1(fs, list)) {
    Instruction i = *FUNC2(fs, list);
    if (FUNC0(i) != OP_TESTSET) return 1;
  }
  return 0;  /* not found */
}