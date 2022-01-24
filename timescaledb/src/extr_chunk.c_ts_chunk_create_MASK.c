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
struct TYPE_4__ {int /*<<< orphan*/  space; int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ Hypertable ;
typedef  int /*<<< orphan*/  Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

Chunk *
FUNC4(Hypertable *ht, Point *p, const char *schema, const char *prefix)
{
	Chunk *chunk;

	/*
	 * Serialize chunk creation around a lock on the "main table" to avoid
	 * multiple processes trying to create the same chunk. We use a
	 * ShareUpdateExclusiveLock, which is the weakest lock possible that
	 * conflicts with itself. The lock needs to be held until transaction end.
	 */
	FUNC1(ht->main_table_relid, ShareUpdateExclusiveLock);

	/* Recheck if someone else created the chunk before we got the table lock */
	chunk = FUNC3(ht->space, p);

	if (NULL == chunk)
		chunk = FUNC2(ht, p, schema, prefix);

	FUNC0(chunk != NULL);

	return chunk;
}