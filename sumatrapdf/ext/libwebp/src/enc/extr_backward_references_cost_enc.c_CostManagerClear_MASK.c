#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * recycled_intervals_; int /*<<< orphan*/ * head_; int /*<<< orphan*/  cache_intervals_; int /*<<< orphan*/  costs_; } ;
typedef  TYPE_1__ CostManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(CostManager* const manager) {
  if (manager == NULL) return;

  FUNC2(manager->costs_);
  FUNC2(manager->cache_intervals_);

  // Clear the interval lists.
  FUNC1(manager, manager->head_);
  manager->head_ = NULL;
  FUNC1(manager, manager->recycled_intervals_);
  manager->recycled_intervals_ = NULL;

  // Reset pointers, count_ and cache_intervals_size_.
  FUNC3(manager, 0, sizeof(*manager));
  FUNC0(manager);
}