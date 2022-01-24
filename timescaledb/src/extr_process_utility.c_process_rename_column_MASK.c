#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int /*<<< orphan*/  space; TYPE_1__ fd; } ;
struct TYPE_8__ {int /*<<< orphan*/  newname; int /*<<< orphan*/  subname; } ;
typedef  TYPE_2__ RenameStmt ;
typedef  int /*<<< orphan*/  ProcessUtilityArgs ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ Hypertable ;
typedef  int /*<<< orphan*/  Dimension ;
typedef  int /*<<< orphan*/  Chunk ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  DIMENSION_TYPE_ANY ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int HypertableIsMaterialization ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(ProcessUtilityArgs *args, Cache *hcache, Oid relid, RenameStmt *stmt)
{
	Hypertable *ht = FUNC10(hcache, relid);
	Dimension *dim;

	if (NULL == ht)
	{
		Chunk *chunk = FUNC6(relid, 0, false);

		if (NULL != chunk)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC3("cannot rename column \"%s\" of hypertable chunk \"%s\"",
							stmt->subname,
							FUNC4(relid)),
					 FUNC2("Rename the hypertable column instead.")));
		return;
	}

	/* block renaming columns on the materialization table of a continuous agg*/
	if ((FUNC7(ht->fd.id) & HypertableIsMaterialization) != 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("cannot rename column \"%s\" of materialization table \"%s\"",
						stmt->subname,
						FUNC4(relid))));

	FUNC5(args, ht);

	dim = FUNC9(ht->space, DIMENSION_TYPE_ANY, stmt->subname);

	if (NULL == dim)
		return;

	FUNC8(dim, stmt->newname);
}