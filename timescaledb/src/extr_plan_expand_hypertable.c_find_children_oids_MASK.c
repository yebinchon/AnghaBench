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
struct TYPE_4__ {int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HypertableRestrictInfo ;
typedef  TYPE_1__ Hypertable ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC3(HypertableRestrictInfo *hri, Hypertable *ht, LOCKMODE lockmode)
{
	/*
	 * Using the HRI only makes sense if we are not using all the chunks,
	 * otherwise using the cached inheritance hierarchy is faster.
	 */
	if (!FUNC2(hri))
		return FUNC0(ht->main_table_relid, lockmode);

	/*
	 * Unlike find_all_inheritors we do not include parent because if there
	 * are restrictions the parent table cannot fulfill them and since we do
	 * have a trigger blocking inserts on the parent table it cannot contain
	 * any rows.
	 */
	return FUNC1(hri, ht, lockmode);
}