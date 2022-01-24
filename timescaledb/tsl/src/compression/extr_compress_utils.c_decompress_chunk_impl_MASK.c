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
struct TYPE_12__ {scalar_t__ hypertable_id; scalar_t__ compressed_chunk_id; int /*<<< orphan*/  id; } ;
struct TYPE_14__ {TYPE_2__ fd; int /*<<< orphan*/  table_id; } ;
struct TYPE_11__ {scalar_t__ id; int /*<<< orphan*/  compressed_hypertable_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  main_table_relid; TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ Hypertable ;
typedef  TYPE_4__ Chunk ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  CHUNK ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HYPERTABLE_COMPRESSION ; 
 scalar_t__ INVALID_CHUNK_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC13 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC21(Oid uncompressed_hypertable_relid, Oid uncompressed_chunk_relid,
					  bool if_compressed)
{
	Cache *hcache = FUNC18();
	Hypertable *uncompressed_hypertable =
		FUNC17(hcache, uncompressed_hypertable_relid);
	Hypertable *compressed_hypertable;
	Chunk *uncompressed_chunk;
	Chunk *compressed_chunk;

	if (uncompressed_hypertable == NULL)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC8("table \"%s\" is not a hypertable",
						FUNC9(uncompressed_hypertable_relid))));

	FUNC20(uncompressed_hypertable->main_table_relid, FUNC0());

	compressed_hypertable =
		FUNC19(uncompressed_hypertable->fd.compressed_hypertable_id);
	if (compressed_hypertable == NULL)
		FUNC6(ERROR, (FUNC7(ERRCODE_INTERNAL_ERROR), FUNC8("missing compressed hypertable")));

	uncompressed_chunk = FUNC14(uncompressed_chunk_relid, 0, true);
	if (uncompressed_chunk == NULL)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC8("table \"%s\" is not a chunk", FUNC9(uncompressed_chunk_relid))));

	if (uncompressed_chunk->fd.hypertable_id != uncompressed_hypertable->fd.id)
		FUNC5(ERROR, "hypertable and chunk do not match");

	if (uncompressed_chunk->fd.compressed_chunk_id == INVALID_CHUNK_ID)
	{
		FUNC10(hcache);
		FUNC6((if_compressed ? NOTICE : ERROR),
				(FUNC7(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC8("chunk \"%s\" is not compressed", FUNC9(uncompressed_chunk_relid))));
		return false;
	}

	compressed_chunk = FUNC13(uncompressed_chunk->fd.compressed_chunk_id, 0, true);

	/* acquire locks on src and compress hypertable and src chunk */
	FUNC1(uncompressed_hypertable->main_table_relid, AccessShareLock);
	FUNC1(compressed_hypertable->main_table_relid, AccessShareLock);
	FUNC1(uncompressed_chunk->table_id, AccessShareLock); /*upgrade when needed */

	/* aquire locks on catalog tables to keep till end of txn */
	FUNC1(FUNC2(FUNC11(), HYPERTABLE_COMPRESSION),
					AccessShareLock);
	FUNC1(FUNC2(FUNC11(), CHUNK), RowExclusiveLock);

	FUNC3(uncompressed_chunk->table_id);
	FUNC4(compressed_chunk->table_id, uncompressed_chunk->table_id);
	FUNC16(uncompressed_chunk->fd.id);
	FUNC15(uncompressed_chunk, INVALID_CHUNK_ID, true);
	FUNC12(compressed_chunk, DROP_RESTRICT, -1);

	FUNC10(hcache);
	return true;
}