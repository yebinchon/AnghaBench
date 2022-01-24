#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tuple; } ;
typedef  TYPE_3__ TupleInfo ;
struct TYPE_11__ {int /*<<< orphan*/  schema_name; } ;
struct TYPE_17__ {TYPE_1__ fd; } ;
struct TYPE_16__ {int /*<<< orphan*/  schema; int /*<<< orphan*/  index_name; } ;
struct TYPE_15__ {int /*<<< orphan*/  hypertable_id; int /*<<< orphan*/  hypertable_index_name; int /*<<< orphan*/  chunk_id; int /*<<< orphan*/  index_name; } ;
struct TYPE_12__ {int /*<<< orphan*/  schema_name; } ;
struct TYPE_14__ {TYPE_2__ fd; } ;
typedef  int /*<<< orphan*/  ScanFilterResult ;
typedef  TYPE_4__ Hypertable ;
typedef  TYPE_5__ FormData_chunk_index ;
typedef  TYPE_6__ ChunkIndexDeleteData ;
typedef  TYPE_7__ Chunk ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_EXCLUDE ; 
 int /*<<< orphan*/  SCAN_INCLUDE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanFilterResult
FUNC4(TupleInfo *ti, void *data)
{
	FormData_chunk_index *chunk_index = (FormData_chunk_index *) FUNC0(ti->tuple);
	ChunkIndexDeleteData *cid = data;

	if (FUNC1(&chunk_index->index_name, cid->index_name) == 0)
	{
		Chunk *chunk = FUNC2(chunk_index->chunk_id, 0, false);

		if (NULL != chunk && FUNC1(&chunk->fd.schema_name, cid->schema) == 0)
			return SCAN_INCLUDE;
	}

	if (FUNC1(&chunk_index->hypertable_index_name, cid->index_name) == 0)
	{
		Hypertable *ht;

		ht = FUNC3(chunk_index->hypertable_id);

		if (NULL != ht && FUNC1(&ht->fd.schema_name, cid->schema) == 0)
			return SCAN_INCLUDE;
	}

	return SCAN_EXCLUDE;
}