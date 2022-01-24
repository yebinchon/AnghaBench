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
struct TYPE_4__ {int /*<<< orphan*/  relation; } ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  ProcessUtilityArgs ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  Chunk ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rename_hypertable_constraint ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(ProcessUtilityArgs *args, Cache *hcache, Oid relid, RenameStmt *stmt)
{
	Hypertable *ht;

	ht = FUNC7(hcache, relid);

	if (NULL != ht)
	{
		FUNC5(stmt->relation);
		FUNC4(args, ht);
		FUNC3(ht, rename_hypertable_constraint, stmt);
	}
	else
	{
		Chunk *chunk = FUNC6(relid, 0, false);

		if (NULL != chunk)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC2("renaming constraints on chunks is not supported")));
	}
}