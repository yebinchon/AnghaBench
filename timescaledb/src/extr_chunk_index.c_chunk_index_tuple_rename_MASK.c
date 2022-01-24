#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  scanrel; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_2__ TupleInfo ;
struct TYPE_8__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_12__ {TYPE_1__ fd; } ;
struct TYPE_11__ {char const* newname; scalar_t__ isparent; } ;
struct TYPE_10__ {int /*<<< orphan*/  index_name; int /*<<< orphan*/  hypertable_index_name; int /*<<< orphan*/  chunk_id; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ FormData_chunk_index ;
typedef  TYPE_4__ ChunkIndexRenameInfo ;
typedef  TYPE_5__ Chunk ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ScanTupleResult
FUNC11(TupleInfo *ti, void *data)
{
	ChunkIndexRenameInfo *info = data;
	HeapTuple tuple = FUNC6(ti->tuple);
	FormData_chunk_index *chunk_index = (FormData_chunk_index *) FUNC0(tuple);

	if (info->isparent)
	{
		/*
		 * If the renaming is for a hypertable index, we also rename all
		 * corresponding chunk indexes
		 */
		Chunk *chunk = FUNC10(chunk_index->chunk_id, 0, true);
		Oid chunk_schemaoid = FUNC4(FUNC1(chunk->fd.schema_name), false);
		const char *chunk_index_name =
			FUNC3(FUNC1(chunk->fd.table_name), info->newname, chunk_schemaoid);
		Oid chunk_indexrelid = FUNC5(FUNC1(chunk_index->index_name), chunk_schemaoid);

		/* Update the metadata */
		FUNC8(&chunk_index->index_name, chunk_index_name);
		FUNC8(&chunk_index->hypertable_index_name, info->newname);

		/* Rename the chunk index */
		FUNC2(chunk_indexrelid, chunk_index_name, false);
	}
	else
		FUNC8(&chunk_index->index_name, info->newname);

	FUNC9(ti->scanrel, tuple);
	FUNC7(tuple);

	if (info->isparent)
		return SCAN_CONTINUE;

	return SCAN_DONE;
}