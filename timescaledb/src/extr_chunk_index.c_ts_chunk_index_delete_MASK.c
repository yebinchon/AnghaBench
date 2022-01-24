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
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {int drop_index; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ChunkIndexDeleteData ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_chunk_index_chunk_id_index_name_idx_chunk_id ; 
 int /*<<< orphan*/  Anum_chunk_index_chunk_id_index_name_idx_index_name ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  chunk_index_tuple_delete ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namein ; 

int
FUNC6(Chunk *chunk, Oid chunk_indexrelid, bool drop_index)
{
	ScanKeyData scankey[2];
	const char *indexname = FUNC5(chunk_indexrelid);
	ChunkIndexDeleteData data = {
		.drop_index = drop_index,
	};

	FUNC3(&scankey[0],
				Anum_chunk_index_chunk_id_index_name_idx_chunk_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC2(chunk->fd.id));
	FUNC3(&scankey[1],
				Anum_chunk_index_chunk_id_index_name_idx_index_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC1(namein, FUNC0(indexname)));

	return FUNC4(CHUNK_INDEX_CHUNK_ID_INDEX_NAME_IDX,
								   scankey,
								   2,
								   chunk_index_tuple_delete,
								   NULL,
								   &data);
}