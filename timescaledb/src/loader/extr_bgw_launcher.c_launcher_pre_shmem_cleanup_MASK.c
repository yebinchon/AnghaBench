#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * db_scheduler_handle; } ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  TYPE_1__ DbHashEntry ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(int code, Datum arg)
{
	HTAB *db_htab = *(HTAB **) FUNC0(arg);
	HASH_SEQ_STATUS hash_seq;
	DbHashEntry *current_entry;

	/* db_htab will be NULL if we fail during init_database_htab */
	if (db_htab != NULL)
	{
		FUNC2(&hash_seq, db_htab);

		/*
		 * Stop everyone (or at least tell the Postmaster we don't care about
		 * them anymore)
		 */
		while ((current_entry = FUNC3(&hash_seq)) != NULL)
		{
			if (current_entry->db_scheduler_handle != NULL)
			{
				FUNC5(current_entry->db_scheduler_handle);
				FUNC4(current_entry->db_scheduler_handle);
			}
		}

		FUNC1(db_htab);
	}

	/*
	 * Reset our pid in the queue so that others know we've died and don't
	 * wait forever
	 */
	FUNC6();
}