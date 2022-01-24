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

/* Variables and functions */
 int NO_JUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3 (FuncState *fs, int list, int vtarget, int reg,
                          int dtarget) {
  while (list != NO_JUMP) {
    int next = FUNC1(fs, list);
    if (FUNC2(fs, list, reg))
      FUNC0(fs, list, vtarget);
    else
      FUNC0(fs, list, dtarget);  /* jump to default target */
    list = next;
  }
}