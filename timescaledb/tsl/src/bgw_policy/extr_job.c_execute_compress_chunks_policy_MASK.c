#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_23__ {int /*<<< orphan*/  older_than; int /*<<< orphan*/  hypertable_id; } ;
struct TYPE_26__ {TYPE_6__ fd; } ;
struct TYPE_22__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_25__ {TYPE_5__ fd; int /*<<< orphan*/  table_id; } ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;
struct TYPE_19__ {int /*<<< orphan*/  data; } ;
struct TYPE_21__ {TYPE_3__ table_name; TYPE_2__ schema_name; } ;
struct TYPE_24__ {TYPE_4__ fd; } ;
struct TYPE_18__ {int id; } ;
struct TYPE_17__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_7__ Hypertable ;
typedef  TYPE_8__ Chunk ;
typedef  int /*<<< orphan*/  Cache ;
typedef  TYPE_9__ BgwPolicyCompressChunks ;
typedef  TYPE_10__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERRCODE_TS_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_CHUNK_ID ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 scalar_t__ FUNC12 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC16 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

bool
FUNC21(BgwJob *job)
{
	bool started = false;
	BgwPolicyCompressChunks *args;
	Oid table_relid;
	Hypertable *ht;
	Cache *hcache;
	int32 chunkid;
	Chunk *chunk = NULL;
	int job_id = job->fd.id;

	if (!FUNC2())
	{
		started = true;
		FUNC6();
		FUNC5(FUNC1());
	}

	/* Get the arguments from the compress_chunks_policy table */
	args = FUNC14(job_id);

	if (args == NULL)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_TS_INTERNAL_ERROR),
				 FUNC11("could not run compress_chunks policy #%d because no args in policy table",
						job_id)));

	table_relid = FUNC19(args->fd.hypertable_id);
	hcache = FUNC18();
	ht = FUNC17(hcache, table_relid);
	/* First verify that the hypertable corresponds to a valid table */
	if (ht == NULL)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC11("could not run compress_chunks policy #%d because \"%s\" is not a "
						"hypertable",
						job_id,
						FUNC13(table_relid))));

	chunkid = FUNC12(ht, &args->fd.older_than);
	if (chunkid == INVALID_CHUNK_ID)
	{
		FUNC7(NOTICE,
			 "no chunks for hypertable %s.%s that satisfy compress chunk policy",
			 ht->fd.schema_name.data,
			 ht->fd.table_name.data);
	}
	else
	{
		chunk = FUNC16(chunkid, 0, true);
		FUNC20(chunk->table_id, false);
		FUNC7(LOG,
			 "completed compressing chunk %s.%s",
			 FUNC3(chunk->fd.schema_name),
			 FUNC3(chunk->fd.table_name));
	}

	chunkid = FUNC12(ht, &args->fd.older_than);
	if (chunkid != INVALID_CHUNK_ID)
		FUNC8(job, "compress_chunks");

	FUNC15(hcache);
	if (started)
	{
		FUNC4();
		FUNC0();
	}
	return true;
}