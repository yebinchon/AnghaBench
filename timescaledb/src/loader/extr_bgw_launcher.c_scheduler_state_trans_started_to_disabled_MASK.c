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
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/ * db_scheduler_handle; } ;
typedef  TYPE_1__ DbHashEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BGWH_STOPPED ; 
 int /*<<< orphan*/  DISABLED ; 
 scalar_t__ STARTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(DbHashEntry *entry)
{
	FUNC0(entry->state == STARTED);
	FUNC0(FUNC1(entry->db_scheduler_handle, NULL) == BGWH_STOPPED);

	FUNC4();
	if (entry->db_scheduler_handle != NULL)
	{
		FUNC2(entry->db_scheduler_handle);
		entry->db_scheduler_handle = NULL;
	}
	FUNC3(entry, DISABLED);
}