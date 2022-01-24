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
struct TYPE_6__ {int state; int /*<<< orphan*/  db_scheduler_handle; } ;
typedef  TYPE_1__ DbHashEntry ;

/* Variables and functions */
#define  ALLOCATED 131 
 int /*<<< orphan*/  BGWH_STOPPED ; 
#define  DISABLED 130 
#define  ENABLED 129 
#define  STARTED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(DbHashEntry *entry)
{
	switch (entry->state)
	{
		case ENABLED:
			FUNC2(entry);
			if (entry->state == ALLOCATED)
				FUNC1(entry);
			break;
		case ALLOCATED:
			FUNC1(entry);
			break;
		case STARTED:
			if (FUNC0(entry->db_scheduler_handle, NULL) == BGWH_STOPPED)
				FUNC3(entry);
			break;
		case DISABLED:
			break;
	}
}