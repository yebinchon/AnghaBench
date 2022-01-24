#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * srcht_chunk; TYPE_3__* compress_ht; TYPE_3__* srcht; } ;
struct TYPE_9__ {int /*<<< orphan*/  compressed_hypertable_id; } ;
struct TYPE_11__ {TYPE_2__* space; int /*<<< orphan*/  main_table_relid; TYPE_1__ fd; } ;
struct TYPE_10__ {int /*<<< orphan*/  num_dimensions; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ Hypertable ;
typedef  TYPE_4__ CompressChunkCxt ;
typedef  int /*<<< orphan*/  Chunk ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(CompressChunkCxt *cxt, Cache *hcache, Oid hypertable_relid, Oid chunk_relid)
{
	Hypertable *srcht = FUNC8(hcache, hypertable_relid);
	Hypertable *compress_ht;
	Chunk *srcchunk;
	if (srcht == NULL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC5("table \"%s\" is not a hypertable", FUNC6(hypertable_relid))));
	FUNC10(srcht->main_table_relid, FUNC0());
	if (!FUNC1(srcht))
	{
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC5("chunks can be compressed only if compression property is set on the "
						"hypertable"),
				 FUNC4("Use ALTER TABLE with timescaledb.compress option.")));
	}
	compress_ht = FUNC9(srcht->fd.compressed_hypertable_id);
	if (compress_ht == NULL)
		FUNC2(ERROR, (FUNC3(ERRCODE_INTERNAL_ERROR), FUNC5("missing compress hypertable")));
	/* user has to be the owner of the compression table too */
	FUNC10(compress_ht->main_table_relid, FUNC0());

	if (!srcht->space) // something is wrong
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INTERNAL_ERROR), FUNC5("missing hyperspace for hypertable")));
	/* refetch the srcchunk with all attributes filled in */
	srcchunk = FUNC7(chunk_relid, srcht->space->num_dimensions, true);
	cxt->srcht = srcht;
	cxt->compress_ht = compress_ht;
	cxt->srcht_chunk = srcchunk;
	return;
}