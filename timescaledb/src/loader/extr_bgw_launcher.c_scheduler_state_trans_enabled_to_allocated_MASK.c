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
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/ * db_scheduler_handle; } ;
typedef  TYPE_1__ DbHashEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENABLED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(DbHashEntry *entry)
{
	FUNC0(entry->state == ENABLED);
	FUNC0(entry->db_scheduler_handle == NULL);
	/* Reserve a spot for this scheduler with BGW counter */
	if (!FUNC3())
	{
		FUNC1(entry);
		return;
	}
	FUNC2(entry, ALLOCATED);
}