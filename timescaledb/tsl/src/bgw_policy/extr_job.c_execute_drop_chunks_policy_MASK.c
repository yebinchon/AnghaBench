#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  cascade_to_materializations; int /*<<< orphan*/  cascade; int /*<<< orphan*/  older_than; int /*<<< orphan*/  hypertable_id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {int /*<<< orphan*/  space; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Hypertable ;
typedef  int /*<<< orphan*/  Dimension ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Cache ;
typedef  TYPE_3__ BgwPolicyDropChunks ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERRCODE_TS_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool
FUNC20(int32 job_id)
{
	bool started = false;
	BgwPolicyDropChunks *args;
	Oid table_relid;
	Hypertable *hypertable;
	Cache *hcache;
	Dimension *open_dim;

	if (!FUNC2())
	{
		started = true;
		FUNC5();
		FUNC4(FUNC1());
	}

	/* Get the arguments from the drop_chunks_policy table */
	args = FUNC12(job_id);

	if (args == NULL)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_TS_INTERNAL_ERROR),
				 FUNC9("could not run drop_chunks policy #%d because no args in policy table",
						job_id)));

	table_relid = FUNC18(args->fd.hypertable_id);
	hcache = FUNC17();
	hypertable = FUNC16(hcache, table_relid);
	/* First verify that the hypertable corresponds to a valid table */
	if (hypertable == NULL)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC9("could not run drop_chunks policy #%d because \"%s\" is not a hypertable",
						job_id,
						FUNC10(table_relid))));

	open_dim = FUNC11(hypertable->space, 0);
	FUNC14(table_relid,
							FUNC19(&args->fd.older_than, open_dim),
							(Datum) 0,
							FUNC15(open_dim),
							InvalidOid,
							args->fd.cascade,
							args->fd.cascade_to_materializations,
							LOG);

	FUNC13(hcache);
	FUNC6(LOG, "completed dropping chunks");

	if (started)
	{
		FUNC3();
		FUNC0();
	}
	return true;
}