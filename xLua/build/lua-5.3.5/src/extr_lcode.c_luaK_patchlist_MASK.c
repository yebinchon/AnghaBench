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
struct TYPE_5__ {int pc; } ;
typedef  TYPE_1__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  NO_REG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int) ; 

void FUNC3 (FuncState *fs, int list, int target) {
  if (target == fs->pc)  /* 'target' is current position? */
    FUNC0(fs, list);  /* add list to pending jumps */
  else {
    FUNC1(target < fs->pc);
    FUNC2(fs, list, target, NO_REG, target);
  }
}