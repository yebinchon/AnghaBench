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
struct TYPE_5__ {scalar_t__ pc; } ;
typedef  TYPE_1__ FuncState ;
typedef  scalar_t__ BCPos ;

/* Variables and functions */
 int /*<<< orphan*/  NO_REG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(FuncState *fs, BCPos list, BCPos target)
{
  if (target == fs->pc) {
    FUNC1(fs, list);
  } else {
    FUNC2(target < fs->pc);
    FUNC0(fs, list, target, NO_REG, target);
  }
}