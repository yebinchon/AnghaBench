#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  db_oid; } ;
struct TYPE_8__ {int state; int /*<<< orphan*/  db_scheduler_handle; } ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ DbHashEntry ;
typedef  TYPE_2__ BgwMessage ;
typedef  int /*<<< orphan*/  AckResult ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_FAILURE ; 
 int /*<<< orphan*/  ACK_SUCCESS ; 
#define  ALLOCATED 131 
#define  DISABLED 130 
#define  ENABLED 129 
#define  STARTED 128 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static AckResult
FUNC6(HTAB *db_htab, BgwMessage *message)
{
	DbHashEntry *entry;

	/*
	 * If the entry does not exist try to create it so we can put it in the
	 * DISABLED state. Otherwise, it will be created during the next poll and
	 * then will end up in the ENABLED state and proceed to being STARTED. But
	 * this is not the behavior we want.
	 */
	entry = FUNC0(db_htab, message->db_oid);

	switch (entry->state)
	{
		case ENABLED:
			FUNC2(entry);
			break;
		case ALLOCATED:
			FUNC1(entry);
			break;
		case STARTED:
			FUNC4(entry->db_scheduler_handle);
			FUNC5(entry->db_scheduler_handle);
			FUNC3(entry);
			break;
		case DISABLED:
			break;
	}
	return entry->state == DISABLED ? ACK_SUCCESS : ACK_FAILURE;
}