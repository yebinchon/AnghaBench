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
struct TYPE_4__ {int /*<<< orphan*/  ddt_lock; int /*<<< orphan*/  ddt_repair_tree; int /*<<< orphan*/  ddt_tree; } ;
typedef  TYPE_1__ ddt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ddt_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(ddt_t *ddt)
{
	FUNC0(FUNC2(&ddt->ddt_tree) == 0);
	FUNC0(FUNC2(&ddt->ddt_repair_tree) == 0);
	FUNC1(&ddt->ddt_tree);
	FUNC1(&ddt->ddt_repair_tree);
	FUNC4(&ddt->ddt_lock);
	FUNC3(ddt_cache, ddt);
}