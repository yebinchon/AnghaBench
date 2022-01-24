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
struct TYPE_4__ {struct TYPE_4__* next_; } ;
typedef  int /*<<< orphan*/  CostManager ;
typedef  TYPE_1__ CostInterval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(CostManager* const manager,
                               const CostInterval* interval) {
  while (interval != NULL) {
    const CostInterval* const next = interval->next_;
    if (!FUNC0(manager, interval)) {
      FUNC1((void*)interval);
    }  // else: do nothing
    interval = next;
  }
}