#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_14__ {TYPE_1__ fd; } ;
struct TYPE_13__ {scalar_t__ parsetree; } ;
struct TYPE_12__ {int kind; int /*<<< orphan*/ * relation; } ;
typedef  TYPE_2__ ReindexStmt ;
typedef  TYPE_3__ ProcessUtilityArgs ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ Hypertable ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  REINDEX_OBJECT_INDEX 129 
#define  REINDEX_OBJECT_TABLE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  reindex_chunk ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC14(ProcessUtilityArgs *args)
{
	ReindexStmt *stmt = (ReindexStmt *) args->parsetree;
	Oid relid;
	Cache *hcache;
	Hypertable *ht;
	bool ret = false;

	if (NULL == stmt->relation)
		/* Not a case we are interested in */
		return false;

	relid = FUNC3(stmt->relation, NoLock, true);

	if (!FUNC1(relid))
		return false;

	hcache = FUNC12();

	switch (stmt->kind)
	{
		case REINDEX_OBJECT_TABLE:
			ht = FUNC11(hcache, relid);

			if (NULL != ht)
			{
				FUNC2("REINDEX");
				FUNC13(ht->fd.id);

				if (FUNC8(ht, reindex_chunk, stmt) >= 0)
					ret = true;

				FUNC9(args, ht);
			}
			break;
		case REINDEX_OBJECT_INDEX:
			ht = FUNC11(hcache, FUNC0(relid, true));

			if (NULL != ht)
			{
				FUNC9(args, ht);
				FUNC13(ht->fd.id);

				/*
				 * Recursing to chunks is currently not supported. Need to
				 * look up all chunk indexes that corresponds to the
				 * hypertable's index.
				 */
				FUNC4(ERROR,
						(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC7("reindexing of a specific index on a hypertable is unsupported"),
						 FUNC6(
							 "As a workaround, it is possible to run REINDEX TABLE to reindex all "
							 "indexes on a hypertable, including all indexes on chunks.")));
			}
			break;
		default:
			break;
	}

	FUNC10(hcache);

	return ret;
}