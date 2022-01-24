#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_18__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* reorder_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_26__ {int /*<<< orphan*/  data; } ;
struct TYPE_25__ {int /*<<< orphan*/  data; } ;
struct TYPE_27__ {TYPE_5__ table_name; TYPE_4__ schema_name; } ;
struct TYPE_30__ {TYPE_6__ fd; int /*<<< orphan*/  table_id; } ;
struct TYPE_21__ {int /*<<< orphan*/  data; } ;
struct TYPE_23__ {int /*<<< orphan*/  data; } ;
struct TYPE_24__ {TYPE_18__ schema_name; TYPE_2__ table_name; } ;
struct TYPE_29__ {TYPE_3__ fd; } ;
struct TYPE_28__ {int /*<<< orphan*/  job_id; TYPE_18__ hypertable_index_name; int /*<<< orphan*/  hypertable_id; } ;
struct TYPE_22__ {int /*<<< orphan*/  id; } ;
struct TYPE_20__ {TYPE_1__ fd; } ;
struct TYPE_19__ {TYPE_7__ fd; } ;
typedef  TYPE_8__ Hypertable ;
typedef  TYPE_9__ Chunk ;
typedef  TYPE_10__ BgwPolicyReorder ;
typedef  TYPE_11__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_TS_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_18__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

bool
FUNC17(BgwJob *job, reorder_func reorder, bool fast_continue)
{
	int chunk_id;
	bool started = false;
	BgwPolicyReorder *args;
	Hypertable *ht;
	Chunk *chunk;
	int32 job_id = job->fd.id;

	if (!FUNC1())
	{
		started = true;
		FUNC3();
	}

	/* Get the arguments from the reorder_policy table */
	args = FUNC13(job_id);

	if (args == NULL)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_TS_INTERNAL_ERROR),
				 FUNC8("could not run reorder policy #%d because no args in policy table",
						job_id)));

	ht = FUNC15(args->fd.hypertable_id);

	/* Find a chunk to reorder in the selected hypertable */
	chunk_id = FUNC9(args->fd.job_id, ht);

	if (chunk_id == -1)
	{
		FUNC4(NOTICE,
			 "no chunks need reordering for hypertable %s.%s",
			 ht->fd.schema_name.data,
			 ht->fd.table_name.data);
		goto commit;
	}

	/*
	 * NOTE: We pass the Oid of the hypertable's index, and the true reorder
	 * function should translate this to the Oid of the index on the specific
	 * chunk.
	 */
	chunk = FUNC14(chunk_id, 0, false);
	FUNC4(LOG, "reordering chunk %s.%s", chunk->fd.schema_name.data, chunk->fd.table_name.data);
	reorder(chunk->table_id,
			FUNC11(FUNC2(args->fd.hypertable_index_name),
							  FUNC10(FUNC2(ht->fd.schema_name), false)),
			false,
			InvalidOid,
			InvalidOid,
			InvalidOid);
	FUNC4(LOG,
		 "completed reordering chunk %s.%s",
		 chunk->fd.schema_name.data,
		 chunk->fd.table_name.data);

	/* Now update chunk_stats table */
	FUNC12(args->fd.job_id,
											 chunk_id,
											 FUNC16());

	if (fast_continue && FUNC9(args->fd.job_id, ht) != -1)
		FUNC5(job, "reorder");

commit:
	if (started)
		FUNC0();

	return true;
}