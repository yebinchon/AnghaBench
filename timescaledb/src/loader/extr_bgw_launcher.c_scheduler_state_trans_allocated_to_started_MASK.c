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
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  vxid; int /*<<< orphan*/ * db_scheduler_handle; int /*<<< orphan*/  db_oid; } ;
typedef  TYPE_1__ DbHashEntry ;

/* Variables and functions */
 scalar_t__ ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  STARTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(DbHashEntry *entry)
{
	pid_t worker_pid;
	bool worker_registered;

	FUNC0(entry->state == ALLOCATED);
	FUNC0(entry->db_scheduler_handle == NULL);

	worker_registered =
		FUNC2(entry->db_oid, entry->vxid, &entry->db_scheduler_handle);

	if (!worker_registered)
	{
		FUNC3(entry);
		return;
	}
	FUNC5(entry->db_scheduler_handle, &worker_pid);
	FUNC1(entry->vxid);
	FUNC4(entry, STARTED);
}